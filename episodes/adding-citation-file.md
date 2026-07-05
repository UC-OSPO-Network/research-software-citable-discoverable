---
title: "Adding a CITATION.cff File"
teaching: 18
exercises: 12
---

:::::::::::::::::::::::::::::::::::::: questions

- What is a CITATION.cff file and why does it matter?
- How does GitHub use CITATION.cff to generate ready-made citations?
- What minimal metadata should researchers include?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Explain the role of CITATION.cff in software citation.
- Create and customize a CITATION.cff file in a GitHub repository.
- Describe how the file connects to later steps like releases and DOIs.
- **Supporting others:** coach a researcher through a CITATION.cff and recognize when authorship is a referral, not a metadata fix.

::::::::::::::::::::::::::::::::::::::::::::::::

## Introduction

When someone wants to cite a book, nobody emails the author to ask how. The catalog record answers it. Software has lacked that record, so people improvise: they cite a URL, or the paper the code appeared in, or nothing. A **CITATION.cff** file is the catalog record for a repository, a short structured-metadata file that says exactly who to credit and how. Once it exists, GitHub grows a "Cite this repository" button, and the guesswork ends.

Every librarian has shown a student the "Cite" button on a database record and watched the relief. This is the same button, on code, and the researcher controls what it says. Without the file, everyone who wants to cite the software writes their own version of the reference, and the credit scatters across formats no index can reconcile.

A CITATION.cff file is the simplest, most direct way to make your software citable. It provides structured citation metadata that:

- tells others how to reference your work  
- allows GitHub to display a “**Cite this repository**” button  
- supports good scholarly practice and FAIR4RS principles  

You can create this file **before** releases or DOIs.  
If you later add a DOI or version tag, you can update the file at any time.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

Show learners what the citation panel looks like on a GitHub repository that already has a `CITATION.cff` file. This gives them a clear target and reduces cognitive load.

Reassure learners that a tiny file is fine. They can refine it later as their software matures.

**Why this episode matters to researchers:** this is the single highest-return step in the lesson. One small file, committed once, and every future citation of the software is correct, complete, and countable. It is also the step where a scholcomm professional can sit beside a researcher as the expert, because the hard part is metadata judgment, not code.

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

If you have ever edited a repository record, filled in a Dublin Core field, or touched frontmatter on a library website, you have done harder metadata work than this. The format is new to researchers; the thinking is native to library work. And the file compounds downstream: Zenodo reads it, Zotero reads it, and the citation travels with every clone and fork of the code, which a citation buried in a paper's methods section never does.

::::::::::::::::::::::::::::::::::::::::::::::::

## How to Create a CITATION.cff File

You will do this entirely in GitHub's web interface, in your fork. No terminal required. GitHub has this built in: name a new file `CITATION.cff` and it hands you a starter template to edit.

::::::::::::::::::::::::::::::::::::: instructor

### Common stall: perfecting authorship

Learners may try to perfect authorship, contributor roles, or author order. For the demo, use the provided values and keep moving. For real projects, authorship order is a PI/team decision; the consultant can explain the fields and options but should not decide credit. If someone asks "who counts as an author?", flag it as a team conversation, not a metadata fix.

::::::::::::::::::::::::::::::::::::::::::::::::

### Create the file on GitHub

In your fork of `software-demo`:

1. Click **Add file → Create new file**.
2. Name the file exactly `CITATION.cff` (it must live in the repository root, and the name is case-sensitive). As soon as you do, GitHub recognizes it and shows a banner with an **Insert example** button.
3. Click **Insert example**. GitHub drops a valid, ready-to-edit template into the editor.
4. Edit the placeholders: replace `YOUR_NAME_HERE`, add real **ORCIDs**, and set the `title` and `url` to match your repository.
5. **Delete the `doi` line** (you do not have a DOI yet, you will add it in the next episode). Delete `version` and `date-released` too if you have not made a release; otherwise set them to match.
6. Click **Commit changes…** and commit to your `main` branch.

![Name a new file `CITATION.cff`, click **Insert example** to drop in GitHub's template, edit the placeholder names and ORCIDs, then commit to `main`.](fig/create-citation-cff.png){alt="GitHub's create-new-file editor with the filename CITATION.cff, the Insert example button, the template in the edit pane, and the Commit changes button all highlighted and numbered one through four."}

The inserted template looks like this before you edit it:

```yaml
cff-version: 1.2.0
message: "If you use this software, please cite it as below."
authors:
  - family-names: "YOUR_NAME_HERE"
    given-names: "YOUR_NAME_HERE"
    orcid: "https://orcid.org/0000-0000-0000-0000"
title: "your-repository-name"
version: 1.0.0
doi: 10.5281/zenodo.1234
date-released: 2026-07-05
url: "https://github.com/YOUR-USERNAME/your-repository-name"
```

::::::::::::::::::::::::::::::::::::: callout

::::::::::::::::::::::::::::::::::::: instructor

### YAML recovery path

If more than a few learners hit YAML indentation errors, switch the whole room to cffinit rather than debugging individual whitespace mistakes. The goal is citation metadata, not YAML mastery. cffinit validates as they type and produces a file they can paste.

::::::::::::::::::::::::::::::::::::::::::::::::

### Prefer a guided form? Use cffinit

[**cffinit**](https://citation-file-format.github.io/cffinit/) is a web wizard that walks you field by field and validates as you type. It is worth using when your metadata is more involved: many authors, a `preferred-citation` for an associated paper, keywords, or a license you want recorded precisely. Fill out the form, copy the generated file, and paste it into the same `CITATION.cff` you create on GitHub. More on the format: <https://citation-file-format.github.io/>.

::::::::::::::::::::::::::::::::::::::::::::::::

A finished file looks like this:

```yaml
cff-version: 1.2.0
title: "Biodiversity Analysis Toolkit"
message: "If you use this software, please cite it as below."
authors:
  - family-names: "Dennis"
    given-names: "Tim"
    orcid: "https://orcid.org/0000-0001-6632-3812"
  - family-names: "Phan"
    given-names: "Leigh"
    orcid: "https://orcid.org/0000-0002-8605-1444"
  - family-names: "Otsuji"
    given-names: "Reid"
    orcid: "https://orcid.org/0000-0002-1842-0295"
  - family-names: "Padilla"
    given-names: "Karla"
version: "0.1.0"
date-released: 2026-02-01
url: "https://github.com/UC-OSPO-Network/software-demo"
repository-code: "https://github.com/UC-OSPO-Network/software-demo"
```

There is deliberately **no `doi` field yet**: you do not have one until you mint it in the next episode. Once you create a release and Zenodo assigns a DOI, you will come back and add a `doi:` line. If your project has no tagged version either, you can omit `version` and `date-released` for now and add them at release time.

**Once you commit it to the default branch, GitHub adds a "Cite this repository" button automatically.**

If your software does not yet have version tags, you may omit the `version` field until Episode 4 when you create releases.

::::::::::::::::::::::::::::::::::::: callout

### Check your work

Compare your fork against the [`after-citation` reference branch][branch-after-citation] on the [demo repository][demo-repo]. It shows the target state after this episode: a `CITATION.cff` in the root and a "Cite this repository" button in the sidebar.

::::::::::::::::::::::::::::::::::::::::::::::::

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
url: "https://github.com/UC-OSPO-Network/software-demo"
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

::::::::::::::::::::::::::::::::::::: challenge

::::::::::::::::::::::::::::::::::::: instructor

### Predict, then reveal

Before learners refresh GitHub after committing `CITATION.cff`, ask them to predict what GitHub will add. Then reveal the "Cite this repository" panel. This keeps GitHub's helper behavior visible as a platform pattern rather than a surprise, and sets up the "GitHub recognizes certain filenames" idea later.

::::::::::::::::::::::::::::::::::::::::::::::::

### Predict: what will GitHub do?

You've created `CITATION.cff` and you're about to commit it to the default branch. Before you do, predict: what changes on the repository's GitHub page?

:::::::::::::::::::::::: solution

GitHub parses the file and adds a **"Cite this repository"** button to the sidebar, offering ready-made citations (APA, BibTeX, and more) generated from your metadata. No DOI is required for this to appear.

:::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::

### Step 3: Commit and refresh

After you commit the file, GitHub:

- parses and validates it
- displays a “Cite this repository” panel
- provides download options (BibTeX, EndNote, CFF, APA)

![Once `CITATION.cff` is on the default branch, GitHub adds a **Cite this repository** link to the About sidebar that opens ready-made APA and BibTeX citations.](fig/cite-this-repository.png){alt="A GitHub repository sidebar with the 'Cite this repository' link highlighted and its citation panel open, showing APA and BibTeX tabs."}

This feature works even without a DOI.

**Text-only check:** after you commit `CITATION.cff`, refresh the repository page. The About sidebar should now show a **"Cite this repository"** link.

::::::::::::::::::::::::::::::::::::: challenge

## Challenge: The button isn't showing

A researcher tells you they added a `CITATION.cff` file but GitHub still isn't showing the "Cite this repository" link. Name the things you would check.

:::::::::::::::::::::::: solution

Check, in order:

1. **Filename and location** — is it named exactly `CITATION.cff` (case-sensitive) and in the repository **root**, not a subfolder?
2. **Branch** — is it committed to the **default branch**? GitHub only reads the file from the default branch.
3. **Valid YAML** — does the file parse? A stray indentation or missing quote stops GitHub from rendering the panel. cffinit validates for you.

This three-question triage is exactly the kind of quick diagnostic you will run in a consultation.

:::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: callout

### Supporting others

In a consultation you rarely edit a researcher's files yourself. Your job is to make the workflow easy for them to own:

- Point them to **cffinit** (<https://citation-file-format.github.io/cffinit/>) instead of hand-editing YAML. It validates as they go and prevents most formatting errors.
- Show the payoff first: the "Cite this repository" panel on a repo that already has the file. People adopt what they can see.
- Know the boundary. If **authorship or author order is contested**, that is a credit negotiation between collaborators, not a metadata fix. Surface it, don't arbitrate it.

::::::::::::::::::::::::::::::::::::::::::::::::

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

::::::::::::::::::::::::::::::::: keypoints
- A CITATION.cff file is the foundation of software citation.
- It can be added before releases, DOIs, or version tags.
- GitHub displays machine-readable citations automatically when this file is present.
- Start simple and expand over time as your project develops.
::::::::::::::::::::::::::::::::::::::::::::::::
