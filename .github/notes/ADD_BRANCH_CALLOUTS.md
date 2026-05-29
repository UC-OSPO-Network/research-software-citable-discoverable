# Branch Callouts to Add to Each Episode

## managing-environments-pixi.md

Add after objectives section:

```markdown
::::::::::::::::::::::::::::::::::::: callout

### Episode Branch: `02-license` → `03-pixi`

This episode adds environment management with pixi.

**Starting point:**
```bash
git checkout 02-license  # Start with LICENSE already added
```

**After this episode:**
```bash
git checkout 03-pixi     # See the result with pixi.toml added
```

**Catch-up point:** If joining now, run `git checkout 02-license`

::::::::::::::::::::::::::::::::::::::::::::::::
```

## adding-citation-file.md

Add after objectives section:

```markdown
::::::::::::::::::::::::::::::::::::: callout

### Episode Branch: `03-pixi` → `04-citation`

This episode adds a CITATION.cff file.

**Starting point:**
```bash
git checkout 03-pixi     # Start with LICENSE and pixi already added
```

**After this episode:**
```bash
git checkout 04-citation # See the result with CITATION.cff added
```

**Catch-up point:** If joining now, run `git checkout 03-pixi`

::::::::::::::::::::::::::::::::::::::::::::::::
```

## making-software-citable.md

Add after objectives section:

```markdown
::::::::::::::::::::::::::::::::::::: callout

### Episode Branch: `04-citation` → `05-release`

This episode creates a release and tag.

**Starting point:**
```bash
git checkout 04-citation # Start with LICENSE, pixi, and CITATION.cff
```

**After this episode:**
```bash
git checkout 05-release  # See the result with v0.1.0 tag
```

**Catch-up point:** If joining now, run `git checkout 04-citation`

::::::::::::::::::::::::::::::::::::::::::::::::
```

## improving-metadata-discoverability.md

Add after objectives section:

```markdown
::::::::::::::::::::::::::::::::::::: callout

### Episode Branch: `05-release` → `06-metadata`

This episode completes the repository with full documentation and metadata.

**Starting point:**
```bash
git checkout 05-release  # Start with release tagged
```

**After this episode:**
```bash
git checkout 06-metadata # See the complete FAIR repository
```

**Catch-up point:** If joining now, run `git checkout 05-release`

::::::::::::::::::::::::::::::::::::::::::::::::
```

---

## Instructions

Manually add each callout block to the corresponding episode file, placing it right after the objectives section and before the first ## heading of content.
