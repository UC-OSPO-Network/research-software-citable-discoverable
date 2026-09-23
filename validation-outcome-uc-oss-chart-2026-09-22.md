# Validation outcome: UC OSS risk chart summary (2026-09-22)

Prompt: `validation-prompt-uc-oss-chart-2026-09-22.md`. Two rounds with an external model; every claim was checked against the UC chart (4/17/18) and its companion guide (oss-chart-companion.pdf, 3/26/2018).

## Adopted
- Cell-level exceptions kept in the summary: MPL internal modification is low for bug fixes only, MPL and AGPL function-calls-only are moderate, internal use of Apache 2.0/Eclipse/MPL/GPL 3/AGPL needs the Internal Use Notice (companion p. 2).
- Ratings describe risk of conflict with UC policy, not license suitability (companion p. 2, "The Intent of the Legend").
- Format: one visible takeaway plus the approval rule in the main text; a tier table inside a `spoiler`, with a `Table:` caption; the flowchart stays.
- "UC-approved license list" renamed to a risk chart; the chart approves nothing.
- Instructor note: say aloud it is UC guidance; "green" shortens the approval conversation, it doesn't replace it.

## Rejected
- "The companion tells people creating OSS from scratch to consult the chart." Not supported: that section says to follow the campus process, and UC's own flowchart (companion p. 5) routes "Releasing new code created at UC" straight to "Contact Licensing Office". The lesson says that instead.
- "BSD licenses, including BSD 3-Clause" in the takeaway: the chart row is just "BSD", and the episode warns BSD+Patent is disfavored. Changed to "BSD".

## Deferred
- "GPL 3.0 not recommended by UC" (flowchart and caution) vs the companion's "considered only in rare circumstances". Left as is, since "not recommended" is a fair paraphrase and it's Karla's content.
