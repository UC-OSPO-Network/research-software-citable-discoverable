# Audience Divide & Modality Flex — ChatGPT Deep-Research Findings

Source: ChatGPT (browsing/deep-research mode), run June 2026, from
`audience-and-modality-research-prompt.md`. Saved for reference.

> Citation markers (`turnNsearchN` / `turnNviewN`) are ChatGPT's internal
> reference handles, not live links. Treat them as leads to verify. Confidence
> scores are ChatGPT's own.

## Question 1 — Train-the-trainer vs. end-user

Verdict: the layered design is **directionally sound but incomplete**. It treats
the "supporting others" layer as *framing* when the TTT literature says
supporters need a **second set of assessed competencies** and rehearsal, not just
meta-commentary. Cascade models spread knowledge well but are weak on skills,
fidelity, and sustainment unless those are explicitly designed and assessed.

Recommendations:
- **Dual objectives per episode** — one end-user ("create a CITATION.cff"), one
  supporter ("diagnose whether a repo has enough metadata to advise"). *(quick win)*
- **One support-role practice task per major episode** — 3–5 min consult
  scenario / triage rubric / referral decision. *(quick win)*
- **Microteaching / teaching-back checkpoint** — pairs explain one episode in
  2–3 min against a rubric. Borrowed from the Carpentries instructor pipeline.
  *(larger rework)*
- **Turn "Supporting others" callouts into assessed artifacts** — consultation
  checklist, if/then referral map, before/after repo-audit note. *(quick win)*
- **Mixed room: shared live path, role-branched prompts** — doer completes the
  task; supporter audits/coaches/redrafts guidance. *(quick win)*

What the layered approach gets right: shared hands-on body + audience framing
preserves coherence, fits Library Carpentry's hands-on ethos. What it misses:
risk of "appreciation without enactment"; callouts alone are weak fidelity
devices; instructor-notes flex depends on capable/willing instructors (drift risk
in cascade settings). *(confidence 0.84)*

## Question 2 — Active learning vs. slide-based

Verdict: evidence leans active, but "active always beats lecture" is **not** a
reliable design rule (71% of reviewed articles don't even define "active
learning"). The real lever for this audience is **assistance for novices**:
expertise-reversal meta-analysis says lower-prior-knowledge learners do better
with *higher* guidance; worked examples help; productive failure helps only with
high-fidelity design. So a short talk should NOT compress the full workshop — it
should keep the *cognitive value* of active learning with more guidance.

Recommendations:
- **Worked-example core per episode with a demo/do toggle** — talk mode =
  demonstrate; workshop mode = learners execute. This is the single mechanism
  that flexes one lesson across modalities. *(larger rework)*
- **Predict-then-reveal every 5–10 min in slide mode** ("what metadata is
  missing?", "what will Zenodo mint?"). Matches Carpentries' frequent formative
  assessment. *(quick win)*
- **Productive failure, sparingly** — one bounded pre-instruction comparison per
  lesson, not long open struggle. *(quick win)*
- **Make the talk an interactive demonstration, not a compressed workshop** —
  one anchoring exercise, the rest decision points/polls/"spot the issue".
  *(quick win)*
- **Audience-sensitive meta-commentary** — short "how I'd teach/support this"
  after each core step, in instructor view + slide speaker notes. *(larger rework)*

*(confidence 0.88)*

## Question 2a — Workbench slides feasibility

Independently reached the same conclusion as our own repo investigation:
- **No native, first-class slide path** in the current Workbench. The open
  Workbench issue "Generate slides from the workbench" (late 2023) is evidence
  it's absent, not hidden.
- Real lessons either **link external decks** (Google Slides) or **store static
  files** (PDF in `instructors/slides/`).
- **Don't pursue single-source-from-episode-Markdown** — episode prose and deck
  narration are different genres; tooling is brittle before it adds value.
- Recommended path: **a parallel Quarto reveal.js deck in the same repo**, built
  by a separate Quarto GitHub Action, with distinct `output-file` to avoid
  HTML-output collisions, linked from the lesson.

*(confidence 0.90)*

## Top 5 (from the report)
1. Dual objectives + dual assessments per episode. *(quick win, 0.89)*
2. Consultation simulations + microteaching as core practice. *(larger, 0.85)*
3. Worked-example cores with demo/do toggles. *(larger, 0.91)*
4. Predict-then-reveal interactive demos for the talk. *(quick win, 0.87)*
5. Slides as a parallel reveal.js artifact in-repo. *(larger, 0.93)*

## Blind spots flagged
- Identical keystrokes ≠ identical instructional design (supporters have a
  different transfer target that must be assessed).
- Active learning ≠ minimal guidance (novices need assistance).
- More TTT support ≠ better (threshold effects; design > volume).
- Single-source authoring isn't an unqualified good (genre differences).
- The "library/OSPO/support" audience is heterogeneous — branch by **role and
  prior confidence**, not institutional identity.

---

## Local note: where this diverges from our repo reality

The report recommends starting a **Quarto reveal.js** deck. Our own repo
investigation (June 2026) found the lesson **already has a working Marp deck**
(`slide_assets/PRESENTATION_TIM_MARP.md` + `uc-ospo-theme.css`) plus the
delivered UCLDW deck. The report's author didn't know that. So the real choice is
not "build slides from scratch in Quarto" but **Marp (existing investment) vs.
Quarto (Tim's house tool for reports/slides)**. Both achieve the same outcome:
parallel deck in-repo, built in CI, linked from the lesson. Decision pending.
