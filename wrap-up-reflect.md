---
title: "Wrap-Up and Reflection"
teaching: 4
exercises: 13
---

:::::::::::::::::::::::::::::::::::::: questions

* What small steps can make your research software more citable and discoverable?
* How can you apply these practices to your current or future projects?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

* Reflect on the practical steps taken during the session
* Identify at least one improvement to apply in your own software projects
* **Supporting others:** assemble a reusable consultation checklist and campus referral map

::::::::::::::::::::::::::::::::::::::::::::::::

## Your FAIR4RS Checklist

Congratulations! You've transformed fragile research software into a FAIR software project.

### What We Covered Today:

✅ **F - Findable:** Added DOI, CITATION.cff, rich metadata
✅ **A - Accessible:** Public GitHub, archived on Zenodo
✅ **I - Interoperable:** Standard formats (YAML, CFF), documented dependencies (pixi.toml)
✅ **R - Reusable:** LICENSE (BSD-3), README with setup, environment reproducibility

### From Fragile to FAIR

**Before (Branch: 01-start):**

- ❌ No LICENSE
- ❌ No environment
- ❌ No citation
- ❌ No DOI

**After (Branch: 06-metadata):**

- ✅ LICENSE (BSD-3)
- ✅ Environment (pixi.toml)
- ✅ CITATION.cff
- ✅ DOI from Zenodo
- ✅ README with documentation
- ✅ Community health files

Your software is now **citable, discoverable, and reusable**.

## Introduction

Over this session, you've learned how to make your research software more visible, citable, and impactful. These small, practical steps support scholarly communication, reproducibility, and the FAIR principles.

Use this time to reflect on what you've learned and decide on one action you'll take with your own project.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

Give learners a few minutes of quiet reflection, then facilitate a group discussion. Invite volunteers to share a step they plan to take next.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: challenge

## Challenge 1: Choose Your Next Step

Which of the practices from today’s session will you apply to a current or future project?

:::::::::::::::::::::::: solution

Answers may vary: making a repo public, adding a license, archiving on Zenodo, writing a README, creating a CITATION file, etc.

:::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::: challenge
## Challenge 2: Find a FAIR Win

Think of one thing you can do in under 30 minutes to make your software more FAIR.

:::::::::::::::::::::::: solution

Examples:

* Add a LICENSE file
* Write a short README
* Register your ORCID on Zenodo
* Create a GitHub release

:::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: callout

### Supporting others: taking this back to your desk

If you came to this lesson to support researchers rather than to publish your own code, your "next step" is a service, not a single repo. Two things make that practical.

**A 5-minute consultation checklist.** When a researcher brings you a repository, walk it in this order and name the one highest-value fix:

- [ ] **License** present, and ownership question asked? (Refer to Tech Transfer if unclear.)
- [ ] **CITATION.cff** present and rendering GitHub's "Cite this repository" panel?
- [ ] **Release + DOI** for the version that matters? (Version vs. concept DOI clear?)
- [ ] **README** that a stranger understands in 30 seconds?
- [ ] **Metadata**: description, ORCIDs, keywords, related works?

**A campus referral map.** You are the router, not the single point of expertise. Know who owns each escalation before you need them:

- **Ownership / IP / commercialization** → Technology Transfer / IP office
- **Sensitive or restricted data in a repo** → research compliance / IRB / data governance
- **Institutional repository, preservation, DOIs at scale** → library repository / scholarly comms team
- **Open-source strategy, policy, community** → your campus OSPO
- **Contested authorship or credit** → surface to the collaborators; do not arbitrate

Fill in the actual names and contacts for your campus and you have a reusable service, not a one-off answer.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::: challenge

## Challenge 3: Build your campus playbook *(supporting others)*

If you are here to support researchers, your take-home artifact is a reusable playbook, not a single repo. Using the checklist and referral map above as a template, write down:

1. The **5 triage questions** you would ask of any repository a researcher brings you.
2. For each referral category (IP/ownership, sensitive data, institutional repository, OSPO, contested authorship), the **actual office or person** at your institution it routes to.
3. One **"I can answer this myself" vs. "I refer this"** line you feel least sure about, to follow up on later.

Pair up and trade playbooks: can your partner tell, from your map, where to send a real question? Revise anything that isn't clear enough to hand to a colleague.

:::::::::::::::::::::::: solution

There is no single right answer; the artifact is the point. A strong playbook names real contacts (not just "Tech Transfer" but the office and a link), and is specific enough that another person on your team could use it without you in the room. If you could not fill a referral line, that gap is itself a useful finding to take back.

:::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::

## Resources to Take With You

### Lesson Materials
- Lesson repository: <https://github.com/UC-OSPO-Network/research-software-citable-discoverable>

### Tools
- **CITATION.cff Helper**: <https://citation-file-format.github.io/cff-initializer-javascript/>
- **Zenodo**: <https://zenodo.org>
- **Pixi**: <https://pixi.sh>
- **Choose a License**: <https://choosealicense.com>

### UC-Specific Resources *(for UC campus learners)*
- **UC OSS Chart**: <https://security.ucop.edu/files/documents/resources/oss-chart.pdf>
- **UC OSPO License Guide**: <https://ucospo.net/oss-resources/template-guides/license-guide/>
- **UC OSPO Templates**: <https://github.com/UC-OSPO-Network/templates>
- **UC Open Source Program Office (OSPO) Network**: <https://ucospo.net/>

### General Open Source Resources
- **Open Source Initiative (OSI)**: <https://opensource.org/licenses> (authoritative license registry)
- **FAIR4RS Principles**: <https://doi.org/10.15497/RDA00068> (RDA/FORCE11/ReSA paper)
- **Software Citation Principles**: <https://doi.org/10.7717/peerj-cs.86> (Smith et al. 2016)
- **CODE Beyond FAIR**: <https://doi.org/10.1038/s41597-026-06705-6> (Di Cosmo et al. 2026; covers Software Heritage, institutional roles, and the library's part in software metadata)
- **Software Heritage Archive**: <https://www.softwareheritage.org/> (universal source code archive; assigns SWHIDs for long-term preservation)

::::::::::::::::::::::::::::::::::::: keypoints

* You've successfully made your software FAIR: Findable, Accessible, Interoperable, and Reusable
* Even small actions can significantly improve your software's impact
* Making code citable and discoverable benefits both you and the research community
* Start with one change, then build from there
* Use the UC OSPO resources and templates to streamline the process

::::::::::::::::::::::::::::::::::::::::::::::::
