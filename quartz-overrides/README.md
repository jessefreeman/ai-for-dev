# quartz-overrides/

Repo-local patches that get layered on top of the upstream Quartz v4 clone at build time.

## How it works

`.github/scripts/build.sh` clones `jackyzha0/quartz@v4` into `$QUARTZ_DIR`, copies our `quartz.config.ts` over, then **copies the contents of this directory on top of the Quartz tree**, mirroring its layout. Anything here with the same path as a Quartz file will overwrite that file; new files are simply added.

This avoids forking Quartz while still giving us full control over components, static assets, and layout.

## Layout

Mirror Quartz's own structure:

```
quartz-overrides/
  quartz/
    static/          # Static assets served at site root (og-image.png, favicons, custom JS/CSS)
    components/      # Custom Preact components (sidebar widgets, head injections, etc.)
    styles/          # Style overrides
```

Only create the subdirectories you actually need.

## Conventions

- **Never** put content here — content lives in `wiki/`.
- Keep overrides minimal. Every file here is a patch we have to maintain across Quartz upgrades.
- When overriding a Quartz file wholesale, add a top comment with the upstream path + commit SHA you forked from, so future-you can diff against upstream.
- New components should be additive (new files) when possible, rather than overwriting upstream files.

## Currently active overrides

_(none yet — this scaffold is in place for upcoming work)_
