---
title: "Making Your Software Citable"
teaching: 6
exercises: 26
---

:::::::::::::::::::::::::::::::::::::: questions

- What makes software citable?
- How do releases and DOIs strengthen software citation?
- How do I create a release and, optionally, mint a DOI?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Describe why software citation matters in research.
- Create a versioned release in GitHub.
- Understand when and why to mint a DOI with Zenodo.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: callout

### Episode Branch: `04-citation` → `05-release`

This episode creates a release and tag.

**Starting point:**
```bash
git checkout 04-citation # Start with LICENSE and CITATION.cff
```

**After this episode:**
```bash
git checkout 05-release  # See the result with v0.1.0 tag
```

**Catch-up point:** If joining now, run `git checkout 04-citation`

::::::::::::::::::::::::::::::::::::::::::::::::

## Introduction

Software is a research product.  
Like articles and datasets, it should be **cited** so others can acknowledge your work, find the exact version you used, and understand how your software contributed to their results.

Your software becomes **citable** as soon as it includes:

1. **Structured citation metadata**, such as a `CITATION.cff` file.  
2. **A public location where the code is available**.  
3. **A stable version** someone can reference.

A DOI is *optional* but valuable. It strengthens citability by giving each version a persistent identifier.

So far in this lesson, you have:

- shared a public repository  
- added a license  
- added a `CITATION.cff` file  

In this episode, you will create a **GitHub release** and learn how DOIs fit into software citation workflows.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

Some learners may feel anxious about creating a DOI.  
Reassure them that:

- a DOI is not required for citability  
- Zenodo is free and widely used  
- they can watch the demo and complete the steps later

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

## What Makes Software Citable?

Software is citable when:

- it includes authorship and version information  
- the referenced version is stable  
- others can access the code  

A DOI **enhances** these qualities, but does not define them.

::::::::::::::::::::::::::::::::::::: callout

### Why add a DOI?

A DOI is helpful for:

- increasing visibility and discoverability  
- long-term persistence  
- citing *exact* versions  
- meeting journal and funder expectations  

But the core citability comes from your metadata and release process.

::::::::::::::::::::::::::::::::::::::::::::::::

## Create a Release in GitHub

A release captures a specific version of your software.  
It is the snapshot that others can cite.

### Steps

1. Open your GitHub repository.  
2. Select **Releases → Draft a new release**.  
3. Create a tag such as `v0.1.0`.  
4. Add release notes summarizing changes.  
5. Publish the release.

Your `CITATION.cff` file will automatically reference this tagged version unless you specify otherwise.

::::::::::::::::::::::::::::::::::::: callout

### Semantic Versioning (SemVer)

You might wonder why we chose `v0.1.0`. This follows **Semantic Versioning** (`MAJOR.MINOR.PATCH`):

- **MAJOR** version when you make incompatible API changes (e.g., `1.0.0`)
- **MINOR** version when you add functionality in a backward compatible manner (e.g., `0.1.0` -> `0.2.0`)
- **PATCH** version when you make backward compatible bug fixes (e.g., `0.1.1`)

Starting with `0.x.x` indicates your software is in initial development and the API is not yet stable.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: challenge

## Challenge 1: What belongs in a release?

Take one minute to reflect:

- What information would help a future you understand what changed in this version?

:::::::::::::::::::::::: solution

Useful release notes include:

- what changed  
- what was added or removed  
- what bugs were fixed  
- what might break for users  
- anything important about reproducibility  

Clear release notes help both people and tools interpret your software’s evolution.

:::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::

## Minting a DOI with Zenodo Sandbox

To practice minting a DOI without polluting the permanent scholarly record, we will use **Zenodo Sandbox**. It works exactly like the real Zenodo but is for testing.

### The Complete 6-Step Workflow

**Step 1: Log in to Zenodo with GitHub**

- Visit <https://sandbox.zenodo.org>
- Click "Log in with GitHub"
- Authorize Zenodo to access your repositories

**Step 2: Enable your repository (toggle ON)**

- Go to **Settings → GitHub** in Zenodo Sandbox
- Find your repository in the list
- Toggle the switch to **ON** (green)
- This tells Zenodo to watch for new releases

**Step 3: Create GitHub Release (tag v1.0.0)**

- Go to your GitHub repository
- Click **Releases → Draft a new release**
- Create a tag: `v1.0.0`
- Add release notes describing what's in this version
- Click **Publish release**

**Step 4: Zenodo auto-archives and mints DOI**

- Zenodo automatically detects your new release
- Creates an archived snapshot
- Assigns a permanent DOI
- Wait a few minutes for processing

**Step 5: Add DOI badge to your README**

- Copy the DOI badge from your Zenodo record
- Add it to the top of your README:
```markdown
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.123456.svg)](https://doi.org/10.5281/zenodo.123456)
```

**Step 6: Update your CFF file with your DOI**

- Add the DOI to your `CITATION.cff`:
```yaml
doi: 10.5281/zenodo.123456
```

**Result:** You now have LICENSE, CITATION.cff, and DOI.

::::::::::::::::::::::::::::::::::::: callout

### Now You Have Everything

✅ **F - Findable:** Added DOI, CITATION.cff, rich metadata
✅ **A - Accessible:** Public GitHub, archived on Zenodo
✅ **I - Interoperable:** Standard formats (YAML, CFF)
✅ **R - Reusable:** LICENSE (BSD-3), README with setup

::::::::::::::::::::::::::::::::::::::::::::::::

**Even if GitHub disappears, your DOI still works.**

::::::::::::::::::::::::::::::::::::: callout

### Going further: Software Heritage

Zenodo archives a snapshot of your code at release time. [Software Heritage](https://www.softwareheritage.org/) goes further: it continuously crawls GitHub, GitLab, and other forges and archives *everything*, assigning a **SWHID** (Software Heritage Identifier) to every file, directory, commit, and release.

A SWHID looks like this:

```
swh:1:rel:22ece559cc7cc2364edc5e5593d63ae8bd229f9f
```

It points to an exact, immutable snapshot that survives forge closures (Gitorious shut down in 2015; Google Code in 2016, both making thousands of repos unreachable). Your Zenodo DOI is the right identifier for citation; a SWHID is the long-term preservation record.

**To find and record your SWHID:**

1. Go to <https://archive.softwareheritage.org/>
2. Paste your GitHub repository URL into the search box
3. If your repo is already archived, copy the SWHID for your release
4. If it hasn't been crawled yet, click **Save code now** to trigger immediate archival
5. Once archived, add the SWHID to your `CITATION.cff`:

```yaml
repository-artifact: "swh:1:rel:22ece559cc7cc2364edc5e5593d63ae8bd229f9f"
```

This approach is recommended in the 2026 *CODE Beyond FAIR* roadmap (Di Cosmo et al., *Scientific Data*).

::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

**Critical:** Ensure learners use **sandbox.zenodo.org**. Real DOIs cannot be deleted.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: challenge

## Challenge 2: Why are versioned DOIs important?

Why might it matter that a DOI points to a *specific* release rather than the whole project?

:::::::::::::::::::::::: solution

Versioned DOIs:

- support reproducibility by identifying an exact snapshot  
- prevent confusion when the software changes  
- allow users to cite precisely the version they used  
- support FAIR4RS and publisher guidelines  

:::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: keypoints

- Software is citable as soon as it includes a citation file and a stable version.  
- GitHub releases create versioned snapshots for citation.  
- DOIs are optional but strengthen discoverability, persistence, and reproducibility.  
- Zenodo can automatically mint a DOI for each GitHub release.

::::::::::::::::::::::::::::::::::::::::::::::::

