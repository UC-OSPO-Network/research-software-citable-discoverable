# Slide Deck Strategy: Making Research Software Citable & Discoverable

**Goal:** Transform the abstract concepts of FAIR4RS into concrete, visible artifacts using the `software-demo` repository history.

**Demo Repository Location:** `/Users/timdennis/projects/carpentries/software-demo`
**GitHub URL:** [https://github.com/jt14den/software-demo](https://github.com/jt14den/software-demo)

---

## 🛠 Navigation Cheat Sheet (For Screenshots)

Run these commands in your terminal to switch the repository state before taking screenshots.

```bash
# 1. The "Before" State
git checkout 01-start

# 2. Adding the License
git checkout 02-license

# 3. Adding Environment (Pixi)
git checkout 03-pixi

# 4. Adding Citation File
git checkout 04-citation

# 5. Creating a Release (Tag)
git checkout 05-release

# 6. The "After" State (Full Metadata)
git checkout 06-metadata
```

---

## 📊 Slide Breakdown & Visual Assets

### Section 1: The "Works on My Machine" Trap (Why Make Software Citable)
**Speaker:** Tim
**Concept:** The "Bus Factor" / Fragility of personal code.

*   **Visual Strategy:** Show the bare-bones repo. It looks fragile.
*   **Screenshot Source:** `git checkout 01-start`
*   **Asset to Copy:**

```text
.
├── environment.toml   <-- "Just works for me"
├── README.md          <-- "Just a title"
└── src
    └── analysis.py    <-- The hidden logic
```

---

### Section 2: Licensing (Unlocking the Repo)
**Speaker:** Karla
**Concept:** No License = "All Rights Reserved" (Legally unusable).

*   **Visual Strategy:** Show the **addition** of the `LICENSE` file.
*   **Screenshot Source:** `git checkout 02-license`
*   **Asset to Copy:**

```text
.
├── environment.toml
├── LICENSE            <-- 🛡️ UNLOCKS REUSE
├── README.md
└── src
    └── analysis.py
```

*   **Key Text to Quote:**
    > "Redistribution and use in source and binary forms... are permitted"

---

### Section 3: Why Environments Matter (The Snapshot)
**Speaker:** Leigh
**Concept:** Code rots; environments freeze time. `pixi.lock` is the time capsule.

*   **Visual Strategy:** Highlight the difference between a generic request ("I need Python") and a specific lock ("I need Python 3.9.12").
*   **Screenshot Source:** `git checkout 03-pixi`
*   **Asset to Copy:**

```text
.
├── .gitignore
├── environment.toml
├── LICENSE
├── pixi.lock          <-- 🔒 THE SNAPSHOT (Exact Versions)
├── pixi.toml          <-- 📋 THE MANIFEST (Dependencies)
├── README.md
└── src
    └── analysis.py
```

*   **Code Highlight (`pixi.toml`):**
    ```toml
    [dependencies]
    python = "*"
    numpy = "*"  <-- "Any numpy" (Risky)
    ```

---

### Section 4: CITATION.cff (The Translation Layer)
**Speaker:** Tim
**Concept:** Translating "Code" into "Academic Credit".

*   **Visual Strategy:** Show the `CITATION.cff` file as a bridge between GitHub and Zotero.
*   **Screenshot Source:** `git checkout 04-citation`
*   **Asset to Copy:**

```text
.
├── CITATION.cff       <-- 🎓 ACADEMIC CREDIT
├── LICENSE
├── pixi.lock
├── pixi.toml
├── README.md
└── src/
```

*   **Code Highlight (`CITATION.cff`):**
    ```yaml
    cff-version: 1.2.0
    title: ResearchSoftwareDemo
    authors:
      - given-names: Jane
        family-names: Doe
        orcid: ...       <-- 🆔 YOUR ACADEMIC ID
    doi: ...             <-- 🔗 YOUR PERMANENT LINK
    ```

---

### Section 5: Minting DOIs (The Release)
**Speaker:** Tim/Reid
**Concept:** A DOI is a tag on a specific version, not the whole moving project.

*   **Visual Strategy:** Show the **Tag** command. The files didn't change, but the status did.
*   **Command to Show:**
    ```bash
    git tag v0.1.0
    git push --tags
    ```
*   **Result:**
    > "This creates a snapshot on GitHub that Zenodo can grab."

---

### Section 6: Writing a README (The Welcome Mat)
**Speaker:** Reid
**Concept:** Discoverability & Community Health.

*   **Visual Strategy:** The "Full Stack" view. Show how the repo has matured from Stage 1 to Stage 6.
*   **Screenshot Source:** `git checkout 06-metadata`
*   **Asset to Copy (The "Healthy" Tree):**

```text
.
├── 🟢 CITATION.cff        (Credit)
├── 🔵 CODE_OF_CONDUCT.md  (Community / Safety)
├── 🔵 CONTRIBUTING.md     (Invitation to Collaborate)
├── 🔴 LICENSE             (Legal Permission)
├── 🟠 pixi.lock           (Reproducibility)
├── 🟠 pixi.toml           (Environment)
├── ⚪ README.md           (The Front Door)
└── src/
```

*   **The OSPO Checklist (for README):**
    *   ✅ **Features** (What does it do?)
    *   ✅ **Installation** (How do I run it?)
    *   ✅ **Citation** (How do I give credit?)
    *   ✅ **License** (Can I use it?)
