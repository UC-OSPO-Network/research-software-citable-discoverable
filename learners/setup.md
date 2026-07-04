---
title: Setup
---

## How this lesson works

Almost everything in this lesson happens in your **web browser**, in your own copy (a "fork")
of a small demo repository. You'll add one thing per episode: a license, a citation file, a
release with a DOI, then richer metadata. You commit each change to the `main` branch of your
fork, and by the end you have a complete, citable repository you built yourself.

Only the final, **optional** episode on reproducible environments with pixi needs software
installed on your computer. If you're not doing that episode, you never leave the browser.

## Which track is your workshop running?

Check with your instructor before installing anything.

- **Citation-focused track (default):** licensing, CITATION.cff, releases, DOIs, and metadata.
  Browser only. No installs.
- **Full track:** adds the optional pixi episode at the end. This one requires a local install
  (pixi + a terminal). Only set that up if your instructor confirms the full track.

---

## Required for all tracks

- **A GitHub account.** Free at <https://github.com/join>. This is all you need for the core lesson.
- **A web browser.** All core activities use GitHub's web interface: creating files, adding a
  CITATION.cff, drafting a release, and editing metadata.

A text editor (VS Code, VS Codium, Sublime, etc.) is handy but not required; GitHub's built-in
editor works for everything in the core track.

---

## Fork the demo repository

The lesson uses a demo repository called **`software-demo`**. You'll work in your own fork of it.

1. Sign in to GitHub.
2. Go to <https://github.com/UC-OSPO-Network/software-demo>.
3. Click **Fork** (top right), then **Create fork**. The default settings are fine; you only
   need the `main` branch.
4. You now have your own copy at `https://github.com/YOUR-USERNAME/software-demo`. When it opens,
   `main` is the **starting state**: a bare project with no license, citation file, release, or
   metadata. That's intentional. You'll fix it over the course of the lesson.

That's the whole setup for the citation-focused track.

::::::::::::::::::::::::::::::::::::: callout

### Checking your work: reference branches

The **upstream** repository (`UC-OSPO-Network/software-demo`) keeps view-only **reference
branches** that show the target state after each episode:

| Branch | Shows the repo after… |
|---|---|
| `main` | the starting state (what you fork) |
| `after-license` | Episode 2, license added |
| `after-citation` | Episode 3, CITATION.cff added |
| `after-release` | Episode 4, release + DOI |
| `after-metadata` | Episode 5, full metadata (the finished repo) |
| `optional-pixi` | the optional pixi episode |

If you fall behind or want to compare, open the upstream repo, switch to the matching branch in
the branch dropdown, and look at the files. Because each episode adds an **independent** piece,
falling behind never blocks you: you can always catch up later by copying a file you missed from
its reference branch. You don't edit the reference branches; they're an answer key.

::::::::::::::::::::::::::::::::::::::::::::::::

---

## Full track only: pixi (optional episode)

**Only do this if your instructor confirmed the full track.** The optional pixi episode is the
one part of the lesson that runs on your own machine instead of the browser.

You will need:

- **Git.** Most systems already include it. If not: <https://git-scm.com/downloads>
  (Windows users may prefer **Git for Windows**, which includes Git Bash).
- **pixi**, a fast, modern environment and package manager: <https://pixi.sh/latest/>
- **A local clone of your fork**, so you can run pixi against it:

  ```bash
  git clone https://github.com/YOUR-USERNAME/software-demo.git
  cd software-demo
  ```

---

## What to check before the workshop

- You can sign in to GitHub in your browser.
- You have forked `software-demo` and can see it under your account.

**Full track only**, also confirm:

```bash
git --version
pixi --version
```

---

::::::::::::::::::::::::::::::::::::: callout

### Authentication note (full track)

GitHub supports streamlined login through the browser. If you're prompted to authenticate when
cloning, follow the link that appears, sign in, and return to the terminal. You do **not** need
SSH keys or personal access tokens for this lesson.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::: instructor

### Instructor Notes

**Timing:**

- Allow 5–10 minutes at the start to confirm everyone has a GitHub account and a fork of
  `software-demo`. This is the single most common blocker; do it before Episode 1.
- Full-track learners need pixi installed ahead of time. Verify during setup, not mid-episode.

**Verification:**
Ask learners to open their fork, click **Add file → Create new file**, and confirm they can commit
to their `main` branch. For full-track learners, verify `git --version` and `pixi --version` return
valid values locally.

**Common issues:**

- Some institutional devices require browser sign-in for GitHub access.
- Windows full-track users may need to configure Git Bash as the terminal in VS Code.
- If pixi is installed but not found, VS Code may need a restart so PATH updates are recognized.

See the [Instructor Notes](../instructors/instructor-notes.md) for the full fork-alignment setup,
including how to teach from your own fork so you and the learners share the same starting state.

**Troubleshooting resources:**

- GitHub getting started: <https://docs.github.com/en/get-started>
- Git documentation: <https://git-scm.com/docs>
- pixi installation guide: <https://pixi.sh/latest/>

:::::::::::::::::::::::::::::::::
