# Memory maturation

Live memory (Claude Code's `~/.claude/projects/.../memory/`) captures session-level observations. Mature memory lives in the repo, travels with it, and is accessible to any collaborator or session. This process documents how live memory graduates to the repo.

## Working rules go in the repo at once

A rule about how we work, given or corrected in a session, goes into the repo in the same session: `process/`, `tone-of-voice/` or `posting-guide.md`, whichever fits, and the repo is brought into line with it (`process/organic-ecosystem.md`). It does not wait in live memory for a walk, and a note in live memory alone does not count as having recorded it. Live memory then holds at most a pointer. The walk below is for what has accumulated, not a reason to delay.

## When to trigger

- End of a work session, before closing down.
- On significant commits when live memory has accumulated and stabilised.
- On explicit trigger ("promote memory", "memory walk", "maturation walk").
- Periodic review if no trigger has fired for a while.

Not on every commit — memory needs time to stabilise. Larger cycles, not small.

## Categories

Live memory files fall into one of five buckets:

1. **Public voice / tone / thought** → `tone-of-voice/`. Authoring stance, register, writing principles. What the project sounds and thinks like.
2. **Internal process / workflow** → `process/`. How we work — collaboration patterns, workflow rules, meta-process.
3. **Project content** → ref lib pages (`docs/`). Concepts, definitions, vocabulary that belong in the library once the area is built.
4. **Duplicate of mature repo content** → delete from live memory. The live version was a thinner summary; the repo has the fuller form.
5. **Transient or personal** → stay live. Session-specific context, current state, personal orientation for Claude.

## Walk steps

For each live memory file, in order:

1. Read the content.
2. Check whether mature content on this topic already exists in the repo. If yes, decide: extend the mature file with anything new, or delete the live entry if fully redundant.
3. If no mature content exists and the content is stable, promote to the appropriate bucket:
   - Public voice → create or extend file in `tone-of-voice/`.
   - Internal process → create or extend file in `process/`.
   - Project content → create ref lib page (or wait for the area rework if not yet built).
4. If transient or personal, leave in live memory.
5. After promotion, update live memory: either delete the file (if fully absorbed) or shorten to a one-line pointer (e.g. "See `tone-of-voice/voice-split.md`").

## After the walk

- Update live `MEMORY.md` to reflect remaining entries.
- Commit the repo changes (new or updated files in `tone-of-voice/`, `process/`, ref lib).
- Live memory should now be smaller, focused on current-session context.

## Reconciliation before saving

Companion principle — before *saving* a new memory, check whether the topic is already covered in mature repo content. If yes, extend there rather than creating a parallel live entry. This keeps drift from accumulating between walks.

Folders worth checking before saving a new memory on a topic:

- `tone-of-voice/` — voice, register, authoring.
- `process/` — workflow, collaboration patterns.
- `posting-guide.md` — publishing conventions.
- `docs/engineering/splectrum/splectrum/namespace.md`, `docs/engineering/splectrum/haicc/` — project concepts already in the ref lib.
- `ref-lib-rewrite.md` — active rework scope.
