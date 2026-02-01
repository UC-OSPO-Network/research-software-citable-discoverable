---
title: "Sharing Research Software Effectively"
teaching: 10
exercises: 5
---

:::::::::::::::::::::::::::::::::::::: questions

- Why share research software in a public repository?
- What are the minimum elements that make a repository useful and discoverable?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Describe why public repositories increase visibility and credit for research software.
- Identify the essential components of a well-structured repository.
- Recognize the “before” state of the demo repository used throughout the lesson.

::::::::::::::::::::::::::::::::::::::::::::::::

## Introduction

Publishing your research software in a public repository helps others find, understand, reuse, and cite your work. This visibility strengthens the transparency of your research process and increases the likelihood that you receive formal credit.

In this lesson, we start with a minimal example repository. As you progress through the episodes, you will progressively refine them until they are citable, discoverable, and ready for reuse.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

### Preparing the Demo Repository
To demonstrate the "before and after" states of research software, use the provided automation script:

1.  **Locate the script**: `create_demo_repo.sh` is in the root of the lesson repository.
2.  **Run the script**: Move it to a non-git directory (e.g., `~/projects/`) and run `bash create_demo_repo.sh`.
3.  **Progression**: The script creates branches (`01-start` through `06-metadata`). You can `git checkout` these branches during the lesson to show incremental progress.
4.  **GitHub Hosting**: We recommend pushing this generated repository to your GitHub account before the workshop so learners can follow along online. Commands for pushing are printed at the end of the script.

Use **progressive disclosure** by showing only the top-level structure of the demo repository first.  
If learners are new to GitHub, you may display two contrasting examples:  
- a sparse, hard-to-understand repo (checkout branch `01-start`)
- a clear, well-documented repo (checkout branch `06-metadata`)

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

## The Starting Point

Learners will download or clone the **“before” state** of the example repository:

```bash
software-demo/
├── README.md
├── src/
│ └── analysis.py
└── environment.toml #(pixi environment file)
```

This repository intentionally *lacks* many elements of good research software practice.  
By the end of the lesson, it will include licensing, citation metadata, improved discoverability information, and versioning.


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

## Learn More About Effective READMEs

Want to dive deeper into README best practices?

- [Elegant READMEs](https://www.yegor256.com/2019/04/23/elegant-readme.html) - practical guide on writing clear, maintainable documentation
- [Awesome README](https://github.com/matiassingers/awesome-readme) - curated examples from real projects

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

