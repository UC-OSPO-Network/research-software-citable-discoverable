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

Your README is the first page many users see. A structured, predictable README lowers the barrier to entry. The [UC OSPO README Guide](https://ucospo.net/oss-resources/template-guides/readme-guide/) recommends including these standard sections:

- **About/Overview**: What does this software do?
- **Features**: Key capabilities (e.g., "Reproducible environment," "Citable").
- **Getting Started**: Prerequisites and installation steps.
- **Usage**: A minimal example of how to run the code.
- **License**: Explicitly stating the license.
- **Contact**: How to reach the maintainers.

It is also critical to link your metadata:
- Add a **badge** for your Zenodo DOI.
- Link to your `CITATION.cff` file.

Adopting a standard structure like the [OSPO README Template](https://github.com/UC-OSPO-Network/templates/blob/main/README.md) ensures researchers can quickly evaluate and use your software.

## Community Health Files

Beyond technical metadata, files that describe *how* to interact with your project are crucial for its long-term sustainability and "discoverability" as a welcoming project.

### Contributing Guide
The `CONTRIBUTING.md` file is the first place new contributors look to see if a project is open to participation. Following the [UC OSPO Contributing Guide](https://ucospo.net/oss-resources/template-guides/contributing-guide/) ensures you cover essential ground:

- **Welcome Statement**: Explicitly inviting others to join.
- **Ways to Contribute**: Identifying non-code contributions (e.g., documentation, testing, issues).
- **Setup Instructions**: How to get the project running locally.
- **Pull Request Lifecycle**: What happens after a contribution is submitted.

### Code of Conduct
A `CODE_OF_CONDUCT.md` establishes behavioral expectations and ensures a safe, inclusive environment for all researchers. The [UC OSPO Code of Conduct Guide](https://ucospo.net/oss-resources/template-guides/code-of-conduct-guide/) recommends using a standard like the **Contributor Covenant**.

Adding these files to your repository root helps GitHub display a "Community Standards" checklist in your insights, signaling that your project is professionally managed and ready for collaboration. You can find ready-to-use versions in the [UC OSPO Template Repository](https://github.com/UC-OSPO-Network/templates).

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
