# Sharing Research Software: Reproducible, Citable, and Discoverable

[![Carpentries Incubator](https://img.shields.io/badge/Carpentries-Incubator-blue)](https://github.com/carpentries-incubator/)
[![Life Cycle: Alpha](https://img.shields.io/badge/Life%20Cycle-Alpha-yellow)](https://cdh.carpentries.org/the-carpentries-incubator.html#stages-of-lesson-development)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.20737729.svg)](https://doi.org/10.5281/zenodo.20737729)

A half-day [Carpentries Incubator][incubator] lesson on making research software findable, citable, and reusable. Learners start with a minimal GitHub repository and leave with a licensed, versioned release, a `CITATION.cff` file, a Zenodo DOI, and improved metadata for discovery.

**Status:** Pre-alpha — under active development. Feedback and contributions welcome via [GitHub Issues][issues].

**Audience note:** This lesson is being rescoped toward a [Library Carpentry][lc] audience — library and information professionals in scholarly communications, research data services, and open science support roles. The current content also works for researchers (postdocs, grad students) who write code and want to make it citable.

## Learning Objectives

By the end of this lesson, learners will be able to:

- Explain why software should be treated as a citable scholarly output
- Add an open-source license to a repository
- Create a `CITATION.cff` file that enables GitHub's "Cite this repository" button
- Create a versioned GitHub release and mint a DOI using Zenodo Sandbox
- Improve repository metadata for discovery across GitHub, Zenodo, and library catalogs
- Describe the role of Software Heritage as a long-term preservation archive

## Episodes

| # | Episode | Branch | Time |
|---|---------|--------|------|
| Intro | The Problem, FAIR4RS, and the Software Citation Problem | — | 15 min |
| 1 | Sharing Research Software Effectively | `01-start` | 15 min |
| 2 | Choosing an Open-Source License | `02-license` | 15 min |
| 3 | Managing Reproducible Environments with pixi *(optional)* | `03-pixi` | 20 min |
| 4 | Adding a CITATION.cff File | `04-citation` | 15 min |
| 5 | Making Your Software Citable | `05-release` | 15 min |
| 6 | Improving Metadata and Discoverability | `06-metadata` | 20 min |
| 7 | Wrap-Up and Reflection | — | 10 min |

**Total (without optional episode):** ~1 hr 45 min teaching + exercises ≈ half day

## Prerequisites

Learners should be comfortable with:

- Using GitHub (navigating repositories, basic file editing via the web interface)
- The concept of a file path and a text file

No prior programming experience is required. The optional pixi episode assumes basic familiarity with a command line.

## Demo Repository

This lesson uses a purpose-built demo repository ([UC-OSPO-Network/software-demo][demo]) with branches representing progressive states of a research software project (`01-start` through `06-metadata`). Instructors should push this repository to their own GitHub account before teaching — see the instructor notes in Episode 1 for setup instructions.

## Setup

Learners need:

- A [GitHub account](https://github.com/)
- A [Zenodo Sandbox account](https://sandbox.zenodo.org/) (free, separate from production Zenodo)
- A modern web browser

No local software installation is required for the core lesson. The optional pixi episode requires a terminal and [pixi](https://pixi.sh) installed.

## Contributing

This lesson is in pre-alpha. We especially welcome:

- Feedback from Library Carpentry instructors and learners
- Episode-level issues (content gaps, exercises that don't work, timing problems)
- Suggestions for making the lesson more relevant to library and information science audiences

Please open an [issue][issues] or submit a pull request. See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## Citation

To cite this lesson, see [CITATION.cff](CITATION.cff) or use GitHub's "Cite this repository" button.

## License

This lesson is licensed under [CC BY 4.0](LICENSE.md). Lesson infrastructure uses [The Carpentries Workbench][workbench].

## Acknowledgments

Developed under the [UC OSPO Network][ucospo]. Lesson framework and content draw on:

- [FAIR4RS Principles](https://doi.org/10.15497/RDA00068) (RDA/FORCE11/ReSA)
- [Software Citation Principles](https://doi.org/10.7717/peerj-cs.86) (Smith et al. 2016)
- [CODE Beyond FAIR](https://doi.org/10.1038/s41597-026-06705-6) (Di Cosmo et al. 2026)

[incubator]: https://github.com/carpentries-incubator/
[lc]: https://librarycarpentry.org/
[issues]: https://github.com/UC-OSPO-Network/research-software-citable-discoverable/issues
[demo]: https://github.com/UC-OSPO-Network/software-demo
[workbench]: https://carpentries.github.io/sandpaper-docs/
[ucospo]: https://ucospo.net/
