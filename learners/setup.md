---
title: Setup
---

## Software and Accounts Needed

Before starting the lesson, please make sure you have access to:

- **A GitHub account** — required for editing files, adding a CITATION.cff, and improving repository metadata  
- **Git** — for basic version control tasks and interacting with repositories  
- **A text editor** (such as VS Code, VS Codium, Atom, Sublime, or a built-in editor)  
- **pixi (optional but recommended)** — a lightweight tool for creating reproducible environments if you want to test packaging or run example code  
- **A web browser** — for GitHub-based workflows

This lesson does **not** require heavy coding, installation of full scientific environments, or running large datasets.  
All essential tasks can be performed directly in GitHub’s web interface.

Learners who want to experiment with environment files or run small examples locally may choose to install pixi.

---

## Recommended Tools

### Visual Studio Code (VS Code)
A convenient editor with integrated terminal support.  
Download from: https://code.visualstudio.com/

### Git
Most systems already include Git. If not, installation instructions are available at:  
https://git-scm.com/downloads

Windows users may prefer **Git for Windows**, which includes Git Bash.

### pixi (optional)
pixi is a fast, modern environment and package manager that helps create reproducible project environments.  
Installation instructions:  
https://pixi.sh/latest/

If pixi is not installed, all core lesson activities will still work.

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

- `01-start` — Initial state (minimal project)
- `02-license` — Added BSD 3-Clause License
- `03-pixi` — Added pixi environment management
- `04-citation` — Added CITATION.cff file
- `05-release` — Tagged release v0.1.0
- `06-metadata` — Final state (complete documentation)

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

Please ensure the following commands work in your terminal:

``` bash
git --version
```

If you choose to install pixi:

``` bash
pixi --version
```


These commands confirm Git and pixi are correctly installed.

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
- Allow 5–10 minutes at the beginning to confirm learners can access GitHub and open a repository.  
- An additional 5 minutes may be needed if learners choose to install pixi.

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
