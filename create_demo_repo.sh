#!/bin/bash
set -e

# ====================================================================================== 
#  RESEARCH SOFTWARE DEMO REPO GENERATOR (FOR INSTRUCTORS)
# ====================================================================================== 
#  Usage:
#     bash create_demo_repo.sh
#
#  Description:
#     This script generates a Git repository named 'software-demo' with a commit history
#     that matches the progression of the "Sharing Research Software" lesson.
#
#     It creates branches for each stage (e.g., '02-license', '04-citation') so you
#     can easily checkout specific states for live demos or screenshotting.
#
#  INSTRUCTOR PREPARATION:
#     1. Move this script OUTSIDE your lesson repo (e.g. to ~/projects/).
#     2. Run the script: bash create_demo_repo.sh
#     3. (Optional) Create a repo on GitHub and push all branches/tags using the 
#        commands printed at the end of this script.
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

# Name of the folder/repo to be created
REPO_NAME="software-demo"

# --- HELPER FUNCTION: checkpoint ---
checkpoint() {
    local BRANCH_NAME=$1
    local MSG=$2
    
    echo "--> Committing state: $BRANCH_NAME"
    git add .
    git commit -m "$MSG" --quiet
    git branch "$BRANCH_NAME"
}

# ====================================================================================== 
#  EPISODE 1: SHARING RESEARCH SOFTWARE (The Setup)
# ====================================================================================== 
echo "Creating directory $REPO_NAME..."
mkdir -p "$REPO_NAME/src"
cd "$REPO_NAME"

git init --quiet
git config user.name "Researcher"
git config user.email "researcher@example.org"
git config commit.gpgsign false
git config init.defaultBranch main

echo "# Biodiversity Analysis Toolkit

Analysis tools for biodiversity research data.
" > README.md

echo "# environment configuration
[env]
python = '3.9'
" > environment.toml

echo "import numpy as np

def analyze_data():
    data = np.random.normal(0, 1, 1000)
    print(f'Mean: {np.mean(data)}')
    print(f'Std: {np.std(data)}')

if __name__ == '__main__':
    analyze_data()
" > src/analysis.py

checkpoint "01-start" "Initial commit: basic project structure"


# ====================================================================================== 
#  EPISODE 2: CHOOSING AN OPEN-SOURCE LICENSE
# ====================================================================================== 
cat <<EOF > LICENSE
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

echo "
## License

This project is licensed under the BSD 3-Clause License - see the [LICENSE](LICENSE) file for details.
" >> README.md

checkpoint "02-license" "Add BSD 3-Clause License and update README"


# ====================================================================================== 
#  EPISODE 3: MANAGING ENVIRONMENTS WITH PIXI
# ====================================================================================== 
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
echo ".pixi
*.pyc
__pycache__
" > .gitignore
echo "pixi.lock merge=ours
" > .gitattributes

checkpoint "03-pixi" "Initialize pixi environment and add dependencies"


# ======================================================================================
#  EPISODE 4: ADDING A CITATION.CFF FILE
# ======================================================================================
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
url: "https://github.com/jt14den/software-demo"
EOF

checkpoint "04-citation" "Add CITATION.cff"


# ======================================================================================
#  EPISODE 5: MAKING YOUR SOFTWARE CITABLE (RELEASES)
# ======================================================================================
echo "--> Creating release tag: v0.1.0"
git tag -a v0.1.0 -m "Release v0.1.0: Initial public version

This release includes:
- BSD 3-Clause License
- Reproducible environment (pixi)
- CITATION.cff for academic credit
- Complete documentation

Ready for Zenodo archival and DOI minting."

git branch "05-release"


# ======================================================================================
#  EPISODE 6: IMPROVING METADATA & DISCOVERABILITY (OSPO Alignment)
# ======================================================================================

# Add .zenodo.json for rich metadata
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
2. Create a branch from \`main\`.
3. Submit your pull request when you have a working implementation.
4. We prefer **small, focused pull requests**.

## Code of Conduct

Please read and abide by our [Code of Conduct](./CODE_OF_CONDUCT.md).
EOF

cat <<EOF > CODE_OF_CONDUCT.md
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

- **Reproducible Environment**: Uses [pixi](https://pixi.sh) for cross-platform dependency management
- **Citable**: Includes CITATION.cff and DOI via Zenodo
- **Open Source**: Licensed under BSD 3-Clause

## Getting Started

### Prerequisites

- [pixi](https://pixi.sh) (includes Python and all dependencies)

### Installation & Usage

1. Clone the repository:
   \`\`\`bash
   git clone https://github.com/jt14den/software-demo.git
   cd software-demo
   \`\`\`

2. Install dependencies and run the analysis:
   \`\`\`bash
   pixi install
   pixi run python src/analysis.py
   \`\`\`

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
url: "https://github.com/jt14den/software-demo"
repository-code: "https://github.com/jt14den/software-demo"
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

checkpoint "06-metadata" "Improve metadata: aligned README, CONTRIBUTING, and CoC"


# ====================================================================================== 
#  CONCLUSION & INSTRUCTIONS
# ====================================================================================== 

echo ""
echo "========================================================="
echo "✅  Demo Repository Created Successfully!"
echo "    Location: $(pwd)"
echo "========================================================="
echo ""
echo "HOW TO USE DURING THE LESSON:"
echo "---------------------------------------------------------"
echo "You can move through the lesson stages using 'git checkout':"
echo "  git checkout 01-start     # Initial state (Slide 3)"
echo "  git checkout 02-license   # Added License (Slide 6)"
echo "  git checkout 03-pixi      # Added Environment (Slide 9)"
echo "  git checkout 04-citation  # Added Citation (Slide 12)"
echo "  git checkout 05-release   # Tagged v0.1.0 (Slide 15)"
echo "  git checkout 06-metadata  # Final OSPO state (Slide 19)"
echo ""
echo "HOW TO PUSH TO GITHUB:"
echo "---------------------------------------------------------"
echo "1. Create a NEW empty repo at https://github.com/new"
echo "   Name: software-demo"
echo "   Description: Demo repository for UC Love Data Week 2026"
echo "   (Keep it PUBLIC)"
echo ""
echo "2. Push from $(pwd):"
echo ""
echo "   git remote add origin https://github.com/jt14den/software-demo.git"
echo "   git push -u origin --all"
echo "   git push -u origin --tags"
echo ""
echo "========================================================="
echo "HOW TO GET A ZENODO SANDBOX DOI (For Teaching):"
echo "========================================================="
echo ""
echo "IMPORTANT: Use Zenodo SANDBOX for demo repositories!"
echo ""
echo "Step 1: Create Zenodo Sandbox Account"
echo "  - Go to: https://sandbox.zenodo.org"
echo "  - Sign up with GitHub OAuth (or create account)"
echo ""
echo "Step 2: Link GitHub Repository"
echo "  - In Zenodo Sandbox: Settings → GitHub"
echo "  - Click 'Connect' and authorize"
echo "  - Find 'software-demo' and flip the toggle ON"
echo ""
echo "Step 3: Create a GitHub Release"
echo "  - Go to: https://github.com/jt14den/software-demo/releases"
echo "  - Click 'Draft a new release'"
echo "  - Choose tag: v0.1.0 (already created)"
echo "  - Title: 'Release v0.1.0'"
echo "  - Click 'Publish release'"
echo ""
echo "Step 4: Get Your Sandbox DOI"
echo "  - Zenodo Sandbox automatically creates a record"
echo "  - Go to: https://sandbox.zenodo.org/me/uploads"
echo "  - Find your record, get DOI (format: 10.5072/zenodo.XXXXX)"
echo ""
echo "Step 5: Update Your Repository"
echo "  - Copy the real sandbox DOI"
echo "  - Update CITATION.cff (replace 10.5072/zenodo.123456)"
echo "  - Update README.md badge URL"
echo "  - Commit and push changes"
echo ""
echo "SAMPLE DOI FORMAT:"
echo "  Sandbox: 10.5072/zenodo.XXXXX"
echo "  Production (real): 10.5281/zenodo.XXXXX"
echo ""
echo "========================================================="
echo "QUICK REFERENCE:"
echo "========================================================="
echo "Demo repo: https://github.com/jt14den/software-demo"
echo "Zenodo Sandbox: https://sandbox.zenodo.org"
echo "Zenodo Production: https://zenodo.org (don't use for demos!)"
echo ""
echo "========================================================="
echo "INSTRUCTOR NOTE:"
echo "========================================================="
echo "- Share the GitHub URL with learners"
echo "- Show the Zenodo linking process during Slide 15"
echo "- The placeholder DOI (10.5072/zenodo.123456) works for slides"
echo "- Update with real sandbox DOI before workshop if time permits"
echo "========================================================="