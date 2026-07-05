---
title: Setup
---

This lesson runs almost entirely in your **web browser**. For most of it you need nothing more than a **GitHub account**. Only the optional final episode (reproducible environments with pixi) asks you to install software on your own computer.

Check with your instructor which track your workshop is running **before** you install anything.

- **Citation-focused track (default):** licensing, CITATION.cff, releases, DOIs, and metadata. Browser only.
- **Full track:** everything above, plus the optional pixi episode, which needs a local install.

## Citation-focused track — browser only

You will fork a demo repository and add a license, a citation file, a release with a DOI, and metadata, all through GitHub's web interface.

You need:

- **A GitHub account** — free at <https://github.com/join>.
- **A modern web browser.**

That is all: **no Git, no terminal, and no other software** are required for this track. A desktop text editor (VS Code, VS Codium, Sublime, …) is optional; GitHub's built-in editor handles everything.

### Fork the demo repository (do this before the workshop)

The lesson uses a demo repository called **`software-demo`**, and you work in your own fork of it.

1. Sign in to GitHub.
2. Go to <https://github.com/UC-OSPO-Network/software-demo>.
3. Click **Fork**, then **Create fork**. The default settings are fine; you only need the `main` branch.
4. You now have your own copy at `https://github.com/YOUR-USERNAME/software-demo`. Its `main` branch is the bare **starting state** — no license, citation file, release, or metadata. That is intentional; you will build it up over the lesson.

::::::::::::::::::::::::::::::::::::: callout

### Checking your work: reference branches

The **upstream** repository (`UC-OSPO-Network/software-demo`) keeps view-only **reference branches** that show the target state after each episode:

| Branch | Shows the repo after… |
|---|---|
| `main` | the starting state (what you fork) |
| `after-license` | Episode 2, license added |
| `after-citation` | Episode 3, CITATION.cff added |
| `after-release` | Episode 4, release + DOI |
| `after-metadata` | Episode 5, full metadata (the finished repo) |
| `optional-pixi` | the optional pixi episode |

If you fall behind or want to compare, open the upstream repo, switch to the matching branch in the branch dropdown, and look at the files. Because each episode adds an **independent** piece, falling behind never blocks you: you can copy a file you missed from its reference branch. You never edit the reference branches; they are an answer key.

::::::::::::::::::::::::::::::::::::::::::::::::

### Before the workshop, confirm

- You can sign in to GitHub in your browser.
- You have forked `software-demo` and can see it under your account.

If both are true, you are ready for the citation-focused track. There is nothing to install.

## Full track only — local setup for the optional pixi episode

::::::::::::::::::::::::::::::::::::: caution

**Set this up only if your instructor has confirmed the full track.** The pixi episode is the one part of the lesson that runs on your own machine. If you are on the citation-focused track, skip this whole section — you do not need Git, a terminal, or pixi.

::::::::::::::::::::::::::::::::::::::::::::::::

In addition to the GitHub account above, you will need Git, pixi, and a local clone of your fork.

### 1. Install Git

::::::::::::::::::::::::::::::: group-tab

### Windows

Download and run **Git for Windows** from <https://git-scm.com/downloads/win> and accept the default options. This also installs **Git Bash**, a terminal you can use for the remaining steps.

### macOS

Git is usually already installed. Open **Terminal** and run `git --version`. If you are prompted to install the Command Line Developer Tools, accept. Otherwise install it with [Homebrew](https://brew.sh): `brew install git`.

### Linux

Git is usually already installed. If not, use your package manager, for example `sudo apt install git` (Debian/Ubuntu) or `sudo dnf install git` (Fedora).

:::::::::::::::::::::::::::::::

### 2. Install pixi

pixi is a fast, cross-platform environment and package manager.

::::::::::::::::::::::::::::::: group-tab

### Windows

In **PowerShell**, run:

```powershell
iwr -useb https://pixi.sh/install.ps1 | iex
```

Then close and reopen your terminal so `pixi` is on your PATH.

### macOS

In **Terminal**, run:

```bash
curl -fsSL https://pixi.sh/install.sh | bash
```

Then close and reopen your terminal.

### Linux

In a terminal, run:

```bash
curl -fsSL https://pixi.sh/install.sh | bash
```

Then close and reopen your terminal.

:::::::::::::::::::::::::::::::

Full instructions and troubleshooting: <https://pixi.sh/latest/>

### 3. Clone your fork

```bash
git clone https://github.com/YOUR-USERNAME/software-demo.git
cd software-demo
```

### Before the workshop, confirm (full track only)

Open a terminal and check that both tools respond:

```bash
git --version
pixi --version
```

::::::::::::::::::::::::::::::::::::: callout

### Authentication note

If you are prompted to authenticate when you clone, GitHub can sign you in through the browser: follow the link that appears in the terminal, sign in, and return. You do **not** need SSH keys or personal access tokens for this lesson.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::: instructor

### Instructor notes

**Timing.** Budget 5–10 minutes at the start to confirm everyone has a GitHub account and a fork of `software-demo` — this is the single most common blocker, so clear it before Episode 1. Full-track learners must install pixi *ahead of* the workshop, not mid-episode.

**Verification.** Ask learners to open their fork, click **Add file → Create new file**, and confirm they can commit to their `main` branch. For full-track learners, confirm `git --version` and `pixi --version` return values locally.

**Common issues.**

- Some institutional devices require browser sign-in for GitHub access.
- Windows full-track users may need to set Git Bash as the terminal in VS Code.
- If pixi is installed but "not found," restart the terminal (or VS Code) so PATH updates apply.

See the [Instructor Notes](../instructors/instructor-notes.md) for the full fork-alignment setup, including how to teach from your own fork so you and the learners share the same starting state.

:::::::::::::::::::::::::::::::::
