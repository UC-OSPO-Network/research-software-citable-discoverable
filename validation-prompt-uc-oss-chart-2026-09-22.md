# Validation prompt: presenting the UC open source license risk chart in a lesson

## Context

I'm revising one episode of a Carpentries-style lesson called "Making Research Software Citable & Discoverable." The audience is mixed: researchers who write code, and librarians / research-support staff who advise them. The episode ("Adding an Open-Source License") teaches learners to recognize that unlicensed code can't be reused, pick a low-risk license for a demo repository (the lesson uses BSD 3-Clause), and know when to refer ownership questions to their campus Technology Transfer Office (TTO). It's taught live in about 30 minutes, including a hands-on step where learners add a LICENSE file on GitHub.

The lesson is built with the Carpentries Workbench (R `sandpaper`, pandoc markdown). What's available: pipe tables, Workbench callout blocks (`::: callout`, `::: caution`, `::: instructor`, `::: spoiler` collapsible), Mermaid diagrams (already used in this episode), and images with required alt text. Raw HTML/CSS in episodes is unreliable, and there's no per-cell coloring in tables. The site has light and dark modes, and content must be accessible: no meaning carried by color alone, and screen-reader friendly.

## The source document

The University of California Office of the President publishes a one-page PDF, "Open Source Software ('OSS') at UC: Use and Redistribution of Modified & Unmodified OSS" (version 4/17/18), at https://security.ucop.edu/files/documents/resources/oss-chart.pdf. It's a color-coded grid. Here it is, transcribed exactly:

Columns: two groups.
- **Internal use (at UC):** (1) OSS unmodified, (2) OSS with bug fixes or otherwise modified
- **External distribution (outside UC):** (3) OSS unmodified, (4) bug fixes, (5) OSS otherwise modified, (6) OSS function calls only

| License (flags) | 1 | 2 | 3 | 4 | 5 | 6 |
|---|---|---|---|---|---|---|
| BSD (must retain © notice) | Low | Low | Low | Low | Low | Low |
| MIT (must include original © notice) | Low | Low | Low | Low | Low | Low |
| Apache 1.x, not 2.0 or later (must reproduce © notice) | Low | Low | Low | Low | Low | Low |
| GPL 1.x/2.x or LGPL 2.x, but not 3.0 or "any later version" (H) | Low | Low | Low | Low | Low | Low |
| Educational Community License v2.0 (PG, H **) | Low | Low | Low | Low | Low | Low |
| Apache 2.0 (PG, H **) | Low w/ internal use notice | Low w/ internal use notice | Low | Low | Moderate | Low |
| Eclipse Public License 1.0 and 2.0 (PG, H) | Low w/ internal use notice | Low w/ internal use notice | Low | Low | Moderate | Low |
| MPL 2.0 (PG, H) | Low w/ internal use notice | Low w/ bug fixes ONLY | Low | Low | Moderate | Moderate |
| AGPL 3.0 (PG, H) | Low w/ internal use notice | Low w/ internal use notice | High | High | High | Moderate |
| GPL 3.0 or LGPL 3.0 (PG, H) | Low w/ internal use notice | Low w/ internal use notice | High | High | High | High |
| Other OSS licenses | Contact Licensing Office (all columns) | | | | | |

Legend: Green = Low risk, Yellow = Moderate risk, Red = High risk. "Colors are intended to guide the delegated authority through levels of potential risk regarding these OSS licenses. All OSS licensing of Regents-owned copyrights requires approval of the appropriate delegated authority, regardless of the 'risk' categories."
PG = "patent-granting" OSS license. H = "hereditary" (sometimes called viral). ** = the heredity requirement may be overridden for derivative works under section 4 of Apache 2.0 and ECL 2.0 (you can add your own copyright statement to your modifications).

## How the lesson uses it now

The episode has one sentence linking the PDF: "The TTO or UC OSPO Network can help you select from the UC-approved license list provided the TTO can clear your code for release." Separately, a Mermaid decision flowchart routes learners from "Do you have special requirements?" to BSD 3-Clause (default), MIT (simpler text), ECL 2.0 (educational focus), GPL 2.0 (copyleft, consult TTO), or GPL 3.0 (not recommended by UC). Every branch ends at "Verify with campus Tech Transfer Office." An "industry partnership or patent concerns" branch goes straight to the TTO box. A caution callout explains that Apache 2.0 and BSD+Patent are disfavored at UC because their patent grants can reach into other UC patents.

## Current proposal

Don't reproduce the 9x6 grid. Collapse it into a tiered summary pipe table, with emoji plus words so meaning isn't color-only:

| Risk (UC chart) | Licenses | What it means |
|---|---|---|
| 🟢 Low everywhere | BSD, MIT, Apache 1.x, GPL/LGPL 2.x (not "any later version"), ECL-2.0 | Low risk to use and to distribute outside UC, modified or not |
| 🟡 Moderate for modified code shared outside UC | Apache 2.0, Eclipse 1.0/2.0, MPL 2.0 | Patent-granting. Internal use needs a notice; distributing modified code is moderate risk (MPL also moderate for function calls only) |
| 🔴 High to distribute | GPL/LGPL 3.0, AGPL 3.0 | Internal use OK with a notice; distributing outside UC is high risk |
| Not listed | Any other license | Contact your campus licensing office |

Under it: an approval note ("All licensing of Regents-owned software needs approval from your campus's delegated authority, whatever the risk tier") and a link to the full PDF. Plus a caveat sentence: the chart is mainly about UC *using and redistributing other people's* OSS, while the lesson uses it as guidance for *choosing a license for your own* code.

## Already decided, don't relitigate

- The flowchart stays, and the industry/patent branch goes to Tech Transfer (not Apache 2.0).
- BSD 3-Clause is the lesson's default demo license.
- The link to the official PDF stays. We are summarizing, not replacing it.
- It must be native Workbench markdown with no custom HTML/CSS.

## What I want from you

Answer each question directly and give a confidence score (0-100%) for each.

1. **Accuracy.** Does the three-tier summary faithfully represent the chart? Point to any row or cell it misrepresents or oversimplifies in a way that would mislead someone (for example: MPL's "bug fixes ONLY" for internal modified use, AGPL's moderate rating for function calls only, the internal-use-notice requirement, the ** heredity override, GPL 2.x being flagged H but rated low). Say which simplifications are acceptable for a 30-minute teaching episode and which aren't.
2. **Framing.** Is the caveat right that the chart is about using and redistributing others' OSS rather than choosing a license for new UC-owned code? If the chart *is* appropriate guidance for choosing your own license, say so and explain why. Would a learner be misled either way?
3. **Format.** For this audience and constraints, which is easiest to read and act on? Rank these and justify:
   - (a) the tiered table above
   - (b) a full 9x6 table in markdown, with text-plus-emoji cells
   - (c) a license-per-row table with just two columns: "Use inside UC" and "Share outside UC"
   - (d) three short lists under Low / Moderate / High headings
   - (e) a Mermaid diagram
   - (f) an image of the original PDF with detailed alt text
   - (g) something else you'd propose
4. **Placement.** Where should it live in the episode: main text, a caution callout, a collapsible spoiler, or instructor notes? It will sit near a flowchart that already covers the main decision. Is it redundant with the flowchart? Should one of them go?
5. **Wording.** Rewrite the final table (or your recommended alternative) so it reads cleanly for a non-lawyer in under 30 seconds. Keep it accurate to the source, and include the approval note and the caveat if you keep them.
6. **Risks.** What's the most likely way this summary goes wrong in front of a live room (a question it invites but can't answer, a license learners might misfile), and how should the text pre-empt it?

Return: your recommended format, the final markdown ready to paste, and a short list of any corrections to the facts as I've stated them.
