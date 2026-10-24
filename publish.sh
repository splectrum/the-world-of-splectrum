#!/usr/bin/env bash
# Publishing-day routine for splectrum.world (Cloudflare Pages, Direct Upload).
#
#   ./publish.sh check     build into publish/ and run the checks (nothing is uploaded)
#   ./publish.sh preview   build, check, then serve publish/ on http://localhost:5000
#                          with Cloudflare's local emulation (Ctrl-C to stop)
#   ./publish.sh deploy    build, check, ask for confirmation, deploy, then smoke-test
#                          the live site
#
# Options (after the command):
#   --yes          deploy without the confirmation question
#   --allow-dirty  build even with uncommitted changes (they would be published)
#
# The build mirrors GitHub Pages: Docker image jekyll/jekyll:pages, JEKYLL_ENV=production,
# no --future, so posts dated after today stay unpublished. Wrangler is loaded from nvm and
# authenticates with the API token in ~/.cloudflare-env.

set -euo pipefail

PROJECT="splectrum"
SITE="https://splectrum.world"
PREVIEW_PORT=5000
IMAGE="jekyll/jekyll:pages"

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT"

cmd="${1:-}"
shift || true
assume_yes=false
allow_dirty=false
for arg in "$@"; do
  case "$arg" in
    --yes) assume_yes=true ;;
    --allow-dirty) allow_dirty=true ;;
    *) echo "Unknown option: $arg" >&2; exit 2 ;;
  esac
done
case "$cmd" in
  check|preview|deploy) ;;
  *) sed -n '2,15p' "$0" | sed 's/^# \{0,1\}//'; exit 2 ;;
esac

step() { printf '\n== %s\n' "$*"; }
fail() { printf '\n✘ %s\n' "$*" >&2; exit 1; }

# --- Preconditions -----------------------------------------------------------------------
step "Preconditions"
command -v docker >/dev/null || fail "docker not found"
if [[ -n "$(git status --porcelain)" ]]; then
  if $allow_dirty; then
    echo "! Uncommitted changes will be included in the build (--allow-dirty)."
  else
    git status --short
    fail "Uncommitted changes. Commit first, or pass --allow-dirty."
  fi
fi
echo "Commit: $(git log -1 --format='%h %s')"

if [[ "$cmd" != "check" ]]; then
  if ! command -v wrangler >/dev/null; then
    export NVM_DIR="${NVM_DIR:-$HOME/.nvm}"
    # shellcheck disable=SC1091
    [[ -s "$NVM_DIR/nvm.sh" ]] && . "$NVM_DIR/nvm.sh"
  fi
  command -v wrangler >/dev/null || fail "wrangler not found (expected under nvm)"
fi
if [[ "$cmd" == "deploy" && -z "${CLOUDFLARE_API_TOKEN:-}" ]]; then
  # shellcheck disable=SC1090
  [[ -f "$HOME/.cloudflare-env" ]] && . "$HOME/.cloudflare-env"
  [[ -n "${CLOUDFLARE_API_TOKEN:-}" ]] || fail "CLOUDFLARE_API_TOKEN not set (expected in ~/.cloudflare-env)"
fi

# --- Build -------------------------------------------------------------------------------
step "Production build into publish/"
rm -rf publish
log="$(mktemp)"
start=$(date +%s)
if ! docker run --rm -e JEKYLL_ENV=production \
      -v "$ROOT":/srv/jekyll -w /srv/jekyll \
      "$IMAGE" jekyll build --source docs --destination publish >"$log" 2>&1; then
  cat "$log"
  fail "Build failed"
fi
echo "Built in $(( $(date +%s) - start ))s"
if grep -qiE 'warn|error|github metadata' "$log"; then
  echo "! Build messages worth reading:"
  grep -iE 'warn|error|github metadata' "$log" | sed 's/^/    /'
fi
rm -f "$log"

# --- Checks ------------------------------------------------------------------------------
step "Checks"
SITE="$SITE" python3 - <<'PY'
import os, re, sys, glob, datetime

site = os.environ["SITE"]
today = datetime.datetime.now(datetime.timezone.utc).date().isoformat()   # the build runs in UTC
problems, notes = [], []

# Required files
for f in ["404.html", "robots.txt", "sitemap.xml", "sitemap-site.xml", "sitemap-library.xml", "sitemap-blog.xml", "feed.xml"]:
    if not os.path.isfile(os.path.join("publish", f)):
        problems.append(f"missing publish/{f}")

# Posts: published ones present, future ones absent everywhere
everything = []
for root, _, files in os.walk("publish"):
    for f in files:
        if f.endswith((".html", ".xml", ".txt", ".json")):
            everything.append(os.path.join(root, f))
corpus = "".join(open(p, encoding="utf-8", errors="replace").read() for p in everything)

live_today, future = [], 0
for path in sorted(glob.glob("docs/_posts/*.md")):
    text = open(path, encoding="utf-8").read()
    m = re.search(r"^date:\s*(\d{4})-(\d{2})-(\d{2})", text, re.M)
    if not m:
        problems.append(f"no date in {path}")
        continue
    y, mo, d = m.groups()
    date = f"{y}-{mo}-{d}"
    slug = os.path.basename(path)[11:-3]
    url = f"/blog/{y}/{mo}/{slug}/"
    built = os.path.isfile(f"publish{url}index.html")
    if date <= today:
        if not built:
            problems.append(f"published post not built: {url}")
        if date == today:
            title = re.search(r'^title:\s*"?(.*?)"?\s*$', text, re.M).group(1)
            live_today.append(f"{date}  {title}  {url}")
    else:
        future += 1
        if built or url in corpus:
            problems.append(f"future post leaked ({date}): {url}")

# Hosts in canonical links, og:url and sitemaps
hosts = set()
for p in everything:
    t = open(p, encoding="utf-8", errors="replace").read()
    for u in re.findall(r'rel="canonical" href="([^"]+)"', t) + \
             re.findall(r'property="og:url" content="([^"]+)"', t) + \
             (re.findall(r"<loc>([^<]+)</loc>", t) if p.endswith(".xml") else []):
        hosts.add(re.match(r"(https?://[^/]+)", u).group(1))
    if "localhost" in t:
        problems.append(f"localhost found in {p}")
if hosts - {site}:
    problems.append(f"unexpected hosts in canonicals/sitemaps: {sorted(hosts - {site})}")

# Size limits (Cloudflare Pages: 20,000 files, 25 MiB per file)
files = [os.path.join(r, f) for r, _, fs in os.walk("publish") for f in fs]
big = [p for p in files if os.path.getsize(p) > 25 * 1024 * 1024]
if len(files) > 20000:
    problems.append(f"{len(files)} files (limit 20,000)")
for p in big:
    problems.append(f"file over 25 MiB: {p}")

print(f"Files: {len(files)}   Future posts held back: {future}")
print("Going live today:" if live_today else "No post dated today.")
for line in live_today:
    print("   ", line)
if problems:
    print("\nProblems:")
    for p in problems:
        print("   ✘", p)
    sys.exit(1)
print("All checks passed.")
PY

# --- Preview -----------------------------------------------------------------------------
if [[ "$cmd" == "preview" ]]; then
  step "Preview on http://localhost:$PREVIEW_PORT (Ctrl-C to stop)"
  exec wrangler pages dev publish --port "$PREVIEW_PORT"
fi
[[ "$cmd" == "check" ]] && { echo; echo "Check complete. Nothing uploaded."; exit 0; }

# --- Deploy ------------------------------------------------------------------------------
step "Deploy to Cloudflare Pages ($PROJECT → $SITE)"
if ! $assume_yes; then
  read -r -p "Deploy publish/ to $SITE now? [y/N] " answer
  [[ "$answer" =~ ^[Yy]$ ]] || { echo "Not deployed."; exit 0; }
fi
wrangler pages deploy publish --project-name "$PROJECT" --branch main \
  --commit-hash "$(git rev-parse HEAD)" --commit-message "$(git log -1 --format=%s)"

# --- Smoke test --------------------------------------------------------------------------
step "Smoke test on $SITE"
sleep 15   # let the new deployment reach the edge
urls=("/" "/blog/" "/sitemap.xml")
today="$(date -u +%Y-%m-%d)"
while IFS= read -r f; do
  slug="$(basename "$f" .md)"; slug="${slug:11}"
  urls+=("/blog/${today:0:4}/${today:5:2}/$slug/")
done < <(grep -l "^date: $today" docs/_posts/*.md 2>/dev/null || true)
ok=true
for u in "${urls[@]}"; do
  code=""
  for _ in 1 2 3 4 5 6; do
    code="$(curl -s -o /dev/null -w '%{http_code}' "$SITE$u")"
    [[ "$code" == 200 ]] && break
    sleep 10
  done
  printf '   %s  %s\n' "$code" "$u"
  [[ "$code" == 200 ]] || ok=false
done
$ok && echo "Live site OK." || fail "Some pages did not return 200 — check the Cloudflare dashboard."
