---
title: "Sharing Research Software Effectively"
teaching: 12
exercises: 10
---

:::::::::::::::::::::::::::::::::::::: questions

- Why share research software in a public repository?
- What are the minimum elements that make a repository useful and discoverable?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Describe why public repositories increase visibility and credit for research software.
- Identify the essential components of a well-structured repository.
- Recognize the “before” state of the demo repository used throughout the lesson.
- **Supporting others:** triage an unfamiliar repository and name its single highest-value next step.

::::::::::::::::::::::::::::::::::::::::::::::::

## Introduction

Every archivist knows the unprocessed accession: boxes that made it into the building but not into the collection, technically held, practically invisible. Most research software on GitHub is in exactly that state. It is public, which is not the same as shared. No license, no citation information, no description a stranger could act on. An open repository with none of those is like leaving the reading room unlocked and calling it access: people can technically get in, and nothing helps them once they do.

Publishing in a public repository is still the right first step. It is what makes finding, understanding, reusing, and citing your work possible, and it is where visibility and formal credit begin. This episode is the collection assessment: look at a bare repository the way you would look at a new accession, and learn to name the one addition that would move it from "present" to "usable."

In this lesson, we start with a minimal example repository (your fork's `main` branch, the starting state). As you progress through the episodes, you will progressively refine it until it is citable, discoverable, and ready for reuse.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

**Why this episode matters to researchers:** reviewers now ask "where is the code," and a bare repo is a worse answer than it looks, because it invites follow-up questions it cannot answer. The four-question triage below is also your own take-home tool; it is the five-minute consultation format the whole lesson builds toward.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

### Preparing to teach this episode

Teach from **your own fork** of the demo repository, exactly as learners do, so everyone is looking at the same starting state. See the **Instructor Notes** for the one-time fork setup. During the lesson you demonstrate each step live in your fork's web interface and learners mirror it in theirs.

To show the "before and after" contrast, use the branch dropdown in the browser:

- **Before** — the `main` branch: a sparse, hard-to-reuse project
- **After** — the `after-metadata` branch: a clear, licensed, citable, well-documented project

Use **progressive disclosure**: show only the top-level file listing first, then open individual files as you discuss them. No terminal or `git checkout` is needed; the reference branches are there to view and compare against, not to build on.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

## The Starting Point

Open your fork and look at the **"before" state** on the `main` branch:

```bash
software-demo/
├── README.md
├── requirements.txt
└── src/
    └── analysis.py
```

This repository intentionally *lacks* many elements of good research software practice.  
By the end of the lesson, it will include licensing, citation metadata, improved discoverability information, and versioning.

::::::::::::::::::::::::::::::::::::: callout

### Supporting others

Scanning a repository the way we just did is itself a core consultation skill. When a researcher brings you their repo, you are doing a fast triage, not a full code review, any more than a reference interview is a dissertation defense. A useful first pass asks four questions in order:

- **Rights:** is there a license? Can this legally be reused at all?
- **Credit:** can a stranger tell who made it and how to cite it?
- **Runnable:** is there any record of what it takes to run (dependencies, environment)?
- **Findable:** would anyone outside the lab ever discover it?

The goal is to name the **single highest-value next step**, not to fix everything. Most repos need one or two changes to go from unusable to useful, and your value is helping the researcher see which one. That ordering is the whole skill, and it is one this audience already has from appraising every other kind of material.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: challenge

## Challenge 1: What Makes a Repository Reusable?

Could you think about the last time you tried to use someone else's code?

If you have a public GitHub repository, open it now. If not, visit a repository from your field that you've used or seen cited.

Check for these elements:

- [ ] README explaining purpose and usage
- [ ] License file
- [ ] Clear file organization  
- [ ] Installation/usage instructions
- [ ] Citation information

Which of these elements help most? Which would you add to your own work first?

:::::::::::::::::::::::: solution

Useful elements commonly include:

- README with context and usage  
- a clear file structure  
- license information  
- installation instructions  
- dependencies or environment files  
- contributors or authorship information  

Missing pieces often include absent documentation, unclear purpose, or no license.

:::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: callout

### Learn More About Effective READMEs

Want to dive deeper into README best practices?

- [Elegant READMEs](https://www.yegor256.com/2019/04/23/elegant-readme.html) - practical guide on writing clear, maintainable documentation
- [Awesome README][awesome-readme] - curated examples from real projects

Full references available on the [Reference page](../learners/reference.md#references).

::::::::::::::::::::::::::::::::::::::::::::::::


::::::::::::::::::::::::::::::::::::: challenge

## Challenge 2: Inventory the Demo Repository

Open the **software-demo** repository you downloaded.

Spend 2 minutes exploring, then answer:

- Could you run this code today? What's missing?
- Would you know who created it or how to credit them?
- Could you legally reuse or modify it?

We'll address these gaps together over the next episodes.

:::::::::::::::::::::::: solution

Learners may observe:

- README is minimal  
- No license  
- No citation file  
- No metadata to support discoverability  
- Environment file exists but is not yet introduced  

These gaps will be filled across subsequent episodes.

:::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::


::::::::::::::::::::::::::::::::::::: keypoints

- Public repositories increase findability, reuse potential, and citation credit.  
- A well-structured repository lowers the barrier for others to understand your work.  
- The lesson begins with a minimal “before” repository that will be incrementally improved.

::::::::::::::::::::::::::::::::::::::::::::::::

