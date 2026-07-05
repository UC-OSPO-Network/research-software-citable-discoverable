# Lesson Improvement — ChatGPT Deep-Research Findings

Source: ChatGPT (browsing/deep-research mode), run June 2026, from
`lesson-improvement-research-prompt.md`. Saved verbatim for reference; see the
end of this repo's planning notes for which items were adopted.

> Confidence scores and citation markers are ChatGPT's own. Treat citations as
> leads to verify, not settled fact — several (CFF roadmap, CodeMeta v4, UKRI)
> are explicitly flagged as unsettled.

---

## Executive assessment

The lesson's comparative advantage is being **workflow-complete in a small
footprint**: learners go from a bare repo to license + `CITATION.cff` + release
+ DOI + better metadata in one half-day. Strongest single improvement is not
adding standards but **retargeting from "publish my own code" to "advise,
scaffold, and operationalize software-sharing guidance for others"** to match
the Library Carpentry audience.

Fastest high-value revisions:
1. Teach `CITATION.cff` as the hands-on baseline; CodeMeta as a conversion/
   discovery layer, not a second hand-authored file.
2. Update the Zenodo episode to current Zenodo help docs; explicitly teach
   **version DOI vs. concept DOI**.
3. Keep `pixi` **optional**, not central.
4. Add a librarian-facing **consultation workflow + campus referral map**.
5. Redesign exercises around repo triage, service scenarios, and short
   prediction checks (not setup-heavy tasks).

## Emerging tools and standards

- **CFF as required artifact, CodeMeta as optional export.** GitHub renders
  `CITATION.cff` natively; Zenodo ingests it; SWH uses `citation.cff` /
  `codemeta.json`. CodeMeta v4 is in planning (late 2025) — don't force
  beginners to hand-author both. Stable CFF spec is still 1.2.0. *(quick win,
  0.89)*
- **Rewrite Zenodo episode to current help flow + version/concept DOI rule.**
  Enable repo → archive release → inspect record. Teach: cite version DOI for
  exact reproducibility, concept DOI to point at the project. Note `.zenodo.json`
  overrides `CITATION.cff` for GitHub-archived release metadata if both present.
  Zenodo now on InvenioRDM with a first-class "GitHub and Software" docs section.
  *(quick win, 0.95)*
- **Keep pixi but demote to optional cross-language demo.** Honest alternatives:
  `uv` (Python-only), `renv` (R-first), conda/mamba/micromamba (existing conda
  shops), dev containers/Docker (heavier), Nix (steep). Core lesson must not
  hinge on any env manager working on every laptop. *(quick win to re-scope, 0.84)*
- **Strengthen Software Heritage segment** as preservation/reference complement:
  Save Code Now exists; Zenodo connects GitHub-archived records to SWH archival
  status; SWH derives citation from `citation.cff` / `codemeta.json`. *(quick
  win, 0.90)*
- **Add tightly-curated "policy drivers in force now" segment, date-specific.**
  NIH DMS policy in force + 2026 pilot DMS plan format (asks for repo + related
  software/code); NSF Public Access Plan 2.0 in effect + POSE program; Horizon
  Europe open-access-to-data + some 2025 work-programme open-source-software
  language; UKRI software/code guidance still evolving (present as draft).
  *(quick win, 0.82)*

## Fit for a Library Carpentry audience

- **Change the learner promise** from "publish your own code" to "advise and
  scaffold software-sharing practice for others." Rewrite objectives around
  three librarian tasks: review a repo, advise on minimum viable artifacts,
  build local guidance/services. Keep the hands-on workflow but frame it as a
  **consultant's sandbox**. *(quick win, 0.93)*
- **Replace most examples with library/research-support scenarios**: digital
  scholarship script needing a license; campus lab repo with no citation
  guidance; library-built OCR pipeline shared with faculty; replication package
  needing a trustworthy repo + better README; consultation where you decide
  whether to refer to tech transfer/legal. *(quick win, 0.88)*
- **Add take-home service artifacts**: one-page consultation checklist; a local
  "when to use CITATION.cff / .zenodo.json / Zenodo / institutional repo"
  decision aid; a referral map (OSPO, repository staff, scholarly comm, legal,
  tech transfer). *(moderate rework, 0.91)*
- **Teach consultation limits / referral triggers explicitly** — escalate on
  patent/commercialization, contributor IP conflicts, sensitive data leakage,
  uncertain third-party rights. Mark UC-specific tech-transfer/OSPO material as
  swappable local examples. *(quick win, 0.79)*

## Pedagogy and exercises

- **Each episode = one high-value question + one hands-on move**, with
  predict → act → inspect → discuss cycles instead of lecture blocks.
  *(moderate rework, 0.94)*
- **Cut/compress overrun risks**: env episode fully optional; compress SemVer;
  reduce SWH to a brief demo. Zenodo release processing can lag, which derails
  timing. *(quick win, 0.90)*
- **Make GitHub workflow browser-first and failure-tolerant**: nominal path =
  GitHub web UI + Zenodo Sandbox; local CLI as an advanced track. Use a template
  repo with branch/tag checkpoints and pre-scaffolded files. *(moderate, 0.87)*
- **Turn env episode into a comparison exercise** (match 3 scenarios to tools),
  not a setup lab. *(quick win, 0.85)*

Episode-by-episode redesign sketches (from the report):
- **Intro:** repo-diagnosis opener — predict what a stranger can't infer from a
  bare repo (rights, citation, latest release, preservation, where to ask help).
- **Licensing:** three-card scenario sort (BSD-3 / MIT / GPL / "refer"), defend
  in one sentence.
- **Environments:** "tool fit" comparison; show a prebuilt `pixi.toml`, don't
  require everyone to run it.
- **CITATION.cff:** fill-in-the-gaps file + predict-then-inspect the GitHub
  render; `cffinit` as guided/backup path.
- **Release/DOI:** conceptual check first (which of release tag / version DOI /
  concept DOI goes in a reproducibility citation), then do it; add one SWH check.
- **Metadata:** repo-triage rubric — pick the single highest-value fix and
  justify it.

## Gaps vs. comparable curricula

- **The Turing Way**: richer rationale/credit context; yours is faster and
  artifact-complete. Add more "why this matters."
- **Building Better Research Software / INTERSECT**: broader lifecycle (setup,
  testing, docs, collaboration, sustainability); yours has the stronger
  publication/citation finish but less maintenance/QA.
- **Library Carpentry FAIR Data & Software / DMP-for-librarians**: explicit
  library-role + service-implementation framing — this is where yours is
  underdeveloped for the new audience.
- **Carpentries Incubator "Make Code Citable" / reproducible-projects**: overlap
  on CFF/Zenodo but less current and less librarian-specific; you can outperform
  by staying current + audience-specific.
- **Single most important missing topic:** a repeatable **service workflow /
  triage model for research-support staff** (review a repo, decide minimum
  improvements, know when to refer, turn it into a local service offering).

## Top 5 priorities (from the report)

1. `CITATION.cff` as hands-on core; CodeMeta as conversion/discovery layer.
   *(quick win, 0.89)*
2. Rewrite Zenodo episode to current docs + version vs. concept DOI.
   *(quick win, 0.95)*
3. Retarget the workshop toward library service work, not authorship alone.
   *(moderate, 0.93)*
4. Make the environment episode optional and comparison-based. *(quick win, 0.84)*
5. Add a service-playbook module with triage + referral rules. *(moderate, 0.91)*

## Flagged as unsettled
- CFF: deployed spec stays 1.2.0; future evolution discussed but not guaranteed.
- CodeMeta: v4.0 in planning; teach the relationship, not dual authoring.
- UKRI: software/code expectations still draft — mention as evolving only.
