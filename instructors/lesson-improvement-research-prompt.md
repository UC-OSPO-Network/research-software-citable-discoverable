# ChatGPT Deep-Research Prompt — Lesson Improvement

Paste the block below into ChatGPT (use a deep-research / browsing-enabled mode).
Replace nothing; it is self-contained. Date context: written June 2026.

---

You are helping me improve a half-day Carpentries Incubator lesson called
**"Sharing Research Software: Reproducible, Citable, and Discoverable."** I want
current, well-sourced, specific recommendations — not generic advice. Prefer
sources from the last ~18 months, cite them with links and dates, and flag where
the field is genuinely unsettled or where guidance has recently changed.

## What the lesson currently is

- Format: half-day (~3–4 hr), hands-on. Learners start from a minimal GitHub
  repo and leave with: an open-source license, a `CITATION.cff` file, a
  versioned GitHub release, a Zenodo (Sandbox) DOI, and improved discovery
  metadata.
- Framing: FAIR4RS principles (Findable, Accessible, Interoperable, Reusable for
  Research Software).
- Episodes: (1) Intro / "works on my machine" + software citation problem;
  (2) Choosing an open-source license; (3) *optional* reproducible environments
  with **pixi**; (4) Adding a `CITATION.cff` file; (5) Making software citable
  (GitHub release + Zenodo DOI + SemVer + Software Heritage); (6) Improving
  metadata and discoverability (README 7-section structure, GitHub repo
  features, community health files, institutional repositories); (7) Wrap-up.
- It is UC-flavored: references UC OSPO Network resources, the UC OSS license
  chart, BSD-3-Clause as the UC default recommendation, and campus Tech
  Transfer offices.
- **Audience is being rescoped** from "researchers who code" toward a **Library
  Carpentry audience**: library and information professionals in scholarly
  communications, research data services, and open-science support roles.

## What I want from you — four areas

**1. Emerging tools and standards (this is a fast-moving area).**
   - What has changed recently in software citation / FAIR4RS tooling and
     standards? Cover at minimum: the CITATION File Format (CFF) version status
     and roadmap, CodeMeta, the relationship between CFF and CodeMeta, and
     whether I should teach one, both, or a conversion path.
   - Zenodo: any material changes to the GitHub–Zenodo integration, the new
     Zenodo (InvenioRDM) platform, DataCite metadata, or DOI versioning that
     would affect the release/DOI episode.
   - Environment/packaging: is **pixi** still a defensible teaching choice for a
     mixed Python/R library audience? Compare honestly against alternatives
     (conda/mamba, uv, renv, Docker/containers, Nix) for *teaching in a
     half-day to non-developers*.
   - Software Heritage: current role and any new "Save Code Now" / SWHID
     guidance worth teaching.
   - Funder / policy drivers worth name-checking (e.g. US OSTP/NIH/NSF data &
     software sharing expectations, EU/UKRI equivalents) — only the ones
     currently in force or imminent, with dates.

**2. Fit for a Library Carpentry / scholarly-comms audience.**
   - How should framing, examples, and exercises change when the learners are
     librarians and research-support staff rather than researchers who write
     code? What lands, what falls flat?
   - What do scholarly-comms / RDM librarians actually need to *do* with this
     (consult, teach, build local guidance, run a service) vs. just understand?
   - Are there existing Library Carpentry or library-oriented analogues I should
     align with or borrow patterns from?

**3. Pedagogy and exercises (Carpentries style).**
   - Suggest stronger formative assessments and challenge designs for each
     episode. Carpentries norms: frequent low-stakes checks, predict-then-run,
     pair work, minimal lecture.
   - Where is the half-day likely to run over, and what should be cut or made
     optional?
   - Ideas for making the live-coding / hands-on GitHub work resilient when
     learners are on different OSes and skill levels.

**4. Gaps vs. comparable curricula.**
   - Compare against The Turing Way, INTERSECT RSE training, the Software
     Sustainability Institute / Carpentries Incubator peers, RSE training, and
     any FAIR4RS-specific lessons. What do they cover that mine doesn't, and
     what (if anything) does mine do better?
   - Call out the single most important missing topic, if there is one.

## Output format

For each of the four areas: a short prioritized list of concrete, actionable
recommendations. For every recommendation, give (a) what to change, (b) why /
what evidence, with a dated link, and (c) effort level (quick win vs. larger
rework). End with a top-5 "do these first" list across all four areas.
