---
title: "Adding a CITATION.cff File"
teaching: 15
exercises: 13
---

:::::::::::::::::::::::::::::::::::::: questions

- What is a CITATION.cff file and why does it matter?
- How does GitHub use CITATION.cff to generate ready-made citations?
- What minimal metadata should researchers include?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Explain the role of CITATION.cff in software citation.
- Create and customize a CITATION.cff file in a GitHub repository.
- Understand how the file connects to later steps like releases and DOIs.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: callout

### Episode Branch: `02-license` → `04-citation`

This episode adds a CITATION.cff file.

**Starting point:**
```bash
git checkout 02-license  # Start with LICENSE added
```

**After this episode:**
```bash
git checkout 04-citation # See the result with CITATION.cff added
```

**Catch-up point:** If joining now, run `git checkout 02-license`

*Note: the `04-citation` branch also contains pixi environment files from the optional reproducibility episode. You can ignore those files for now.*

::::::::::::::::::::::::::::::::::::::::::::::::

## Introduction

A **CITATION.cff** file is the simplest, most direct way to make your software citable.

It provides structured citation metadata that:

- tells others how to reference your work  
- allows GitHub to display a “**Cite this repository**” button  
- supports good scholarly practice and FAIR4RS principles  

You can create this file **before** releases or DOIs.  
If you later add a DOI or version tag, you can update the file at any time.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

Show learners what the citation panel looks like on a GitHub repository that already has a `CITATION.cff` file. This gives them a clear target and reduces cognitive load.

Reassure learners that a tiny file is fine. They can refine it later as their software matures.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

## What belongs in a CITATION.cff file?

A minimal file includes:

- **title** of the software  
- **authors** (ORCID recommended if available)  
- **version** (optional at this stage)  
- **message** with basic instructions  

As your project grows, you can add:

- release versions  
- DOIs from Zenodo or another service  
- keywords  
- abstract  
- repository URLs  

Learners do not need to know the entire schema.  
The point is to start small and publish useful metadata early.

::::::::::::::::::::::::::::::::::::: callout

### Why the CFF format works well

- human-readable  
- YAML-based  
- validated automatically by GitHub  
- supported by tools including Zotero, Zenodo, and reference managers  

::::::::::::::::::::::::::::::::::::::::::::::::

## How to Create a CITATION.cff File

You have two options:

### Option 1: Use cffinit (Recommended for beginners)

The CITATION.cff community provides a web-based wizard:

**Use cffinit:**

- Visit: <https://citation-file-format.github.io/cffinit/>
- Fill out the form with your software details
- Download the generated `CITATION.cff` file
- Add it to your repository root

**Benefits:**

- Interactive form guides you through required fields
- Validates your file automatically
- No need to memorize YAML syntax
- More information on CFF: <https://citation-file-format.github.io/>

### Option 2: Create it manually

If you prefer to write it yourself:

**Step 1: Create the file**

In the root of your repository:

```bash
touch CITATION.cff
```

**Step 2: Add minimal metadata**

Here's a complete example from the slides:

```yaml
cff-version: 1.2.0
message: "If you use this software, please cite it as below."
authors:
  - family-names: "Dennis"
    given-names: "Tim"
    orcid: "https://orcid.org/0000-0002-1234-5678"
title: "Biodiversity Analysis Toolkit"
version: 0.1.0
date-released: 2025-01-15
url: "https://github.com/jt14den/software-demo"
```

**GitHub creates a "Cite this repository" button automatically!**

If your software does not yet have version tags, you may omit the version field until Episode 4 when you create releases.

## Linking to a published paper

Many researchers want users to cite a journal article *alongside* or *instead of* the raw software repository. The `preferred-citation` field handles this: it tells GitHub, Zotero, and other tools which reference to show first.

```yaml
cff-version: 1.2.0
message: "If you use this software, please cite the paper below."
authors:
  - family-names: "Dennis"
    given-names: "Tim"
    orcid: "https://orcid.org/0000-0002-1234-5678"
title: "Biodiversity Analysis Toolkit"
version: 0.1.0
date-released: 2025-01-15
url: "https://github.com/jt14den/software-demo"
preferred-citation:
  type: article
  title: "Biodiversity Analysis at Scale: Methods and Software"
  authors:
    - family-names: "Dennis"
      given-names: "Tim"
  journal: "Journal of Open Source Software"
  year: 2025
  doi: "10.21105/joss.00000"
```

Without `preferred-citation`, GitHub shows the software repository citation by default. Adding it ensures that anyone clicking "Cite this repository" gets your paper's citation instead, which is usually what you want for impact tracking.

::::::::::::::::::::::::::::::::::::: callout

### No paper yet? Skip it.

Leave out `preferred-citation` if you don't have a published article. You can add it later. The rest of the file works fine without it.

::::::::::::::::::::::::::::::::::::::::::::::::

### Step 3: Commit and refresh

After you commit the file, GitHub:

- parses and validates it
- displays a “Cite this repository” panel
- provides download options (BibTeX, EndNote, CFF, APA)

This feature works even without a DOI.

::::::::::::::::::::::::::::::::::::::::: challenge
## Exercise 1: Identify missing metadata

Look at your repository (or the example repository provided with the lesson).

Reflect:

- What metadata is easy to add today?
- What might require input from collaborators?
- What do you prefer to add later?

Share one observation.

:::::::::::::::::::::::: solution

Typical missing pieces include:

- ORCID IDs
- complete contributor list
- description or abstract
- license information
- DOI (added later if desired)

:::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::: challenge

## Exercise 2: Add a CITATION.cff file

Steps:

1. Create CITATION.cff.
2. Add at least: title, author(s), and message.
3. Commit and refresh to see GitHub’s citation panel.

:::::::::::::::::::::::: solution

A valid minimal example:

```yaml
cff-version: 1.2.0
title: ExampleProject
message: "Please cite this software."
authors:
  - given-names: Alex
    family-names: Researcher
```
:::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::keypoints 
- A CITATION.cff file is the foundation of software citation.
- It can be added before releases, DOIs, or version tags.
- GitHub displays machine-readable citations automatically when this file is present.
- Start simple and expand over time as your project develops.
::::::::::::::::::::::::::::::::::::::::::::::::
