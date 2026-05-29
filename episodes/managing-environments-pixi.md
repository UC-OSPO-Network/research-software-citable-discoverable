---
title: "Managing Reproducible Environments with pixi"
teaching: 15
exercises: 5
---

::::::::::::::::::::::::::::::::::::: callout

### Optional Episode

This episode covers environment management using `pixi`. It is **optional** — you can skip it and move directly to [Improving Metadata and Discoverability](improving-metadata-discoverability.md).

If you skip this episode, you will still complete all citation steps. The `pixi.toml` and `pixi.lock` files you see in the demo repo branches were added here — you can ignore them.

**Other environment tools:** `conda`, `mamba`, `pip`/`venv`, and `renv` (for R) all serve the same purpose. The concepts here apply to any environment manager — pixi is used because it handles Python, R, and other languages with a single tool and generates an automatic lockfile.

::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::: questions

- Why do software projects need well defined environments?
- How can `pixi` help learners run the same code the developer used?
- How does environment management improve the reproducibility and citability of research software?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Explain why environment definition is central to reproducible research.
- Create a minimal `pixi.toml` file for a project.
- Use `pixi` to run Python or R code inside a clean, isolated environment.
- Describe how environment files support FAIR software and citation practices.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: callout

### Episode Branch: `03-pixi`

This optional episode explores the environment management layer of the demo repository.

**To follow along:**
```bash
git checkout 03-pixi     # Branch with pixi.toml and lockfile added
```

*This branch sits between `02-license` and `04-citation` in the demo repo history, but you can explore it at any point in the lesson.*

::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

### Teaching this optional episode

This episode appears after the release/DOI episode in the lesson order. The demo repository branch `03-pixi` sits earlier in the repo history (between `02-license` and `04-citation`), so the branch number and lesson position don't match — that's expected.

**How to handle the branch:**

Have learners check out `03-pixi` to follow along. They are exploring it as a standalone example, not building on it. After this episode, direct them back to `05-release` to continue with the metadata episode.

```bash
# During this episode
git checkout 03-pixi

# After this episode, return here to continue
git checkout 05-release
```

**If skipping this episode:** Learners who went from `02-license` straight to `04-citation` will already have pixi files in their repo (they were baked into the branch). Acknowledge this briefly when they encounter `pixi.toml` or `pixi.lock` in the metadata episode: *"Those files are from the optional environment management episode — you can leave them as-is."*

**Pixi not installed?** Learners can follow the concepts without a working pixi installation. The key idea — that a lockfile pins exact dependency versions — is the transferable lesson, not the tool itself.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

## Why Environments Matter

**The Problem:** Research software often "works on my machine" and nowhere else.

Code rots. Python updates, packages break, and 6 months from now, your script won't run.

Different operating systems, outdated packages, and mismatched library versions frequently break code.

### ❌ The Vague Way

```toml
[dependencies]
python = "*"
numpy = "*"
```

`python = "*"` is like saying "I need some food."

**Problems:**
- Works today, breaks tomorrow
- Different versions on different machines
- "Works on my machine" syndrome

### ✅ The Locked Way

```toml
pixi.lock contains:
python = "3.11.4"
numpy = "1.24.3"
+ 47 dependencies
```

`pixi.lock` is like saying "I need a pepperoni pizza from Mario's, baked at 5:00 PM."

**Benefits:**
- ✅ Exact versions locked
- ✅ Same environment everywhere
- ✅ Reproducible in 5 years

## What Environment Management Captures

Environment management reduces this friction because it captures:

- The exact language versions used
- Required packages
- The dependency set needed to run the software
- Instructions for reproducing the execution environment

**The Payoff:** We aren't just shipping code; we're shipping the **computer state** needed to run it.

## Why pixi?

`pixi` is a modern, fast environment manager that works for Python, R, and many other languages. We use it in this lesson because it is:

- **Cross-platform:** Works on macOS, Linux, Windows
- **Fast:** Faster than Conda
- **Automatic lockfiles:** Creates `pixi.lock` automatically, guaranteeing everyone runs the exact same versions of every package
- **Multi-language:** Supports Python, R, and more

**FAIR Connection:** Standard formats + clear dependencies = Interoperable & Reusable software

---

## Installing pixi

Full installation docs: <https://pixi.sh>

Common installation for macOS or Linux:

```bash
curl -fsSL https://pixi.sh/install.sh | bash
```

Windows users can install via MSI installer or `winget`.

::::::::::::::::::::::::::::::::::::: callout

`pixi` includes its own language runtimes.  
Learners do not need preinstalled Python, R, compilers, or system packages.

::::::::::::::::::::::::::::::::::::::::::::::::

## Creating a New pixi Project

Create a directory and initialize a pixi project:

```bash
mkdir myproject
cd myproject
pixi init
```

This creates a `pixi.toml` file, which documents your environment.

### Keeping Repositories Clean (.gitignore)

When you run `pixi init`, it automatically creates a `.gitignore` file. This file tells Git which files to **ignore**.

For `pixi`, this is critical because it creates a hidden folder `.pixi/` containing thousands of environment files. You **never** want to commit this folder to GitHub—it is large, platform-specific, and can be regenerated by anyone using your `pixi.lock` file.

**Always check your `.gitignore`** to ensure generated files (like `.DS_Store`, `__pycache__`, or data outputs) are not accidentally shared.

Add Python:

```bash
pixi add python
```

Add the NumPy package:

```bash
pixi add numpy
```

Add R and one package:

```bash
pixi add r
pixi add r-dplyr
```

Your `pixi.toml` is now a reproducible record of all dependencies needed for the software.

### What's Inside pixi.toml?

Here's what the file looks like (this will be automatically created for you):

```toml
[workspace]
authors = ["Leigh Phan <leighphan@ucla.edu>"]
channels = ["conda-forge"]
name = "myproject"
platforms = ["osx-arm64"]
version = "0.1.0"

[tasks]

[dependencies]
python = ">=3.14.3,<3.15"
numpy = ">=2.4.2,<3"
r = ">=4.5,<4.6"
r-dplyr = ">=1.2.0,<2"
```

**The `pixi.toml` file is now a reproducible record of all dependencies needed for the software.**

When you run `pixi install`, it also creates a `pixi.lock` file with exact versions locked:

```
pixi.lock contains:
python = "3.14.3"
numpy = "2.4.2"
r = "4.5.4"
r-dplyr = "1.2.0"
+ 47 other dependencies
```

This lockfile guarantees **byte-for-byte reproducibility**.

---

## Running Code With pixi

Run Python code:

```bash
pixi run python script.py
```

Run R code:

```bash
pixi run Rscript analysis.R
```

Every command is executed *inside* the environment described by `pixi.toml`.

This makes it easier for others to test, cite, extend, and build upon your work.

---

## How Environments Support Citation and Reuse

A reusable research software project contains not only code, but:

- licensing  
- authorship and citation metadata (`CITATION.cff`)  
- version information  
- a documented environment  

Including `pixi.toml` in your repository or DOI deposit helps future readers:

- recreate the execution environment  
- verify results  
- adapt your code for new analyses  
- evaluate whether the software is FAIR (Findable, Accessible, Interoperable, Reusable)  

When publishing your software, include:

- the `pixi.toml` file  
- instructions such as:  
  ```bash
  pixi run python script.py
  ```
  
:::::::::::::::::::::::::::::::::::::: challenge

### Challenge: Add a new dependency

Use `pixi` to add `pandas` or `r-ggplot2` to your project.

What changed in your `pixi.toml` file?

:::::::::::::::::::::::: solution

```bash
pixi add pandas
```

or:

```bash
pixi add r-ggplot2
```

You should see the new package listed under `[project.dependencies]` in your `pixi.toml`.

:::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: keypoints

- Reproducible environments reduce troubleshooting and support more reusable software.
- `pixi` provides fast, cross platform environment management.
- The `pixi.toml` file acts as documentation that supports citation and FAIR4RS principles.
- Use `pixi run` to execute Python or R code inside a reproducible environment.

:::::::::::::::::::::::::::::::::::::::::::::::
