---
title: 'Instructor Notes'
---

## Lesson Overview

This lesson teaches researchers how to make software citable and discoverable. The core arc is:

**Sharing → License → CITATION.cff → Release/DOI → Metadata**

The environment management episode (pixi) is **optional** and sits after the release/DOI episode in the default lesson order. Decide before your workshop which track you are running.

---

## Choosing a Track

### Full track (~3.5 hours)

All episodes in order. Suitable when reproducibility and environment management are part of the workshop goals, or when your audience includes researchers who maintain code others need to run.

### Citation-focused track (~2.5 hours)

Skip the pixi episode entirely. Suitable for a shorter workshop or when learners just want their code cited — not necessarily reproduced. The FAIR4RS checklist in the wrap-up still works; simply omit the environment/interoperability row or note it as "future work."

---

## The Branch Structure and Pixi

The demo repository (`UC-OSPO-Network/software-demo`) uses numbered branches that reflect the original episode order, where pixi came *before* the citation file:

```
01-start → 02-license → 03-pixi → 04-citation → 05-release → 06-metadata
```

The lesson episode order has been updated so pixi now comes *after* the release/DOI episode. This creates a mismatch between branch numbers and lesson order that instructors need to manage.

### Full track: branch navigation

| Lesson episode | Branch to check out |
|---|---|
| Sharing Software | `01-start` |
| Open Source License | `02-license` |
| Adding a CITATION.cff File | `02-license` → work done live, result is `04-citation` |
| Making Your Software Citable | `04-citation` → work done live, result is `05-release` |
| Managing Environments (pixi) | `03-pixi` (see note below) |
| Improving Metadata | `05-release` → work done live, result is `06-metadata` |

**Note on pixi branch:** `03-pixi` sits earlier in the demo repo history than `04-citation`, but that's fine — learners are just exploring it to see what a locked environment looks like. They don't need to build on it. Have them check out `03-pixi` to follow along, then return to `05-release` before the metadata episode.

### Citation-focused track: branch navigation

| Lesson episode | Branch to check out |
|---|---|
| Sharing Software | `01-start` |
| Open Source License | `02-license` |
| Adding a CITATION.cff File | `02-license` → result is `04-citation` |
| Making Your Software Citable | `04-citation` → result is `05-release` |
| Improving Metadata | `05-release` → result is `06-metadata` |

**Important:** `04-citation` and later branches contain pixi files (`pixi.toml`, `pixi.lock`) even though learners haven't done the pixi episode. Acknowledge this briefly: *"You'll see some pixi files in the repo — those are from an optional episode on environment management. You can ignore them for now."*

---

## Common Sticking Points

**GitHub "Cite this repository" button not appearing**
Learners need to commit the `CITATION.cff` file to the default branch and refresh. GitHub may take a minute to parse it. If it doesn't appear, check that the file is in the root of the repository and named exactly `CITATION.cff`.

**Zenodo Sandbox login**
Use `sandbox.zenodo.org` — not the real `zenodo.org`. Learners who accidentally create records on the live site cannot delete them. Warn the group before this step.

**YAML indentation errors in CITATION.cff**
Direct learners to the cffinit web tool (<https://citation-file-format.github.io/cffinit/>) rather than hand-editing YAML. This eliminates most formatting errors.

**Pixi not installed**
Pixi is optional and learners do not need it installed to complete the citation-focused track. If running the full track, verify pixi installation during setup. The pixi episode callout already marks it optional so learners who skip it can rejoin cleanly.
