---
site: sandpaper::sandpaper_site
---

![Diagram titled "Core Elements of Citable and Discoverable Research Software": six
hexagons in two groups. Blue (Citable): Release and DOI, CITATION.cff, and License.
Green (Discoverable): Metadata and Topics, README and Docs, and Public Archive.](episodes/fig/research-software-hex.svg){
alt='Diagram titled "Core Elements of Citable and Discoverable Research Software": six
hexagons in two groups. Blue (Citable): Release and DOI, CITATION.cff, and License.
Green (Discoverable): Metadata and Topics, README and Docs, and Public Archive.'
style='padding: 2%; max-width: 760px'}

## About This Lesson

This lesson teaches the practical steps that make research software **citable, discoverable, and reusable**: choosing an open-source license, adding a `CITATION.cff` file, minting a DOI with a versioned release, and improving the metadata that helps people find and credit the software. An optional final episode covers reproducible environments with pixi. Together these steps map to the FAIR principles for research software (FAIR4RS).

It is written first for **library, OSPO, and scholarly-communications staff** and other research-support professionals who help researchers make software count as a scholarly output. Each episode also carries a "Supporting others" thread for that consulting work. Researchers who write code and want to make it citable themselves will find the same steps apply directly to their own repositories.

Learners work in the browser, making small, high-value improvements to a real GitHub repository, and leave with both a citable project and a reusable way to advise others.

::::::::::::::::::::::::::::::::::::::::: callout

## How This Lesson Works

You'll work in your web browser, in your **own fork** of a small demo repository. Each episode adds one piece to your fork: a license, a citation file, a release with a DOI, then richer metadata. By the end you'll have a complete, citable repository you built yourself.

The upstream repository keeps a set of view-only **reference branches** (`after-license`, `after-citation`, `after-release`, `after-metadata`) showing the target state after each episode. If you fall behind or want to check your work, open the matching branch in GitHub's branch dropdown and compare.

The only episode that needs software installed on your computer is the **optional** pixi episode at the end. Everything else runs in the browser. See [Setup](learners/setup.md) to get ready.

::::::::::::::::::::::::::::::::::::::::::::::::::

## Learning Objectives

After completing this lesson, learners will be able to:

- explain why research software should be cited and attributed.
- add and validate a CITATION.cff file in a GitHub repository.
- choose and apply an appropriate open-source license.
- improve software discoverability through documentation and metadata.
- understand how packaging tools like pixi can support usability and reproducibility.
- describe how these practices support FAIR principles for research software.
- identify small, high-value improvements that increase the visibility and impact of their software.

:::::::::::::::::::::::::::::::::::::::::: prereq

## Prerequisites

For the core lesson you need only a **GitHub account** and a **web browser**. Before beginning, it helps to be able to:

- navigate GitHub in a web browser (view and edit files, open issues).
- recognize basic Git concepts such as commits and repositories — you will *not* run Git locally.
- edit plain-text files.

You don't need any prior experience with software packaging, metadata standards, or licensing.

The **optional** final episode on reproducible environments with pixi is the only part that requires software installed on your computer. See [Setup](learners/setup.md) for both tracks.

::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::: callout
## Acknowledgment

This lesson is derived from the *Building Better Research Software* curriculum, created by Sarah Gibson, Aman Goel, Toby Hodges, Sarah Jaffa, Kamilla Kopec-Harding, Aleksandra Nenadic, Colin Sauze, and Sarah Stevens.

A full citation and DOI for the original lesson appear on this lesson's [Cite This Lesson](index.html#citing) page, automatically generated from the repository's CITATION.cff file.

::::::::::::::::::::::::::::::::::::::::::::::::::
