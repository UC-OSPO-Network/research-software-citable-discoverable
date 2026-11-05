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

- Explain the role of `CITATION.cff` in software citation.
- Create and customize a `CITATION.cff` file in a GitHub repository.
- Describe how the file connects to later steps like releases and DOIs.
- Coach a researcher through a `CITATION.cff` and recognize when authorship is a referral, not a metadata fix.

::::::::::::::::::::::::::::::::::::::::::::::::

## A catalog record for your software

When someone wants to cite a book, nobody emails the author to ask how. The catalog record answers it. Software has lacked that record, so people improvise: they cite a URL, or the paper the code appeared in, or nothing. A **CITATION.cff** file is the catalog record for a repository, a short, structured metadata file that specifies exactly who to credit and how. Once it exists, GitHub grows a "Cite this repository" button, and the guesswork ends.

Every librarian has shown a student the "Cite" button on a database record and watched the relief. This is the same button, on code, and the researcher controls what it says. Without the file, everyone who wants to cite the software writes their own version of the reference, and the credit scatters across formats no index can reconcile.

A `CITATION.cff` file is the simplest, most direct way to make your software citable. It provides structured citation metadata that:

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

You'll do this entirely in your browser, in your fork. No terminal required! There are two routes: **cffinit**, a guided web form that validates as you type, and GitHub's own starter template. We use cffinit, because it catches mistakes before they reach the file and prompts you for fields the template leaves out.

::::::::::::::::::::::::::::::::::::: instructor

### Common stall: perfecting authorship

Learners may try to perfect authorship, contributor roles, or author order. For the demo, use the provided values and keep moving. For real projects, authorship order is a PI/team decision; the consultant can explain the fields and options but should not decide credit. If someone asks "who counts as an author?", flag it as a team conversation, not a metadata fix.

::::::::::::::::::::::::::::::::::::::::::::::::

### Build the file with cffinit

Open **cffinit** in a new tab: <https://citation-file-format.github.io/cffinit/>

It walks you through the metadata field by field and validates as you type. Keep the tab open, or bookmark it. You'll come back to it whenever a file needs changing.

1. Fill in the required fields: **title**, **authors**, and **message**.
2. **Title**: use your repository's name.
3. **Authors**: give each person's given and family names, plus an ORCID if they have one. Use a real ORCID or leave the field empty. A placeholder ORCID of all zeros will fail validation when you archive the release in a later episode, and that's a frustrating place to find out.
4. **Message**: **leave this box empty.** The grey text reading *"Personalized message. Leave blank to use default"* is just a placeholder, so there's nothing to keep or replace. Leave it blank and cffinit writes the standard sentence: `If you use this software, please cite it using the metadata from this file.`
5. Skip **version**, **date-released** and **doi**. You don't have a release or a DOI yet. Those come in the next episode.

::::::::::::::::::::::::::::::::::::: callout

### Getting the file out of cffinit

The **Finish** step offers **Download** and **Reset form**, and no copy button.

If you'd rather copy the text than download a file, click **Open CFF Preview** at the top right. The preview panel has **Copy to clipboard**, and it's there on every step, so you don't have to wait for the end.

Either route works: download the file and upload it to GitHub, or copy the text and paste it in.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: callout

### `preferred-citation` isn't on the form

cffinit says so itself: *"The CFF schema supports more fields than this form implements, for instance preferred-citation, or references."*

If you need it, add it as raw YAML in the **Extra CFF Fields** step, or paste it into the file after you've created it. See [Linking to a published paper](#linking-to-a-published-paper) below.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: callout

### When the metadata is more complicated

Real projects often need more than the demo does: a long author list, an institution as an author, a paper researchers should cite instead of the code, or related identifiers. The [CFF schema guide](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md) documents every field, with examples. It's the same reference cffinit's own help links to. Start with these sections:

- [`authors`](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md#authors), for long author lists
- [`definitions.entity`](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md#definitionsentity), for an institution, lab, or team as an author
- [`preferred-citation`](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md#preferred-citation), for pointing citers at a paper

::::::::::::::::::::::::::::::::::::::::::::::::

### Add the file to your fork

In your fork of `software-demo`:

1. Click the **`+`** button, the small plus immediately to the left of the green **Code** button, then **Create new file**. (GitHub used to label this button "Add file". Now it's just the icon.)
2. Name the file exactly `CITATION.cff`. It must live in the repository root, and the name is case-sensitive.
3. Paste in the file you built in cffinit. If you downloaded it instead, use **`+` → Upload files** and drop it in.
4. Click **Commit changes…** and commit to your `main` branch.

::::::::::::::::::::::::::::::::::::: instructor

### If the room gets stuck

cffinit is the default path precisely because it validates as learners type, so YAML indentation errors should be rare. If someone's hand-edited a file and broken it, send them back to cffinit to rebuild it. Debugging whitespace in the GitHub editor eats time the room doesn't have. The goal is citation metadata, not YAML mastery.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: callout

### Alternative: GitHub's built-in template

GitHub recognizes the filename on its own. When you name a new file `CITATION.cff`, a banner appears with an **Insert example** button that drops a starter template into the editor:

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

Edit the placeholders, then **delete the `doi`, `version` and `date-released` lines** unless you already have a release. This route doesn't validate as you go, so a stray indent will quietly stop GitHub from rendering the citation panel.

![Naming a new file `CITATION.cff` makes GitHub offer an **Insert example** button, which drops its template into the edit pane ready to overwrite before you commit.](fig/create-citation-cff.png){alt="GitHub's create-new-file editor with the filename CITATION.cff, the Insert example button, the template in the edit pane, and the Commit changes button all highlighted and numbered one through four."}

::::::::::::::::::::::::::::::::::::::::::::::::

A finished file looks like this. This is the answer key from the [`03-add-citation` reference branch][branch-citation], so it's what you'll be comparing against at the end of the episode:

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

::::::::::::::::::::::::::::::::::::: callout

### Check your work

The answer key lives on the demo repository, and your fork doesn't have it. The setup instructions told you to keep **"Copy the main branch only"** checked, so you only copied `main`.

To reach it:

1. Go to the [demo repository][demo-repo].
2. Open the branch dropdown (it reads **main**) and choose **`03-add-citation`**.
3. Open `CITATION.cff`.

Or go straight to the file: <https://github.com/UC-OSPO-Network/software-demo/blob/03-add-citation/CITATION.cff>

**Your file won't match it exactly, and it shouldn't!** Expect three differences:

- **Different authors.** The key lists the lesson authors; yours lists you.
- **Different `message` wording.** cffinit's default sentence isn't the same as the key's. Either one's fine.
- **The key has `version` and `date-released`; yours doesn't.** That's your bridge to the next episode, where those fields arrive with your first release.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: callout

### Ignore the "1 commit ahead" banner

After you commit, your fork shows a banner reading **"This branch is 1 commit ahead of UC-OSPO-Network/software-demo:main."** It looks like the comparison link you want, but it compares your fork against the demo's `main` and just shows your own commit back to you. It isn't the answer key. Use the navigation above instead.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: instructor

The reference branches don't share history with `main`, so a GitHub compare view has no merge base to work from and will mislead anyone who tries one. Keep learners on the branch-dropdown route above and skip compare URLs entirely.

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

### What GitHub does when you commit

After you commit the file, GitHub:

- parses and validates it
- displays a “Cite this repository” panel
- provides download options (BibTeX, EndNote, CFF, APA)

![Once `CITATION.cff` is on the default branch, GitHub adds a **Cite this repository** link to the About sidebar that opens ready-made APA and BibTeX citations.](fig/cite-this-repository.png){alt="A GitHub repository sidebar with the 'Cite this repository' link highlighted and its citation panel open, showing APA and BibTeX tabs."}

This feature works even without a DOI.

::::::::::::::::::::::::::::::::::::: callout

### The button's citation is missing one thing: version

GitHub's "Cite this repository" panel builds its citation from `CITATION.cff`, but the generated text does not include the `version` field even when it's present in the file. If someone copies the button's citation as-is, it won't specify which release they used. Tell whoever is citing your software to add the version by hand, or point them at the human-readable citation you keep in the README (see below), which you control completely.

::::::::::::::::::::::::::::::::::::::::::::::::

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

1. Create CITATION.cff, with GitHub's template (Option A) or the cffinit form (Option B).
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

::::::::::::::::::::::::::::::::: challenge

## Challenge: Is a citation file enough?

You now have a `CITATION.cff` and GitHub's "Cite this repository" button. That is a real and necessary first step: anyone can cite the software in a consistent form, and the metadata is machine-readable. But before the next episode, think about what this citation still does **not** guarantee. Consider three questions:

1. If someone cites your repository today and you change the code tomorrow, does their citation still point to the code they actually used?
2. If the repository is renamed, the account is deleted, or GitHub itself goes away, does the citation still resolve to anything?
3. Can a reader retrieve the **exact** version of the software that produced a specific paper's results?

What is missing, and what would fix it?

:::::::::::::::::::::::: solution

A `CITATION.cff` makes software citable *in principle*, but the citation is not yet **durable** or **version-specific**:

- It points at a **moving target**, the default branch, so the code being "cited" keeps changing.
- It depends on the **repository staying at that URL**. A GitHub URL is not a persistent identifier; it rots.
- It does not **pin the exact snapshot** behind a published result, so a reader cannot reliably reproduce or verify what was used.

The fix is a **tagged release archived to a repository like Zenodo**, which mints a **DOI**: a persistent identifier for an *immutable* snapshot. The DOI is what connects the software into the scholarly credit and indexing apparatus (DataCite, ORCID, library catalogs) and lets a citation resolve to one exact version, permanently. Put another way: `CITATION.cff` says *how* to cite the software; a release and DOI give the citation something durable *to point at*. That is the next episode.

**One more gap `CITATION.cff` alone doesn't close: a human has to find it.** Not everyone who wants to cite your software will know to look for a machine-readable file or click "Cite this repository." Add a plain, human-readable citation to your README too, in whatever format your field expects, alongside the CFF file rather than instead of it (see [peerj.com/articles/cs-86](https://peerj.com/articles/cs-86/) for why both matter).

:::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::: keypoints
- A CITATION.cff file is the foundation of software citation.
- It can be added before releases, DOIs, or version tags.
- GitHub displays machine-readable citations automatically when this file is present.
- Start simple and expand over time as your project develops.
- A citation file is necessary but not sufficient: a release and DOI make the citation durable and tied to an exact version. That is the next step.
::::::::::::::::::::::::::::::::::::::::::::::::
