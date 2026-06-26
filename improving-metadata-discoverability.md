---
title: "Improving Metadata and Discoverability"
teaching: 25
exercises: 12
---

:::::::::::::::::::::::::::::::::::::: questions

- What metadata makes research software easier to find and reuse?
- How can we improve discoverability across GitHub, Zenodo, and scholarly indexes?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Identify key metadata elements that increase visibility and reuse.
- Enhance discoverability using GitHub features and Zenodo metadata fields.
- Connect metadata across CITATION.cff, GitHub, and your DOI record for consistency.
- **Supporting others:** audit a repository's metadata and prioritize the single highest-value fix.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: callout

### Episode Branch: `05-release` → `06-metadata`

This episode completes the repository with full documentation and metadata.

**Starting point:**
```bash
git checkout 05-release  # Start with release tagged
```

**After this episode:**
```bash
git checkout 06-metadata # See the complete FAIR repository
```

**Catch-up point:** If joining now, run `git checkout 05-release`

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

## Writing an Effective README

### The 30-Second Rule

**Your README is your software's front door.**

If users can't understand what it does, how to install it, or how to use it in **30 seconds** → they leave.

### README Structure (7 Essential Sections)

The [UC OSPO README Guide](https://ucospo.net/oss-resources/template-guides/readme-guide/) *(UC-specific)* recommends this standard structure:

1. **About**: What does this do? (2-3 sentences)
2. **Features**: Key capabilities (Reproducible, Citable, Open source)
3. **Getting Started**: Prerequisites + installation
4. **Usage**: Minimal working example
5. **Citation**: Link to CITATION.cff or DOI
6. **License**: Explicitly state terms (e.g., "BSD-3 - see LICENSE file")
7. **Contact**: How to get help

### Before vs. After Example

**❌ Before (Branch: 01-start)**

```markdown
# Biodiversity Analysis Toolkit

A script.

No description. No instructions. No citation. Unusable.
```

**✅ After (Branch: 06-metadata)**

```markdown
# Biodiversity Analysis Toolkit

Analysis tools for biodiversity research.

## Features
- Reproducible (pixi) • Citable (DOI) • Open source (BSD-3)

## Getting Started
```bash
pixi install
pixi run python src/analysis.py
```

## Citation
[zenodo.org/badge/DOI/10.5281/zenodo.123456.svg]

License: BDS-3 - see LICENSE file
```

**Professional. Citable. Usable.**

### README Best Practices: 5 Quick Tips

1. **Clear description** → Answer "What problem does this solve?"
2. **Show, don't tell** → Include code examples
3. **Link metadata** → Add DOI badge, link CITATION.cff
4. **Keep updated** → Refresh when features change
5. **Use a template** → [UC OSPO Templates](https://github.com/UC-OSPO-Network/templates) *(UC-specific)* or [Awesome README](https://github.com/matiassingers/awesome-readme)

**Every tip maps to FAIR principles.**

::::::::::::::::::::::::::::::::::::: callout

### Don't Reinvent the Wheel

- [Awesome README](https://github.com/matiassingers/awesome-readme): curated examples from real open-source projects
- [UC OSPO README Template](https://github.com/UC-OSPO-Network/templates/blob/main/README.md) *(UC-specific)*: ready-to-use template

::::::::::::::::::::::::::::::::::::::::::::::::

It is also critical to link your metadata:

- Add a **badge** for your Zenodo DOI
- Link to your `CITATION.cff` file

A structured README ensures researchers can quickly evaluate and use your software.

## Beyond the README: Community Health Files

Beyond technical metadata, files that describe *how* to interact with your project matter for long-term sustainability and for signaling that the project is welcoming.

GitHub looks for these files:

### CONTRIBUTING.md → How to contribute
The `CONTRIBUTING.md` file is the first place new contributors look to see if a project is open to participation. Following a contributing guide template (the [UC OSPO Contributing Guide](https://ucospo.net/oss-resources/template-guides/contributing-guide/) *(UC-specific)* is one good example) ensures you cover essential ground:

- **Welcome Statement**: Explicitly inviting others to join
- **Ways to Contribute**: Identifying non-code contributions (e.g., documentation, testing, issues)
- **Setup Instructions**: How to get the project running locally
- **Pull Request Lifecycle**: What happens after a contribution is submitted

### CODE_OF_CONDUCT.md → Behavioral standards
A `CODE_OF_CONDUCT.md` establishes behavioral expectations and ensures a safe, inclusive environment for all researchers. The standard choice is the [Contributor Covenant](https://www.contributor-covenant.org/), widely adopted across open-source projects. *(See also: [UC OSPO Code of Conduct Guide](https://ucospo.net/oss-resources/template-guides/code-of-conduct-guide/) *(UC-specific)*)*

### CHANGELOG.md → Version history
A `CHANGELOG.md` documents what changed between versions. This helps users understand:

- What's new in each release
- What bugs were fixed
- What breaking changes occurred
- How the software evolved over time

**Why it matters:** Signals your project is professionally managed and welcoming.

::::::::::::::::::::::::::::::::::::: callout

### Templates Available

- [Choose a License](https://choosealicense.com/): license selection
- [Contributor Covenant](https://www.contributor-covenant.org/): code of conduct template
- [Keep a Changelog](https://keepachangelog.com/): changelog format guide
- [UC OSPO Template Repository](https://github.com/UC-OSPO-Network/templates) *(UC-specific)*: ready-to-use CONTRIBUTING.md, CODE_OF_CONDUCT.md, CHANGELOG.md, README.md

::::::::::::::::::::::::::::::::::::::::::::::::

Adding these files to your repository root helps GitHub display a "Community Standards" checklist in your insights, signaling that your project is professionally managed and ready for collaboration.

---

## Institutional Repositories: Dataverse, Dryad, and Zenodo

Many institutions use repositories like **Dataverse** or **Dryad** for research data deposits. These are good for datasets but have limited software support; they don't integrate with GitHub releases or mint version-specific DOIs automatically.

For software, **Zenodo is the recommended deposit location** because:

- It integrates directly with GitHub to archive each release automatically
- It mints a DOI for every version
- Records flow into DataCite and are indexed by Google Scholar and library catalogs
- It's free, CERN-operated, and widely recognized by journals and funders

::::::::::::::::::::::::::::::::::::: callout

### What about your institution's repository?

If your institution requires or prefers a local IR (Dataverse instance, DSpace, etc.), you can deposit there *in addition* to Zenodo, not instead of it. Use the Zenodo DOI as the persistent identifier in your CITATION.cff, and note the institutional deposit in your README or Zenodo metadata as a related work.

Some funders (NSF, NIH, Wellcome Trust) have specific deposit requirements. Check your award terms before deciding where the authoritative copy lives.

::::::::::::::::::::::::::::::::::::::::::::::::

## Zenodo and DOI metadata

When you deposit software on Zenodo, the record flows into:

- **DataCite**: the DOI registration agency for research data and software; DataCite records are harvested by library catalogs, institutional discovery systems, and tools like [OpenAlex](https://openalex.org/) and [Scholix](http://www.scholix.org/)
- **Google Scholar**: picks up Zenodo records with structured metadata
- **Library catalogs**: many discovery layers (EBSCO, Ex Libris Primo, OCLC WorldCat) harvest DataCite metadata, meaning your software can appear in a library search alongside journal articles
- **Domain repositories** that harvest DOIs

What this means practically: the metadata you put into your Zenodo record is the metadata that librarians and discovery systems see. Thin metadata (no description, no keywords, no author ORCIDs) limits findability even if the DOI is valid.

Add or refine:

- authors + ORCIDs  
- keywords (discipline tags, method tags, language tags; use the same ones you add to GitHub Topics)
- related works (link to the paper that used this software, the dataset it analyzes, the grant that funded it)
- funding references  
- version notes  
- a readable software description (2-3 sentences; think abstract, not README)

Your goal is *context*. A researcher or a librarian helping a researcher should be able to read the Zenodo record and decide in 30 seconds whether this software is relevant to them.

::::::::::::::::::::::::::::::::::::: callout

### Supporting others

Metadata work is where libraries already have deep expertise, so this is the most natural consultation territory in the lesson. The trap is trying to perfect everything at once. In practice you are doing triage: identifying the **single highest-value fix** for the time the researcher actually has.

A rough priority order when a record or repo is thin:

1. A readable **description** (most discovery systems show this first; an empty one is the biggest single loss).
2. **Author ORCIDs**, so credit attaches to people, not just names.
3. **Keywords** reused consistently across GitHub Topics, `CITATION.cff`, and Zenodo.
4. **Related works** linking the software to its paper, dataset, and grant.

Because this metadata is harvested by DataCite, library discovery layers, and Google Scholar, the librarian framing is concrete: thin metadata means the software never surfaces in the catalog alongside the article. You are not just tidying a record, you are deciding whether it is findable at all.

::::::::::::::::::::::::::::::::::::::::::::::::

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
