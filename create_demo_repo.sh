#!/bin/bash
set -e

# ======================================================================================
#  RESEARCH SOFTWARE DEMO REPO GENERATOR (FOR INSTRUCTORS)
# ======================================================================================
#  Usage:
#     bash create_demo_repo.sh
#
#  Description:
#     Generates a Git repository named 'software-demo' for the "Sharing Research
#     Software" lesson, in its GitHub-native (fork + web) form.
#
#     - `main` is the STARTING STATE that learners fork: a bare project with no
#       license, citation file, release, or metadata.
#     - A chain of view-only REFERENCE BRANCHES shows the target state after each
#       episode, so learners can check their work in the browser:
#
#         main → after-license → after-citation → after-release → after-metadata
#
#     - `optional-pixi` branches off `after-metadata` and is the ONLY branch that
#       contains pixi files. Nothing in the main chain depends on pixi.
#
#  INSTRUCTOR PREPARATION:
#     1. Move this script OUTSIDE your lesson repo (e.g. to ~/projects/).
#     2. Run the script: bash create_demo_repo.sh
#     3. Push all branches and tags to GitHub (commands printed at the end).
#
#  WARNING:
#     Do NOT run this script inside an existing Git repository.
# ======================================================================================

# --- SAFETY CHECK: Ensure we aren't creating a nested repo ---
if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "⚠️  WARNING: You are currently inside an existing Git repository!"
    echo "   Running this here will create a nested repository at: $(pwd)/software-demo"
    echo "   This is usually NOT what you want."
    echo ""
    read -p "Are you sure you want to proceed? (y/N) " -n 1 -r
    echo ""
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Aborting. Please move this script to a folder outside of git (e.g. ~/projects) and run it there."
        exit 1
    fi
fi

REPO_NAME="software-demo"
UPSTREAM="UC-OSPO-Network/software-demo"

# --- HELPER: start a new reference branch off the current one and commit a state ---
stage() {
    local BRANCH_NAME=$1
    local MSG=$2
    echo "--> Building reference branch: $BRANCH_NAME"
    git checkout -b "$BRANCH_NAME" --quiet
    git add .
    git commit -m "$MSG" --quiet
}

# ======================================================================================
#  main — THE STARTING STATE (what learners fork)
# ======================================================================================
echo "Creating directory $REPO_NAME..."
mkdir -p "$REPO_NAME/src"
cd "$REPO_NAME"

git init --quiet
git config user.name "Researcher"
git config user.email "researcher@example.org"
git config commit.gpgsign false
git config init.defaultBranch main
git checkout -b main --quiet 2>/dev/null || git branch -m main

cat <<'EOF' > README.md
# Biodiversity Analysis Toolkit

Analysis tools for biodiversity research data.

> **Note for learners:** this is the *starting state* for the
> "Sharing Research Software" lesson. It intentionally has no license,
> citation file, release, or metadata. You'll add those over the course of
> the lesson. To see the finished version, switch to the `after-metadata`
> branch in the branch dropdown.
EOF

cat <<'EOF' > requirements.txt
numpy
EOF

cat <<'EOF' > src/analysis.py
import numpy as np


def analyze_data():
    data = np.random.normal(0, 1, 1000)
    print(f'Mean: {np.mean(data)}')
    print(f'Std: {np.std(data)}')


if __name__ == '__main__':
    analyze_data()
EOF

git add .
git commit -m "Initial project: analysis script, README, and requirements" --quiet
echo "--> main is at the starting state"

# ======================================================================================
#  after-license — Episode 2: add a LICENSE
# ======================================================================================
git checkout main --quiet
git checkout -b after-license --quiet

cat <<'EOF' > LICENSE
BSD 3-Clause License

Copyright (c) 2026, The Regents of the University of California
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived from
   this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
EOF

cat <<'EOF' >> README.md

## License

This project is licensed under the BSD 3-Clause License - see the [LICENSE](LICENSE) file for details.
EOF

git add .
git commit -m "Add BSD 3-Clause license and README license section" --quiet

# ======================================================================================
#  after-citation — Episode 3: add CITATION.cff
# ======================================================================================
git checkout -b after-citation --quiet

cat <<EOF > CITATION.cff
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
url: "https://github.com/$UPSTREAM"
EOF

git add .
git commit -m "Add CITATION.cff" --quiet

# ======================================================================================
#  after-release — Episode 4: release v0.1.0 + Zenodo DOI (badge + cff doi)
# ======================================================================================
git checkout -b after-release --quiet

# Add a DOI badge to the top of the README (placeholder points at Zenodo Sandbox).
cat <<'EOF' > README.md
# Biodiversity Analysis Toolkit

[![DOI](https://sandbox.zenodo.org/badge/DOI/10.5072/zenodo.123456.svg)](https://doi.org/10.5072/zenodo.123456)

Analysis tools for biodiversity research data.

> **Note:** the DOI above points to Zenodo Sandbox for teaching purposes.

## License

This project is licensed under the BSD 3-Clause License - see the [LICENSE](LICENSE) file for details.
EOF

# Record the DOI in CITATION.cff
cat <<EOF > CITATION.cff
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
doi: 10.5072/zenodo.123456
date-released: 2026-02-01
url: "https://github.com/$UPSTREAM"
repository-code: "https://github.com/$UPSTREAM"
EOF

git add .
git commit -m "Record Zenodo DOI for the v0.1.0 release" --quiet
git tag -a v0.1.0 -m "Release v0.1.0: first citable version (LICENSE + CITATION.cff + DOI)"

# ======================================================================================
#  after-metadata — Episode 5: full metadata + community docs (THE FINISHED REPO)
# ======================================================================================
git checkout -b after-metadata --quiet

cat <<EOF > .zenodo.json
{
  "title": "Biodiversity Analysis Toolkit",
  "description": "Analysis tools for biodiversity research data. Demonstrates reproducible research software workflows following FAIR4RS principles.",
  "version": "0.1.0",
  "upload_type": "software",
  "creators": [
    {
      "name": "Dennis, Tim",
      "affiliation": "University of California Los Angeles",
      "orcid": "0000-0001-6632-3812"
    },
    {
      "name": "Phan, Leigh",
      "affiliation": "University of California Los Angeles",
      "orcid": "0000-0002-8605-1444"
    },
    {
      "name": "Otsuji, Reid",
      "affiliation": "University of California San Diego",
      "orcid": "0000-0002-1842-0295"
    },
    {
      "name": "Padilla, Karla",
      "affiliation": "University of California San Diego"
    }
  ],
  "keywords": [
    "biodiversity",
    "research-software",
    "reproducibility",
    "fair4rs",
    "python",
    "data-analysis"
  ],
  "license": "BSD-3-Clause",
  "access_right": "open"
}
EOF

cat <<'EOF' > CONTRIBUTING.md
# CONTRIBUTING

## Welcome!

Welcome! We're glad you want to contribute to our project! 💖

## Ways to Contribute

Since this is a very small project there are just a few kinds of contributions we anticipate:

- Bug fixes (spelling corrections, broken link fixes, etc.)
- New content (additions to the analysis)

## Pull Request Lifecycle

1. **Fork and Clone** the repo.
2. Create a branch from `main`.
3. Submit your pull request when you have a working implementation.
4. We prefer **small, focused pull requests**.

## Code of Conduct

Please read and abide by our [Code of Conduct](./CODE_OF_CONDUCT.md).
EOF

cat <<'EOF' > CODE_OF_CONDUCT.md
# CODE OF CONDUCT

## Our Pledge

We pledge to make our community welcoming, safe, and equitable for all.

## Reporting an Issue

To report a possible violation, please contact the project maintainers.
EOF

cat <<EOF > README.md
# Biodiversity Analysis Toolkit

[![DOI](https://sandbox.zenodo.org/badge/DOI/10.5072/zenodo.123456.svg)](https://doi.org/10.5072/zenodo.123456)
[![License](https://img.shields.io/badge/License-BSD_3--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

Analysis tools for biodiversity research data. This project demonstrates reproducible research software workflows.

> **Note:** This is a teaching/demo repository. The DOI above points to Zenodo Sandbox for demonstration purposes.

## Features

- **Citable**: Includes CITATION.cff and a DOI via Zenodo
- **Open Source**: Licensed under BSD 3-Clause
- **Documented**: README, contributing guide, and code of conduct

## Getting Started

### Prerequisites

- Python 3.9+

### Installation & Usage

1. Clone the repository:
   \`\`\`bash
   git clone https://github.com/$UPSTREAM.git
   cd software-demo
   \`\`\`

2. Install dependencies and run the analysis:
   \`\`\`bash
   pip install -r requirements.txt
   python src/analysis.py
   \`\`\`

> Want a fully reproducible, cross-platform environment (Python + R with a lockfile)?
> See the optional pixi setup on the \`optional-pixi\` branch.

## Contributing

Contributions are welcome! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## Code of Conduct

Please read and abide by our [Code of Conduct](CODE_OF_CONDUCT.md).

## Citation

If you use this software, please cite it using the metadata in [CITATION.cff](CITATION.cff) or via the DOI badge above.

## License

This project is licensed under the BSD 3-Clause License - see the [LICENSE](LICENSE) file for details.

## Authors

- Tim Dennis (UCLA)
- Leigh Phan (UCLA)
- Reid Otsuji (UCSD)
- Karla Padilla (UCSD)

## Contact

For questions or feedback, please open an issue in this repository.
EOF

cat <<EOF > CITATION.cff
cff-version: 1.2.0
title: "Biodiversity Analysis Toolkit"
message: "If you use this software, please cite it as below."
authors:
  - family-names: "Dennis"
    given-names: "Tim"
    orcid: "https://orcid.org/0000-0001-6632-3812"
    affiliation: "University of California Los Angeles"
  - family-names: "Phan"
    given-names: "Leigh"
    orcid: "https://orcid.org/0000-0002-8605-1444"
    affiliation: "University of California Los Angeles"
  - family-names: "Otsuji"
    given-names: "Reid"
    orcid: "https://orcid.org/0000-0002-1842-0295"
    affiliation: "University of California San Diego"
  - family-names: "Padilla"
    given-names: "Karla"
    affiliation: "University of California San Diego"
version: "0.1.0"
doi: 10.5072/zenodo.123456
date-released: 2026-02-01
url: "https://github.com/$UPSTREAM"
repository-code: "https://github.com/$UPSTREAM"
keywords:
  - biodiversity
  - research-software
  - reproducibility
  - fair4rs
  - python
  - data-analysis
abstract: "Analysis tools for biodiversity research data. Demonstrates reproducible research software workflows following FAIR4RS principles."
license: BSD-3-Clause
EOF

git add .
git commit -m "Improve metadata and add community docs (README, CONTRIBUTING, CoC, .zenodo.json)" --quiet

# ======================================================================================
#  optional-pixi — OPTIONAL episode: reproducible environment with pixi
#  (branches off after-metadata; the ONLY branch with pixi files)
# ======================================================================================
git checkout -b optional-pixi --quiet

cat <<EOF > pixi.toml
[project]
name = "biodiversity-analysis-toolkit"
version = "0.1.0"
description = "Analysis tools for biodiversity research data"
authors = [
    "Tim Dennis <tdennis@library.ucla.edu>",
    "Leigh Phan <leighphan@library.ucla.edu>",
    "Reid Otsuji <rotsuji@ucsd.edu>",
    "Karla Padilla <kpadilla@ucsd.edu>"
]
channels = ["conda-forge"]
platforms = ["osx-arm64", "linux-64", "win-64", "osx-64"]

[tasks]

[dependencies]
python = "*"
numpy = "*"
r = "*"
r-dplyr = "*"
EOF

touch pixi.lock
cat <<'EOF' > .gitignore
.pixi
*.pyc
__pycache__
EOF
cat <<'EOF' > .gitattributes
pixi.lock merge=ours
EOF

cat <<'EOF' >> README.md

## Reproducible environment (pixi)

This branch adds a [pixi](https://pixi.sh) environment so the project runs identically
across machines (Python and R, pinned by a lockfile):

```bash
pixi install
pixi run python src/analysis.py
```
EOF

git add .
git commit -m "Add optional pixi environment (pixi.toml, lockfile, gitignore/attributes)" --quiet

# --- Leave the working tree on main (the starting state learners fork) ---
git checkout main --quiet

# ======================================================================================
#  CONCLUSION & INSTRUCTIONS
# ======================================================================================
echo ""
echo "========================================================="
echo "✅  Demo Repository Created Successfully!"
echo "    Location: $(pwd)"
echo "    Checked out: main (starting state)"
echo "========================================================="
echo ""
echo "REFERENCE BRANCHES (view-only answer keys):"
echo "---------------------------------------------------------"
echo "  main            # starting state (what learners fork)"
echo "  after-license   # + LICENSE"
echo "  after-citation  # + CITATION.cff"
echo "  after-release   # + DOI badge/cff, tag v0.1.0"
echo "  after-metadata  # finished repo (README, CONTRIBUTING, CoC, .zenodo.json)"
echo "  optional-pixi   # optional pixi episode (off after-metadata)"
echo ""
echo "HOW TO PUSH TO GITHUB:"
echo "---------------------------------------------------------"
echo "1. Create a NEW empty PUBLIC repo named 'software-demo' under the"
echo "   UC-OSPO-Network org: https://github.com/organizations/UC-OSPO-Network/repositories/new"
echo "   (No README/license/gitignore — this repo already has them.)"
echo ""
echo "2. Push all branches and tags from $(pwd):"
echo ""
echo "   git remote add origin https://github.com/$UPSTREAM.git"
echo "   git push -u origin --all"
echo "   git push -u origin --tags"
echo ""
echo "3. On GitHub, confirm the default branch is 'main'."
echo ""
echo "========================================================="
echo "ZENODO SANDBOX DOI (for teaching):"
echo "========================================================="
echo "IMPORTANT: use Zenodo SANDBOX for demo repositories."
echo ""
echo "  1. Sign in at https://sandbox.zenodo.org with GitHub."
echo "  2. Settings → GitHub → toggle 'software-demo' ON."
echo "  3. On GitHub: Releases → Draft a new release → tag v0.1.0 → Publish."
echo "  4. Zenodo mints a sandbox DOI (format 10.5072/zenodo.XXXXX)."
echo "  5. Replace the placeholder 10.5072/zenodo.123456 in the README badge"
echo "     and CITATION.cff on the after-release / after-metadata branches if"
echo "     you want the real DOI to resolve during the workshop."
echo ""
echo "========================================================="
echo "INSTRUCTOR NOTE:"
echo "========================================================="
echo "- Learners FORK $UPSTREAM (main only) and work in the browser."
echo "- The after-* branches stay upstream as view-only reference states."
echo "- Only the optional pixi episode needs a local install."
echo "========================================================="
