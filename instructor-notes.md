---
title: 'Instructor Notes'
---

## Lesson Overview

This lesson teaches researchers how to make software citable and discoverable. The core arc is:

**Sharing → License → CITATION.cff → Release/DOI → Metadata**

The environment management episode (pixi) is **optional** and sits after the release/DOI episode in the default lesson order. Decide before your workshop which track you are running.

---

## Presentation Slides

A conference-style slide deck of this material exists as a **separate artifact** from the hands-on lesson. It was delivered at UC Love Data Week 2026 and is the right starting point for a short, talk-based version of this content.

- **Slides (PDF, view/print):** [2026-UCLDW-sharing-software.pdf](https://github.com/UC-OSPO-Network/research-software-citable-discoverable/blob/main/instructors/2026-UCLDW-sharing-software.pdf)
- **Slides (PowerPoint, editable source):** [2026-UCLDW-sharing-software.pptx](https://github.com/UC-OSPO-Network/research-software-citable-discoverable/blob/main/instructors/2026-UCLDW-sharing-software.pptx)

The deck and this lesson are maintained independently. The slides are the canonical *delivery* artifact (designed in PowerPoint); the episodes are the canonical *hands-on workbook*. Earlier draft slide material (Marp, scripts, asset captures) lives in `slide_assets/` and is not maintained.

---

## Reading the Room: Researchers vs. Support Staff

This lesson serves two overlapping audiences: people who write research software, and the library / OSPO / research-support staff who advise them. In practice your room will often be a mix, and sometimes it will be mostly researchers even when the workshop was billed for librarians. Plan to flex the framing live rather than committing to one persona.

The hands-on body is audience-neutral. The keystrokes to add a license, a `CITATION.cff`, or a Zenodo DOI are the same no matter who runs them. The audience-specific layer lives in two places:

- **"Supporting others" callouts** in each episode are learner-facing asides that recast the technical step as advising and consultation work. If your room is mostly support staff, slow down and discuss these: ask "who on your campus owns this step, and when would you refer it out?" If your room is mostly researchers, read past them quickly or skip them.
- **These instructor notes** are the meta layer for you.

Prompts that work well with a support-staff audience:

- After the license episode: *"A faculty member asks 'can I just put MIT on this?' What do you check before answering?"* (Who owns the code, any third-party dependencies, and whether this is a referral to tech transfer.)
- After the CITATION.cff episode: *"Would you author this file for them, or coach them to do it? Where is the line?"*
- After the release/DOI episode: *"Which DOI goes in their methods section, the version DOI or the concept DOI?"*

If your audience is purely researchers, treat the "Supporting others" boxes as optional enrichment and keep the focus on their own repositories.

### Two objectives per episode

Each episode lists a **Supporting others** objective alongside the hands-on one. The hands-on objective is "can you do this step"; the supporting objective is "can you advise, teach, or triage it for someone else." With a support-staff audience, hold learners to the second objective too, not just task completion. The "Build your campus playbook" challenge in the wrap-up is where that second objective gets produced as a take-home artifact, so leave time for it.

### Predict-then-reveal

Seeded **Predict** challenges (e.g., "what will GitHub do when you commit `CITATION.cff`?", "what happens when you publish a release to a connected Zenodo?") ask learners to commit to an answer before the reveal. This is the cheapest way to keep active-learning value when you are short on time or running a slide-based version: even without hands-on doing, a prediction plus a reveal keeps learners engaged. In slide mode, turn each demo step into a prediction first. Aim for one every 5 to 10 minutes.

---

## Choosing a Track

### Full track (~3.5 hours)

All episodes in order. Suitable when reproducibility and environment management are part of the workshop goals, or when your audience includes researchers who maintain code others need to run.

### Citation-focused track (~2.5 hours)

Skip the pixi episode entirely. Suitable for a shorter workshop or when learners just want their code cited, not necessarily reproduced. The FAIR4RS checklist in the wrap-up still works; simply omit the environment/interoperability row or note it as "future work."

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

**Note on pixi branch:** `03-pixi` sits earlier in the demo repo history than `04-citation`, but that's fine. Learners are just exploring it to see what a locked environment looks like; they don't need to build on it. Have them check out `03-pixi` to follow along, then return to `05-release` before the metadata episode.

### Citation-focused track: branch navigation

| Lesson episode | Branch to check out |
|---|---|
| Sharing Software | `01-start` |
| Open Source License | `02-license` |
| Adding a CITATION.cff File | `02-license` → result is `04-citation` |
| Making Your Software Citable | `04-citation` → result is `05-release` |
| Improving Metadata | `05-release` → result is `06-metadata` |

**Important:** `04-citation` and later branches contain pixi files (`pixi.toml`, `pixi.lock`) even though learners haven't done the pixi episode. Acknowledge this briefly: *"You'll see some pixi files in the repo; those are from an optional episode on environment management. You can ignore them for now."*

---

## Common Sticking Points

**GitHub "Cite this repository" button not appearing**
Learners need to commit the `CITATION.cff` file to the default branch and refresh. GitHub may take a minute to parse it. If it doesn't appear, check that the file is in the root of the repository and named exactly `CITATION.cff`.

**Zenodo Sandbox login**
Use `sandbox.zenodo.org`, not the real `zenodo.org`. Learners who accidentally create records on the live site cannot delete them. Warn the group before this step.

**YAML indentation errors in CITATION.cff**
Direct learners to the cffinit web tool (<https://citation-file-format.github.io/cffinit/>) rather than hand-editing YAML. This eliminates most formatting errors.

**Pixi not installed**
Pixi is optional and learners do not need it installed to complete the citation-focused track. If running the full track, verify pixi installation during setup. The pixi episode callout already marks it optional so learners who skip it can rejoin cleanly.
