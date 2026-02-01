---
title: "Improving Metadata and Discoverability"
teaching: 10
exercises: 5
---

:::::::::::::::::::::::::::::::::::::: questions

- What metadata makes research software easier to find and reuse?
- How can we improve discoverability across GitHub, Zenodo, and scholarly indexes?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Identify key metadata elements that increase visibility and reuse.
- Enhance discoverability using GitHub features and Zenodo metadata fields.
- Connect metadata across CITATION.cff, GitHub, and your DOI record for consistency.

::::::::::::::::::::::::::::::::::::::::::::::::

## Introduction

Clear metadata helps others understand, evaluate, and *find* your software.  
It also reduces the cognitive effort for future users because essential information is organized and easy to locate.

In earlier episodes, you created:

- a **CITATION.cff** file  
- a **license**  
- a **repository structure**  
- a **Zenodo record with a DOI**

This episode brings these together. You will describe your project in consistent ways across platforms so search engines, citation tools, and colleagues can discover it.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

Encourage learners to compare well-described repositories with sparse ones.  
Highlight how even small metadata additions increase visibility in GitHub search, Zenodo indexing, and DataCite services.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

## What counts as useful metadata?

Good metadata answers predictable questions with minimal effort from the reader:

- **What is this software?** (short description or abstract)
- **Who made it?** (authors, ORCIDs)
- **How do I cite it?** (CITATION.cff + DOI)
- **What domain is it for?** (keywords)
- **What else does it relate to?**  
  - related article DOI  
  - datasets used  
  - funding source  
  - project website  

You may add these in multiple places, but they should remain consistent.


## GitHub-specific discoverability features

GitHub uses structured metadata to improve search ranking and cross-repository linking.

**Add these items in `Settings → General → Topics`:**

- discipline tags (e.g., `geospatial`, `text-mining`, `materials-science`)
- methodological tags (`simulation`, `visualization`, `machine-learning`)
- language tags (`python`, `r`)

**Improve your README:**

Your README is the first page many users see. Include:

- purpose statement  
- short example of usage  
- link to your CITATION.cff  
- link to your Zenodo DOI  
- link to your documentation  

This connects your metadata across platforms.

## Community Health Files

Beyond technical metadata, files that describe *how* to interact with your project are crucial for its long-term health and "discoverability" as a welcoming project.

**CONTRIBUTING.md**: Explains how others can report bugs, suggest features, or submit code.
**CODE_OF_CONDUCT.md**: Sets expectations for behavior to ensure a safe and welcoming environment.

UC OSPO provides standard templates for these files:
- [UC OSPO Contributing Template](https://github.com/UC-OSPO-Network/templates/blob/main/CONTRIBUTING.md)
- [UC OSPO Code of Conduct Template](https://github.com/UC-OSPO-Network/templates/blob/main/CODE_OF_CONDUCT.md)

Adding these files to your repository root helps GitHub display a "Community Standards" checklist in your insights.

---

## Zenodo and DOI metadata

Zenodo metadata flows into:

- **DataCite**  
- Google Scholar  
- library catalogs  
- domain repositories that harvest DOIs  

Add or refine:

- authors + ORCIDs  
- keywords  
- related works (DOIs, URLs)  
- funding references  
- version notes  
- a readable software description  

Your goal is *context*. This helps researchers decide quickly whether to reuse your work.

::::::::::::::::::::::::::::::::::::: challenge

## Challenge 1: Identify Useful Metadata

List three elements you would add to improve a repository’s discoverability.

:::::::::::::::::::::::: solution

Examples:

- ORCID IDs for each author  
- Keywords describing the domain and function  
- A link to a related article or dataset  
- A project description in your README  
- Funding acknowledgment  

:::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::: challenge

## Challenge 2: Improve Your Zenodo Record

After generating a DOI in the earlier episode, expand its metadata:

:::::::::::::::::::::::: solution

1. Open your Zenodo record.  
2. Select “Edit.”  
3. Add:  
   - keywords  
   - authors and ORCIDs  
   - description  
   - related publication DOIs  
   - funding  
4. Save and publish the updated record.  

:::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: keypoints

- Metadata increases discoverability in GitHub, Zenodo, and scholarly indexes.  
- Use consistent information across CITATION.cff, README, GitHub topics, and Zenodo.  
- Thoughtful metadata supports FAIR principles and helps others reuse your software.

::::::::::::::::::::::::::::::::::::::::::::::::
