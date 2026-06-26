# ChatGPT Deep-Research Prompt — Audience Divide & Modality Flex

Paste the block below into ChatGPT (browsing / deep-research mode). It is
self-contained. Date context: written June 2026.

---

You are helping me think through two intertwined instructional-design problems
in a hands-on technical lesson. I want current, well-sourced insight grounded in
education and instructional-design research, not generic advice. Prefer sources
from the last ~5 years where the field is active, cite them with links and dates,
name the theory or framework behind each recommendation, and explicitly flag
**blind spots** — things people in my position usually miss. Where evidence is
mixed or contested, say so rather than smoothing it over.

## The lesson and its situation

- A half-day (~3–4 hr) Carpentries Incubator lesson, **"Sharing Research
  Software: Reproducible, Citable, and Discoverable."** Hands-on: learners start
  from a minimal GitHub repo and leave with a license, a `CITATION.cff`, a
  versioned release, a Zenodo DOI, and improved discovery metadata. Framed around
  FAIR4RS principles.
- **The audience is doubled.** The content naturally points at *researchers who
  write code*. But the audience we increasingly train is *library and OSPO
  staff* (scholarly communication, research data services, open-science support)
  who will then **advise or re-teach** these practices to researchers. So we are
  often **training trainers/supporters, not the ultimate end-user** — and in
  practice the room is frequently a mix, sometimes mostly researchers even when
  billed for librarians.
- **What we've already tried** for the audience problem: we kept the hands-on
  body audience-neutral (the keystrokes are identical no matter who runs them)
  and layered the audience-specific material on top via (a) recurring
  learner-facing "Supporting others" callouts that recast each step as
  advising/consultation/referral work, and (b) richer instructor notes telling
  the instructor how to flex the framing live. I want to know whether that
  layered approach is sound, what it misses, and what the research says about
  doing it better.
- **The modality tension.** The same material exists in two forms: the full
  active-learning Carpentries workshop, and a much shorter **slide-based
  conference talk** (we delivered a ~45-slide version at UC Love Data Week). We
  keep having to choose between deep active learning and a compressed,
  presentation-style delivery — and we'd like the **lesson itself to support
  both** rather than maintaining two divergent artifacts.

## Question 1 — Train-the-trainer vs. train-the-end-user

- What does the research on **train-the-trainer (TTT) / cascade / turn-key
  training models** actually show about effectiveness, and about the known
  failure modes (fidelity loss, dilution across cascade levels, trainers who
  never redeliver, confidence vs. competence gaps)? What conditions make TTT
  work or fail?
- When the learners are **intermediaries/supporters** rather than end-users, how
  should objectives, practice, and assessment change? (e.g., teaching for
  *transfer* and for *teaching others*, not just for personal task completion.)
- Is teaching a single lesson to a **mixed room** (some doers, some
  supporters) a known problem with known solutions? What patterns exist for
  serving both without diluting either — differentiated instruction, dual
  personas, role-based tracks, "teaching-back" exercises?
- Evaluate our **layered "Supporting others" + instructor-notes** approach
  against the literature. What is it likely getting right, and what is it
  probably missing? Are there stronger patterns for making supporter-audience
  content stick (e.g., explicit consultation simulations, rubrics, referral
  decision practice, micro-teaching)?
- What does the **Carpentries' own model** (Instructor Training, the
  trainer/instructor pipeline, teaching-mindset materials) suggest about how to
  scaffold people who will go on to teach or support others? Borrowable patterns?

## Question 2 — Active learning vs. slide-based modality, and building flex into one lesson

- Summarize the current evidence on **active learning vs. lecture/slide-based
  instruction** for technical/STEM skills, including the nuances people skip:
  cognitive load for novices, the "productive failure" vs. worked-example
  debate, expertise reversal, time cost, and when a short well-structured
  presentation actually outperforms unstructured "hands-on."
- I do **not** want a one-sided "active learning always wins" answer. I want to
  know **when slides/demonstration are the right call**, and how to preserve the
  *value* of active learning when time forces a compressed, presentation-style
  delivery (e.g., predict-then-reveal, live demonstration with learner
  prediction, think-pair-share embedded in a talk, single anchoring exercise).
- The core practical ask: **how do you design one lesson artifact that flexes
  across modalities** — a 60–90 min slide talk, a half-day hands-on workshop,
  and a self-paced read — without maintaining three divergent versions? Cover
  concrete patterns: modular/tiered "core + optional" episode design, "demo vs.
  do" toggles, separating *narrative* from *exercises*, single-source
  authoring that generates both slides and a workbook, and any tooling that
  supports this (including the Carpentries Workbench's instructor blocks,
  optional episodes, and slide-generation approaches).
- How do the **audience problem and the modality problem interact**? For
  example, does a supporter/trainer audience need *more* demonstration and
  *more* "how I'd teach this" meta-commentary, while an end-user audience needs
  *more* hands-on doing? If so, how should one lesson encode that?

### Question 2a — Does the Carpentries Workbench afford a slides artifact today, and what would it take?

This is a concrete, technical feasibility question about my actual toolchain.
The lesson is built on **The Carpentries Workbench** (the `sandpaper` /
`pegboard` / `varnish` R-based system that renders episodes from Markdown).

- Out of the box, **does the Workbench support generating or hosting a slides
  artifact** as a first-class part of the lesson (e.g., a "Slides" link in the
  rendered site, slides built from the same episode Markdown)? Or is the
  Workbench fundamentally a prose/episode renderer with no native slide path?
- What do **real lessons currently do** when they want slides alongside a
  Workbench lesson? Survey the actual options and how teams wire them up:
  - committing static slide decks (PDF/PPTX/Google Slides links) under
    `instructors/` or `learners/` and linking them — what we do now;
  - a separate **reveal.js / Quarto / Marp / remark** deck in the same repo,
    built by a separate CI step;
  - generating slides **from the episode Markdown** (single-source) via Quarto,
    Pandoc, or a custom script, so slides and the workbook can't drift;
  - any community extensions, GitHub Actions, or `sandpaper` hooks that already
    do this.
- For each option, give the **trade-offs** (single-source vs. drift, build
  complexity, who can maintain it, how it renders on the published site) and say
  which is most realistic for a small team that wants slides and a hands-on
  workbook to stay in sync.
- Then: **what would it actually take** to add a single-source slides path to an
  existing Workbench lesson? Sketch the concrete steps, the files/CI involved,
  the likely failure points, and a rough effort estimate. If the honest answer
  is "the Workbench won't do this cleanly and you should keep slides as a
  parallel Quarto/reveal.js artifact," say that plainly.

## Synthesis and blind spots

- Give me the **top 5 highest-leverage changes** across both questions,
  prioritized, each with: what to change, the evidence/framework behind it
  (dated link), and effort level (quick win vs. larger rework).
- Then a short **"blind spots" list**: assumptions I'm probably making that the
  research would challenge.

## Output format

Organize as Question 1, Question 2, Synthesis (top-5), and Blind Spots. For every
recommendation give (a) the concrete change, (b) the evidence/framework with a
dated citation, and (c) effort level. Note confidence and flag anything genuinely
unsettled.
