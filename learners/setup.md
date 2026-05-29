---
title: Setup
---

## Which track is your workshop running?

Check with your instructor before installing anything.

**Citation-focused track**: covers licensing, CITATION.cff, releases, DOIs, and metadata. This is the default. No pixi needed.

**Full track**: adds an optional episode on reproducible environment management with pixi. Only install pixi if your instructor confirms you are running the full track.

---

## Required for all tracks

- **A GitHub account**: for editing files, adding a CITATION.cff, and improving repository metadata
- **Git**: for basic version control and interacting with the demo repository
- **A web browser**: most lesson activities work entirely in GitHub’s web interface

A text editor (VS Code, VS Codium, Sublime, etc.) is useful but not required; GitHub’s built-in editor works for everything in this lesson.

---

## Full track only: pixi

**Only install pixi if your instructor has confirmed you are doing the full track.**

pixi is a fast, modern environment and package manager used in the optional reproducibility episode. If you are on the citation-focused track, skip this section entirely.

---

## Installation

### Git
Most systems already include Git. If not:
- All platforms: <https://git-scm.com/downloads>
- Windows users may prefer **Git for Windows**, which includes Git Bash

### pixi (full track only)
Install only if your instructor confirmed you are on the full track:
<https://pixi.sh/latest/>

---

## Lesson Demo Repository

This lesson uses a **demo repository** called `software-demo` that progresses through different states as you learn.

### Clone the Demo Repository

Before the workshop, clone the demo repository:

```bash
git clone https://github.com/jt14den/software-demo.git
cd software-demo
```

### Understanding the Branches

The repository has branches for each lesson stage:

- `01-start`: initial state (minimal project)
- `02-license`: LICENSE file added
- `03-pixi`: pixi environment management added
- `04-citation`: CITATION.cff added
- `05-release`: tagged release v0.1.0
- `06-metadata`: final state (complete documentation)

### Catching Up During the Lesson

If you need to catch up at any point during the workshop:

```bash
git checkout 02-license    # Jump to the license stage
git checkout 03-pixi       # Jump to the environment stage
# etc.
```

Each episode will tell you which branch to check out if you need to skip ahead.

**Note:** You can always return to the main branch with `git checkout main`

---

## What To Check Before the Workshop

Confirm Git is installed:

```bash
git --version
```

**Full track only**: confirm pixi is installed:

```bash
pixi --version
```

---

## Authentication Notes

GitHub now supports streamlined login through the browser.  
If you're prompted to authenticate:

- follow the link that appears in the terminal  
- sign in using your GitHub credentials  
- return to the terminal when authorization completes

You do **not** need SSH keys or personal access tokens for this lesson.

---

::::::::::::::::::::: instructor

### Instructor Notes

**Timing:**
- Allow 5–10 minutes at the start to confirm GitHub access.
- If running the full track, allow an additional 5 minutes for pixi installation issues. Verify pixi is installed before the workshop; do not let learners discover it is missing mid-episode.

**Verification:**  
Ask learners to visit a GitHub repository, click “Edit”, and confirm they can commit changes to a fork.  
For those using local tools, verify that:

git --version

returns a valid value.

**Common Issues:**  
- Windows users may need to configure Git Bash as the terminal in VS Code.  
- Some institutional devices may require sign-in through a browser for GitHub access.  
- If pixi is installed but not found, VS Code may need to be restarted so PATH updates are recognized.

**Troubleshooting Resources:**  
- Git documentation: https://git-scm.com/docs  
- VS Code terminal guide: https://code.visualstudio.com/docs/terminal/basics  
- pixi installation guide: https://pixi.sh/latest/  
- GitHub authentication help: https://docs.github.com/en/get-started

::::::::::::::::::::::::::::::::::
