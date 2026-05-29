---
title: "Introduction: The \"Works on My Machine\" Trap"
teaching: 18
exercises: 8
---

:::::::::::::::::::::::::::::::::::::: questions

- Why does research software often fail to run on other machines?
- What is the "bus factor" problem in research software?
- How do FAIR4RS principles address these challenges?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Recognize common barriers to software reuse and reproducibility
- Understand how FAIR4RS principles apply to research software
- Identify the key components needed to make software citable and discoverable
- See what a "complete" FAIR research software project looks like

::::::::::::::::::::::::::::::::::::::::::::::::

## The "Works on My Machine" Trap

You send your code to a colleague...

- "It crashes on line 1" 😞
- "I can't install the dependencies"
- "Which Python version did you use?"

Here's what they see:

```output
$ python src/analysis.py

Traceback (most recent call last):
  File "analysis.py", line 1, in <module>
    import numpy as np
ModuleNotFoundError: No module named 'numpy'
```

**This is where most research software lives. Fragile.**

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

This concrete error message resonates with learners who have experienced dependency issues. Pause here to ask: "Has anyone experienced this problem?" This builds connection and motivation.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

## The Bus Factor Problem

**The Problem:** Code works perfectly on ONE laptop. If it disappears, the science is gone.

**The Bus Factor:** The number of people who need to be "hit by a bus" before your project becomes unmaintainable.

::::::::::::::::::::::::::::::::::::: callout

### How common is this?

A 2021 analysis found that over **48% of research articles** mention software — yet consistent sharing and citation remains the exception, not the rule. Most of that software is either unavailable, uncredited, or impossible to reproduce.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: callout

### Why This Matters for Research

Research software that lives only on one person's machine:

- Cannot be verified or reproduced
- Cannot be built upon by others
- Cannot receive proper academic credit
- Disappears when that person moves on

::::::::::::::::::::::::::::::::::::::::::::::::

## The Software Citation Problem

Even when software works, it often doesn't get credited. Most researchers cite code by dropping a URL into a paper:

### The wrong way

> "We used the analysis script from https://github.com/jt14den/software-demo"

**Problems:**

- URLs break (link rot)
- No version specified — which run of the code produced which result?
- No formal credit — the author's name isn't even visible
- Cannot appear in citation metrics

**This isn't hypothetical. Forges close.**

- **Gitorious** shut down in 2015 — thousands of projects became unreachable overnight
- **Google Code** shut down in 2016 — same result
- A username change, a repo rename, or a deleted account breaks any URL-based citation just as completely

That citation is now dead.

### The right way

> Dennis, T. (2025). *Biodiversity Analysis Toolkit* (v0.1.0). Zenodo. https://doi.org/10.5281/zenodo.123456

**Why this works:**

- DOI is permanent — survives username changes, repo moves, even GitHub disappearing
- Version is explicit — someone can reproduce the exact run
- Author gets formal credit and citation metrics

The fix is a `CITATION.cff` file and a DOI — both of which you'll create in this lesson.

## The Fix: FAIR4RS Principles

The solution is to apply **FAIR Principles for Research Software (FAIR4RS)**:

**F - Findable:** Software and metadata are easy to discover
→ DOI, CITATION.cff, metadata

**A - Accessible:** Retrievable via standard protocols
→ Public GitHub, git clone, Zenodo

**I - Interoperable:** Exchanges data with other tools
→ Standard formats, documented dependencies

**R - Reusable:** Can be executed AND modified
→ LICENSE, README, environment files

::::::::::::::::::::::::::::::::::::: callout

### What You're Doing TODAY

In this workshop, you will transform a fragile research script into a FAIR software project by adding:

✅ **License** - So others can legally use your work
✅ **Environment** - So it runs on any machine
✅ **Citation** - So you get academic credit
✅ **README** - So people can find and use it

::::::::::::::::::::::::::::::::::::::::::::::::

## What "Done Right" Looks Like

### The "Before" State (Branch: 01-start)

Check out the initial state of our demo repository:

```bash
cd software-demo
git checkout 01-start
```

You'll see:

- ❌ No LICENSE
- ❌ Vague environment (`python = "*"`)
- ❌ No citation information
- ❌ No DOI
- ❌ Minimal README

### The "After" State (Branch: 06-metadata)

Now look at the final state:

```bash
git checkout 06-metadata
```

Notice what's been added:

- ✅ **LICENSE** (BSD-3-Clause)
- ✅ **pixi.toml** (documented environment)
- ✅ **CITATION.cff** (citation metadata)
- ✅ **README.md** (complete documentation)
- ✅ **CONTRIBUTING.md** (contribution guidelines)
- ✅ **CODE_OF_CONDUCT.md** (community standards)
- ✅ **.zenodo.json** (Zenodo metadata)
- ✅ DOI badge in README

**This is what makes software Findable, Accessible, Interoperable, and Reusable.**

::::::::::::::::::::::::::::::::::::: callout

### Real-World Example: Spack

Want to see a production research software project that follows these principles?

**Spack** is used by national labs, universities, and supercomputing centers:
<https://github.com/spack/spack>

Check their repository and notice:

- ✅ README with clear description and getting started guide
- ✅ LICENSE (MIT and Apache-2.0)
- ✅ CITATION.cff file
- ✅ Documentation
- ✅ Code of conduct and Contributing guide

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: challenge

## Challenge: Reflect on Your Own Code

Think about a script or analysis you've written recently:

1. Could someone else run it on their machine today? What would they need?
2. If you moved to a new institution, could you still access and use it?
3. If someone wanted to cite your code in a paper, how would they do it?

Share one challenge you've faced with code sharing or reuse.

:::::::::::::::::::::::: solution

Common challenges include:

- No documentation of dependencies or versions
- Code only works with specific file paths on your machine
- Missing LICENSE file (so others legally can't reuse it)
- No citation information available
- Undocumented assumptions about the computing environment

All of these will be addressed in this lesson!

:::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: challenge

## Challenge 2: Who Gets Credit?

You created a Python script used to generate results in a collaborative paper. The paper cites the dataset but not the script. What's missing, and what would a proper software citation look like?

:::::::::::::::::::::::: solution

The script should be citable as a distinct research output. Without citation metadata or a DOI, the software contribution goes unrecognized and nobody can find or reproduce the exact version used.

A proper citation would include: author(s), software title, version, repository or archive URL, and a persistent identifier (DOI). A `CITATION.cff` file in the repository provides all of this automatically.

:::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::

## What We'll Build Together

Starting from the minimal `01-start` state, you will progressively add each component:

**Episode 1:** Sharing the demo repository (understanding `01-start`)
**Episode 2:** Adding an open-source license (`02-license`)
**Episode 3:** Managing environments with pixi (`03-pixi`) *(optional)*
**Episode 4:** Creating a CITATION.cff file (`04-citation`)
**Episode 5:** Minting a DOI and creating releases (`05-release`)
**Episode 6:** Improving metadata and discoverability (`06-metadata`)
**Episode 7:** Wrap-up and reflection

Each episode builds on the previous one, following the branch progression in the demo repository.

::::::::::::::::::::::::::::::::::::: keypoints

- Research software often fails due to the "works on my machine" trap
- The bus factor problem means knowledge is lost when people leave
- Software citations using URLs break over time; DOIs are permanent and version-specific
- FAIR4RS principles (Findable, Accessible, Interoperable, Reusable) provide a framework
- Making software FAIR requires: LICENSE, environment files, citation metadata, and documentation
- A CITATION.cff file is the simplest way to make software citable
- The demo repository progresses through branches: 01-start → 06-metadata

::::::::::::::::::::::::::::::::::::::::::::::::
