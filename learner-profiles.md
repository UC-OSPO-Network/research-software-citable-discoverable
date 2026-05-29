---
title: Learner Profiles
---

These profiles describe the learners this lesson is designed for. The lesson is currently developed for a general research audience but is being rescoped toward a **Library Carpentry** audience — library and information professionals working in scholarly communications, research data services, and open science support roles.

---

## Priya — Scholarly Communications Librarian

Priya is a scholarly communications librarian at a research university. She fields questions from faculty and graduate students about copyright, open access, and research outputs — but software citation is a gap in her knowledge. She knows what a DOI is and can explain data citation, but when a researcher asks "how do I get a DOI for my code?" she has no clear answer.

She has used GitHub to browse repositories but has never committed code. She's comfortable with YAML from working with static site generators on library web projects.

**What she wants from this lesson:** A mental model she can use when advising researchers, and hands-on practice creating a CITATION.cff file so she can walk a researcher through it confidently. She's less interested in the environment management episode and may skip it.

**What she'll do with it:** Run a one-hour "Make Your Code Citable" workshop for graduate students as part of her library's research skills series.

---

## Marcus — Research Data Services Librarian

Marcus works in a research data services team at a mid-size university. He helps researchers write data management plans, deposit datasets in the institutional repository, and comply with funder open data mandates. He's increasingly asked about software alongside data — a PI just got reviewer comments asking for a citable software version — and he doesn't have a good answer ready.

He has basic Python skills (enough to run scripts, not to write them from scratch) and has used Zenodo before for dataset deposits. He knows the institutional repository runs on Dataverse and is aware it doesn't handle software well.

**What he wants from this lesson:** A practical workflow he can recommend and demonstrate — specifically the GitHub release + Zenodo DOI path and how to connect it to a CITATION.cff. He also wants to understand when to recommend Zenodo versus the IR.

**What he'll do with it:** Update his data management consulting materials and add a software citation section to the library's RDM guidance pages.

---

## Sofia — Postdoctoral Researcher (original target audience)

Sofia is a postdoc in computational ecology. She has a GitHub repository for the analysis code supporting her most recent paper. The paper is under review and a co-author mentioned the journal now requires a citable code deposit, but neither of them knows exactly what that means.

Her code runs locally but she's never packaged it or thought about dependencies formally. She uses pip and has a rough requirements.txt but no lockfile. She has no CITATION.cff, no license, and no release tags.

**What she wants from this lesson:** To get from "code on GitHub" to "citable, deposited software with a DOI" in a single workshop session. She wants to understand what each step does, not just follow instructions blindly.

**What she'll do with it:** Add the missing pieces to her current repo before the paper is accepted, and apply the same practices to her next project from the start.

---

## James — Digital Scholarship Librarian (LC instructor perspective)

James runs digital scholarship workshops at a liberal arts college library. He's comfortable with Git, HTML/CSS, and R, and he regularly teaches Library Carpentry lessons (Shell, Git, OpenRefine). He's looking for a lesson he can add to his workshop series that covers software citation — something researchers can complete in half a day that gives them a concrete output.

He's skeptical of lessons that require too much setup or tool installation; his workshop participants are rarely developers and often on managed institutional machines.

**What he wants from this lesson:** A lesson he can teach without modification to a mixed audience of grad students, postdocs, and faculty. He wants the environment management episode to be truly optional so he can skip it without breaking the narrative. He also wants the UC-specific content to be clearly labeled so he can swap in his own institution's equivalents.

**What he'll do with it:** Teach it twice per year as a standalone session and eventually as a module in a broader open science curriculum.
