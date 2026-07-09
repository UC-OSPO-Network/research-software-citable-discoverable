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

The deck and this lesson are maintained independently. The slides are the canonical *delivery* artifact (designed in PowerPoint); the episodes are the canonical *hands-on workbook*. Earlier draft slide material (Marp, scripts, asset captures) is archived under `dev/slide_assets/` (kept out of the built site) and is not maintained.

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

Episode timings sum to about **3.25 hours** for the citation-focused track and **3.75 hours** for the full track. These are content minutes (teaching + exercises); add breaks, setup, and Q&A to get wall-clock time, so budget a **half day** either way. The per-episode `teaching`/`exercises` values are a starting point calibrated against mature Carpentries lessons; adjust them after your first run.

### Full track (~3.75 hours)

All episodes in order, including the optional pixi episode at the end. Suitable when reproducibility and environment management are part of the workshop goals, or when your audience includes researchers who maintain code others need to run.

### Citation-focused track (~3.25 hours)

Skip the pixi episode entirely. Suitable when learners just want their code cited, not necessarily reproduced. The FAIR4RS checklist in the wrap-up still works; omit the environment/interoperability row or note it as "future work."

---

## Set up: teach from your own fork

The whole lesson runs in the browser on a fork of `UC-OSPO-Network/software-demo`. Set yourself up exactly the way learners do, so you and the room share the same starting state and the same clicks.

**Before the workshop:**

1. Fork `UC-OSPO-Network/software-demo` to your own account (or a throwaway teaching account). The `main`-only default is fine.
2. Confirm your fork's `main` is the bare **starting state**: `README.md`, `requirements.txt`, and `src/analysis.py`, with no license, citation, release, or metadata.
3. Have the upstream repo open in a second browser tab so you can show the `after-*` reference branches on demand.
4. If you're teaching the full (pixi) track, also clone your fork locally and confirm `pixi --version`.

**During the workshop**, demonstrate each step live in your fork and let learners mirror it in theirs. Everyone commits to their own `main`. Because you forked the same starting state, your screen and theirs stay in sync.

> **Use a fresh fork for each teaching.** Delete and re-fork (or reset) between workshops so you always start from the bare state, not last session's finished repo.

## The reference branches

The upstream repository keeps view-only **reference branches** showing the target state after each episode. Learners never build on them; they're an answer key and a catch-up aid.

| Reference branch | State it shows |
|---|---|
| `main` | starting state (what everyone forks) |
| `after-license` | after Episode 2 (license added) |
| `after-citation` | after Episode 3 (CITATION.cff added) |
| `after-release` | after Episode 4 (release + DOI) |
| `after-metadata` | after Episode 5 (full metadata, the finished repo) |
| `optional-pixi` | the optional pixi episode (branches off `after-metadata`) |

**Why there's no per-episode "check out this branch" step anymore.** In the old command-line version, learners `git checkout`ed a branch to teleport their working state forward when they fell behind. The web workflow has no equivalent, and it doesn't need one: each episode adds an **independent** file (license, then citation, then release, then metadata), so a learner who misses one is never *blocked*, just less complete. To catch up, they open the relevant reference branch upstream and copy the one file they're missing into their own `main`. Point this out once, early, then let the reference branches sit in the background.

**Pixi is out of the main chain.** Unlike the old demo repo, the `after-*` branches contain **no** pixi files. Pixi lives only on `optional-pixi`, which branches off `after-metadata`. So learners on the citation-focused track never see stray `pixi.toml`/`pixi.lock` files, and there's nothing to explain away.

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
