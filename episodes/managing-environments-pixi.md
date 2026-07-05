---
title: "Managing Reproducible Environments with pixi"
teaching: 20
exercises: 10
---

::::::::::::::::::::::::::::::::::::: callout

### Optional Episode

This episode covers environment management using `pixi`. It is **optional**; you can skip it and move directly to [Improving Metadata and Discoverability](improving-metadata-discoverability.md).

If you skip this episode, you still complete every citation step. Unlike the rest of the lesson, which runs entirely in the browser, this episode requires tools installed on your own computer (**pixi** and a **terminal**) and a local clone of your fork. Its files live only in the [`optional-pixi` reference branch][branch-optional-pixi], not in your main project, so skipping it leaves nothing unfinished. Confirm with your instructor that you're running the full track before installing anything.

**Other environment tools:** `conda`, `mamba`, `pip`/`venv`, and `renv` (for R) all serve the same purpose. The concepts here apply to any environment manager; pixi is used because it handles Python, R, and other languages with a single tool and generates an automatic lockfile.

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
- **Supporting others:** recommend an environment tool that fits a researcher's stack rather than defaulting to one.

::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

### Teaching this optional episode

This episode is last in the lesson order and is the only one that leaves the browser: it needs pixi and a terminal on the learner's own machine, plus a local clone of their fork. Because the rest of the lesson is browser-only, confirm during setup which learners are prepared for the full track. Anyone who only wants their code cited can stop after the metadata episode with a complete, citable repository.

The [`optional-pixi` reference branch][branch-optional-pixi] builds on [`after-metadata`][branch-after-metadata], so it shows pixi added to an already-finished project. Have learners view it in the browser for the target `pixi.toml` and lockfile, then work along in their local clone. Nothing in the main project chain depends on pixi, so skipping this episode leaves no loose ends in anyone's repository.

**Pixi not installed?** Learners can follow the concepts without a working pixi installation. The key idea is that a lockfile pins exact dependency versions. That's the transferable lesson, not the tool itself.

**If you skip the hands-on entirely,** keep the concept in the room: the R in FAIR quietly depends on this. A deposit that cannot be executed is preserved the way a locked diary is preserved. The question "is there a record of what this needs to run" belongs in the consultation checklist even if the mechanics get referred to research computing.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

## Why Environments Matter

Digital preservation learned this lesson the hard way: keeping the file is not enough if nobody records what is needed to open it. A WordPerfect document with no format metadata is preserved and unreadable at the same time. Code has the same failure mode. A script depends on specific versions of specific packages, and if that goes unrecorded, the code you carefully licensed, cited, and deposited will not actually run for the person who finds it. An environment file with a lockfile is format metadata for execution: it records, exactly, what this code needs.

**The Problem:** Research software often "works on my machine" and nowhere else.

Code rots. Python updates, packages break, and 6 months from now, your script won't run.

Different operating systems, outdated packages, and mismatched library versions frequently break code.

### ❌ The Vague Way

```toml
[dependencies]
python = "*"
numpy = "*"
```

`python = "*"` is like saying "I need some food." In citation terms, it is a bibliography entry that reads "a dictionary." Which one? Printed when?

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

- ✅ Exact resolved versions recorded
- ✅ Much closer to the same environment across machines
- ✅ A durable record of what you actually ran

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
- **Automatic lockfiles:** Creates `pixi.lock` automatically, recording the exact resolved versions of every package so others can rebuild the same environment
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

### No preinstalled languages needed

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

For `pixi`, this is critical because it creates a hidden folder `.pixi/` containing thousands of environment files. You **never** want to commit this folder to GitHub. It is large, platform-specific, and can be regenerated by anyone using your `pixi.lock` file.

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

This lockfile records the exact resolved versions and per-platform builds, so anyone can rebuild the same environment. It greatly improves reproducibility, though it cannot guarantee that every package will still be available, or behave identically, on every future platform.

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

::::::::::::::::::::::::::::::::::::: callout

### Supporting others

This is the episode where you should resist prescribing a tool. We use `pixi` here because it handles Python *and* R in one cross-platform file, which makes it convenient to teach. It is not the one right answer for everyone you advise.

When someone asks "what should I use to make my environment reproducible?", advise on *fit* rather than defaulting:

- **Python-only** project, wants speed and simplicity → `uv` or `pixi`
- **R-first** project → `renv` is the mainstream choice
- Team already standardized on **conda** → `conda` / `mamba` / `micromamba`
- Needs heavier isolation (system libraries, services) → containers / dev containers, with the caveat that the learning curve is steeper

The reusable point you are teaching is the *principle*, not the brand: a documented, locked environment is what makes software runnable later. The advising skill is recognizing whether any such record exists, the way you would check whether a deposit includes format information, not championing a particular tool. Match the tool to the person's stack and skill level, and don't make a half-day workshop hinge on any one manager installing cleanly on every laptop.

::::::::::::::::::::::::::::::::::::::::::::::::

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

::::::::::::::::::::::::::::::::::::: challenge

### Predict: what does the lockfile add?

Your `pixi.toml` lists `python` and `numpy` with no version numbers. You commit both `pixi.toml` and the generated `pixi.lock`. A year later, a colleague clones the repo and runs `pixi install`. What does `pixi.lock` guarantee that `pixi.toml` alone would not?

:::::::::::::::::::::::: solution

`pixi.toml` records only *which* packages you want. Resolved a year apart, it could pull a newer numpy or Python build than you used. `pixi.lock` records the *exact* resolved versions, including transitive dependencies and per-platform builds, so your colleague reconstructs the same environment you had. The `.toml` is the intent; the `.lock` is the reproducible record. That is why both belong in version control.

:::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: keypoints

- Reproducible environments reduce troubleshooting and support more reusable software.
- `pixi` provides fast, cross platform environment management.
- The `pixi.toml` file acts as documentation that supports citation and FAIR4RS principles.
- Use `pixi run` to execute Python or R code inside a reproducible environment.

:::::::::::::::::::::::::::::::::::::::::::::::
