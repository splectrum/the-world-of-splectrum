# Local Jekyll server

The local site runs in a Docker container using the `jekyll/jekyll:pages` image. It needs `webrick` installed at startup (removed from the Ruby 3 standard library).

## Start

```
docker run -d --name jekyll-tws \
  -p 4000:4000 -p 35729:35729 \
  -v "/home/herma/splectrum/the-world-of-splectrum/docs:/srv/jekyll" \
  jekyll/jekyll:pages \
  bash -c "gem install webrick && jekyll serve --watch --force_polling --future"
```

- `--future` shows all scheduled (future-dated) posts, not just published ones; the production build (`./publish.sh`) holds them back.
- `--watch --force_polling` rebuilds on file changes (polling is needed on the WSL-mounted drive).
- Site serves at http://localhost:4000/. A full rebuild takes about 35 seconds.

## Stop

```
docker stop jekyll-tws
```

The `--rm` flag removes the container automatically on stop.

## Restart after reboot

The container does not survive a reboot. Run the start command again.

## Verify

```
curl -s -o /dev/null -w "%{http_code}" http://localhost:4000/
```

Returns `200` when the site is up.
