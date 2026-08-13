---
title: "Introduction: Software as a Citable Research Output"
teaching: 18
exercises: 7
---

:::::::::::::::::::::::::::::::::::::: questions

- Why is research software so often uncredited and hard to find?
- Why isn't a GitHub URL a real software citation?
- How do FAIR4RS principles make software citable and discoverable?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Explain why research software is often uncredited, unfindable, and at risk of loss
- Explain how FAIR4RS principles apply to research software
- Identify the key components that make software citable and discoverable
- Given a repository, name the single highest-value next fix for its citation, licensing, or discoverability
- **Supporting others:** explain to a researcher, in their terms, why these practices are worth the effort

::::::::::::::::::::::::::::::::::::::::::::::::

## Software Is the Missing Scholarly Output

A faculty member emails: *"The journal accepted my paper, but they want a citable version of the code, with a DOI. How do I do that?"*

Ten years ago the same question arrived about datasets, and the library built the answer. When a journal article is published, a whole system catches it: a persistent identifier, a catalog record, a citation format, a preservation copy. Datasets got that treatment over the last fifteen years. Software — the third thing modern research runs on — mostly hasn't. This lesson is about extending the system you already run, identifiers, metadata, preservation, and discoverability, to the one research output it has been quietly missing.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

**Why this framing works with researchers:** they do not adopt these practices because they are virtuous. They adopt them because journals are starting to require citable code deposits, because funders ask, and because a DOI turns invisible labor into a countable, citable output for their CV. Lead with that: this is credit they are currently leaving on the table.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: callout

### Who this lesson is for

You may be here for one of two reasons:

- **You write research software** and want to make your own code citable, reusable, and discoverable.
- **You support people who do** as a librarian, OSPO member, or research-support specialist who advises others on these practices.

The hands-on steps are the same either way. You will work through a real repository and add the pieces that make software FAIR. What differs is the judgment around each step. Throughout the lesson, watch for **Supporting others** boxes. They translate each technical step into the advising and consultation work that library and OSPO roles do, including when to refer a question rather than answer it yourself.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: callout

### New to any of these terms?

Every specialized term in this lesson — bus factor, FAIR4RS, DOI, CFF, ORCID, SWHID, and more — is defined on the [Reference / Glossary page](../learners/reference.md). Keep it open in a tab as you work.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: callout

### How common is this?

A 2021 analysis found that over **48% of research articles** mention software, but consistent sharing and citation remains the exception. Most of that software is either unavailable, uncredited, or impossible to reproduce.

::::::::::::::::::::::::::::::::::::::::::::::::

## A GitHub URL Isn't a Citation

Even when software runs perfectly, it usually doesn't get credited. Most researchers "cite" code by dropping a URL into a paper:

### The wrong way

> "We used the analysis script from https://github.com/UC-OSPO-Network/software-demo"

**Problems:**

- URLs break (link rot)
- No version specified (which run of the code produced which result?)
- No formal credit; the author's name isn't even visible
- Cannot appear in citation metrics

A URL is a shelf location, not a catalog record. Citing code this way is like citing a book as "third shelf, Powell Library reading room." It tells you where the thing sat on one particular day. Move the book, close the room, and the reference is dead.

**This isn't hypothetical. Forges close.**

- **Gitorious** shut down in 2015, making thousands of projects unreachable overnight
- **Google Code** shut down in 2016, same result
- A username change, a repo rename, or a deleted account breaks any URL-based citation just as completely

### The right way

> Dennis, T., Phan, L., Otsuji, R., & Padilla, K. (2026). *Biodiversity Analysis Toolkit* (v0.1.0). Zenodo. https://doi.org/10.5281/zenodo.123456

**Why this works:**

- DOI is permanent; it survives username changes, repo moves, even if GitHub disappears
- Version is explicit, so someone can reproduce the exact run
- Author gets formal credit and citation metrics

The fix is a `CITATION.cff` file and a DOI, both of which you'll create in this lesson.

::::::::::::::::::::::::::::::::::::: callout

### Software is the instrument

Nobody publishes results from a telescope without saying which telescope, which configuration, which night. Software is the instrument for computational work. "We used a script," with no version, license, or identifier, is a methods section with the instrument blacked out.

::::::::::::::::::::::::::::::::::::::::::::::::

## Software Has a Durability Problem

Credit is the first problem; survival is the second. Most research code lives on one laptop, in one person's head, under one person's account.

**The Bus Factor:** the number of people who need to be "hit by a bus" before a project becomes unmaintainable. For most research code the answer is one.

Restated for collections people: how many people would have to leave before this software becomes unrecoverable? A library would never accept a collection with a bus factor of one, and that is exactly what an un-deposited, un-documented repository is. Depositing a release into an archive like Zenodo is the software equivalent of accessioning: it moves the object out of a personal account and into a preservation system that outlives the individual.

::::::::::::::::::::::::::::::::::::: callout

### Why this matters for research

Research software that lives only on one person's machine:

- Cannot be verified or reproduced
- Cannot be built upon by others
- Cannot receive proper academic credit
- Disappears when that person moves on

::::::::::::::::::::::::::::::::::::::::::::::::

## Can Anyone Actually Run It?

There is a third problem, and it is the one researchers feel first: software that runs on its author's machine and nowhere else. With undocumented dependencies and an unstated language version, a colleague who tries to run it sees something like:

```output
$ python src/analysis.py

ModuleNotFoundError: No module named 'numpy'
```

For reuse to be *real*, someone has to be able to run the code, not just find and cite it. This is the reproducibility layer of the problem, and it is the focus of the **optional** environment episode at the end of the lesson. The core lesson makes software **citable and discoverable**; the optional episode makes it **runnable**.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

Most librarians and support staff in the room will not have hit this exact error themselves, so don't lean on it as a shared war story. Frame it instead as the barrier researchers describe when code "doesn't work," and flag that the mechanics live in the optional pixi episode, so a citation-focused workshop can acknowledge the problem and move on.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

## The Fix: FAIR4RS Principles

The solution is to apply **FAIR Principles for Research Software (FAIR4RS)**:

**F - Findable:** Software and metadata are easy to discover
→ DOI, CITATION.cff, metadata

**A - Accessible:** Retrievable via standard protocols
→ Public GitHub, archived on Zenodo

**I - Interoperable:** Uses standard metadata formats and documented dependencies so people and tools can interpret the software
→ Standard formats, documented dependencies

**R - Reusable:** Can be executed AND modified
→ LICENSE, README, environment files

::::::::::::::::::::::::::::::::::::: instructor

### Keep FAIR4RS light here

Treat this as a preview, not a lecture. Learners will understand Findable, Accessible, Interoperable, and Reusable much better *after* they create the license, citation metadata, DOI, and README metadata. Name the four principles, point ahead to where each gets built, and move on.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: checklist

### What You're Doing TODAY

In this workshop, you will turn a bare research repository into a citable, discoverable software project by adding:

- ✅ **License** — so others can legally reuse your work
- ✅ **Citation (CITATION.cff + DOI)** — so you get academic credit
- ✅ **README & metadata** — so people can find and understand it
- ✅ **Environment** *(optional)* — so it also runs on any machine

::::::::::::::::::::::::::::::::::::::::::::::::

## What "Done Right" Looks Like

### The "Before" State (`main`)

Open your fork of the demo repository. Its `main` branch is the starting state:

- ❌ No LICENSE
- ❌ No citation information
- ❌ No DOI
- ❌ Minimal README
- ❌ No community or metadata files

### The "After" State (`after-metadata`)

In the branch dropdown, switch to the [`after-metadata` reference branch][branch-after-metadata] to see the finished repository:

- ✅ **LICENSE** (BSD-3-Clause)
- ✅ **CITATION.cff** (citation metadata)
- ✅ **README.md** (complete documentation)
- ✅ **CONTRIBUTING.md** (contribution guidelines)
- ✅ **CODE_OF_CONDUCT.md** (community standards)
- ✅ **.zenodo.json** (Zenodo metadata)
- ✅ DOI badge in README

A documented, reproducible **environment** is the one FAIR piece not shown here. It's covered in the optional pixi episode and lives on the [`optional-pixi` branch][branch-optional-pixi].

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

## Challenge: Who Gets Credit?

You created a Python script used to generate results in a collaborative paper. The paper cites the dataset but not the script. What's missing, and what would a proper software citation look like?

:::::::::::::::::::::::: solution

The script should be citable as a distinct research output. Without citation metadata or a DOI, the software contribution goes unrecognized and nobody can find or reproduce the exact version used.

A proper citation would include: author(s), software title, version, repository or archive URL, and a persistent identifier (DOI). A `CITATION.cff` file in the repository provides all of this automatically.

:::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: challenge

## Challenge 2: Reflect on a Repository

Think about a repository you've written, inherited, or been asked about:

1. If someone wanted to cite it in a paper, how would they do it today?
2. If the author moved to a new institution, could you still find and access it?
3. Could someone else run it on their machine? What would they need?

Share one challenge you've seen with software citation, sharing, or reuse.

:::::::::::::::::::::::: solution

Common gaps include:

- No citation information available (no CITATION.cff, no DOI)
- Missing LICENSE file (so others legally can't reuse it)
- The only copy lives in one personal account
- No documentation of dependencies or versions

All of these will be addressed in this lesson.

:::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::

## What We'll Build Together

Starting from the bare `main` state in your fork, you'll progressively add each component:

- **Episode 1:** Sharing research software (exploring the starting repository)
- **Episode 2:** Adding an open-source license
- **Episode 3:** Creating a CITATION.cff file
- **Episode 4:** Minting a DOI and creating releases
- **Episode 5:** Improving metadata and discoverability
- **Episode 6:** Managing environments with pixi *(optional, requires a local install)*
- **Episode 7:** Wrap-up and reflection

Each episode adds one piece to your fork's `main` branch. View-only reference branches ([`after-license`][branch-after-license], [`after-citation`][branch-after-citation], [`after-release`][branch-after-release], [`after-metadata`][branch-after-metadata]) let you check your work at any point.

**What's hands-on vs. what's a tour.** The core, do-it-yourself path is short: **add a LICENSE, add a CITATION.cff, create a release with a Zenodo DOI, and improve the README and topics.** Other things you'll meet along the way, such as Software Heritage, `.zenodo.json`, `CONTRIBUTING.md` and `CODE_OF_CONDUCT.md`, and the optional pixi environment episode, are worth knowing about but are extensions: read or watch them, and add them later when a project needs them.

::::::::::::::::::::::::::::::::::::: keypoints

- Software is a research output the scholarly system has mostly failed to catch: uncredited, hard to find, and easily lost
- A GitHub URL is not a citation: URLs rot, pin no version, and give no formal credit, while a DOI is permanent and version-specific
- Undeposited software has a "bus factor" problem, and forges do shut down, so durability requires archiving
- FAIR4RS principles (Findable, Accessible, Interoperable, Reusable) provide the framework
- Making software citable and discoverable centers on a LICENSE, a CITATION.cff file, a release with a DOI, and rich metadata
- Reproducible environments ("works on my machine") are the optional final layer
- You build up your own fork step by step; view-only reference branches show the target state at each stage

::::::::::::::::::::::::::::::::::::::::::::::::
