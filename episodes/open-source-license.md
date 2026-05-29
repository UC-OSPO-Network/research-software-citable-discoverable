---
title: "Choosing an Open-Source License"
teaching: 16
exercises: 14
---

:::::::::::::::::::::::::::::::::::::: questions

* Why do you need a license for your code?
* How can an open-source license increase reuse and citation?
* What licenses does the UC system recommend?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

* Explain why unlicensed software is legally restricted
* Describe the main categories of open-source licenses
* Choose an appropriate license for a UC research project
* Add a license file to a GitHub repository
* Identify UC resources for licensing decisions

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: callout

### Episode Branch: `01-start` → `02-license`

This episode adds a LICENSE file to the repository.

**Starting point:**
```bash
git checkout 01-start    # Start from the beginning
```

**After this episode:**
```bash
git checkout 02-license  # See the result with LICENSE added
```

**Catch-up point:** If joining now, run `git checkout 01-start`

::::::::::::::::::::::::::::::::::::::::::::::::

## Why licensing matters

When researchers publish code without a license, most people assume it is "public." Legally, it is not. Copyright law applies automatically. Without a license, others cannot legally reuse, modify, or redistribute the code.

Clear licensing communicates permission and expectations, reducing friction and supporting open, reproducible research. Following the [UC OSPO License Guide](https://ucospo.net/oss-resources/template-guides/license-guide/) ensures your project meets institutional standards while maximizing its impact.

::::::::::::::::::::::::::::::: callout

### Institutional Context: Who Owns Your Software?

At most universities, software created using institutional resources is owned by the institution, not the individual researcher. Before releasing code under an open-source license, check with your **Technology Transfer or Intellectual Property office**. They will verify ownership, funding requirements, and any third-party restrictions.

**If you are at a UC campus:** software is typically owned by *The Regents of the University of California*. Your campus Tech Transfer office can help you select from the [UC-approved license list](https://security.ucop.edu/resources/open-source-software-licensing.html). *(UC-specific)*

**At other institutions:** check with your research computing, library, or legal office. Most will have a similar process and a list of preferred licenses.

::::::::::::::::::::::::::::::::

## Understanding license categories

Open-source licenses fall into two broad groups.

### Permissive licenses

**Examples: BSD, MIT, Apache 2.0**

These allow broad reuse with minimal restrictions.
Anyone can copy, modify, or redistribute the code.
They are common in research because they're simple and maximize flexibility.

**BSD licenses are a common first choice at many research institutions** because they:

* originated at UC Berkeley
* are simple to understand
* protect both the institution and authors
* integrate well with most other licenses
* have minimal restrictions

### Copyleft licenses

**Example: GPL 2.0**

These require that derivative works also remain open-source.
This protects openness across the lifecycle of a project.

::::::::::::::::::::::::::::::: callout

### Note on GPL 3.0

The UC system does **not recommend GPL 3.0** for university-owned software due to patent provisions that may conflict with UC policies. If you need copyleft protection, consult your campus Tech Transfer office about GPL 2.0 or alternatives.

::::::::::::::::::::::::::::::::

## How to choose a license

Five "low-risk" licenses are suitable for most research projects. Here's a decision guide:

``` mermaid
graph TD
    Start[Starting a new UC research software project?] --> Check{Do you have<br/>special requirements?}
    
    Check -->|No special needs| BSD[Use BSD 3-Clause<br/>✓ Common research default<br/>✓ Simple and protective<br/>✓ Widely compatible]
    
    Check -->|Need simpler text| MIT[Use MIT License<br/>✓ Nearly identical to BSD<br/>✓ Shorter, easier to read<br/>✓ Very popular]
    
    Check -->|Industry partnership<br/>or patent concerns| Apache[Use Apache 2.0<br/>✓ Explicit patent protection<br/>✓ Detailed contribution terms<br/>✓ Industry-friendly]
    
    Check -->|Educational focus| ECL[Consider ECL 2.0<br/>✓ Education-specific variant<br/>✓ Based on Apache 2.0]
    
    BSD --> TTO[Verify with campus<br/>Tech Transfer Office]
    MIT --> TTO
    Apache --> TTO
    ECL --> TTO
    
    Check -->|Need copyleft| Copyleft{GPL version?}
    Copyleft -->|GPL 2.0| GPL2[May be acceptable<br/>Consult Tech Transfer]
    Copyleft -->|GPL 3.0| GPL3[❌ Not recommended by UC<br/>Patent conflicts]
    
    GPL2 --> TTO
    GPL3 --> TTO
    
    style BSD fill:#90EE90
    style MIT fill:#90EE90
    style Apache fill:#90EE90
    style ECL fill:#90EE90
    style GPL2 fill:#FFFF99
    style GPL3 fill:#FFB6C6
    style TTO fill:#87CEEB
```

### Quick reference

| Your need | Recommended license | SPDX identifier | Why |
|-----------|-------------------|-----------------|-----|
| Default / most projects | BSD 3-Clause | `BSD-3-Clause` | Common default at research institutions |
| Simplest possible | MIT | `MIT` | Minimal text, very popular |
| Industry collaboration | Apache 2.0 | `Apache-2.0` | Explicit patent terms |
| Educational focus | ECL 2.0 | `ECL-2.0` | Education-specific variant |

The **SPDX identifier** is the short, machine-readable code used by GitHub, Zenodo, and your `CITATION.cff` file to communicate your license automatically. When GitHub shows a license badge in the sidebar, it's reading the SPDX identifier.

**Always consult your institution's Tech Transfer or IP office before releasing software created with institutional resources.**

::::::::::::::::::::::::::::::::::::: callout

### What about data and documentation?

Software licenses (BSD, MIT, Apache) are written for *executable code*. If your repository also contains datasets, figures, or documentation, those files need a separate license.

The standard choice for research outputs is **Creative Commons Attribution 4.0 (CC BY 4.0)**, which allows broad reuse with attribution.

A common pattern:
- `/src` or your code files → `BSD-3-Clause` or `MIT`
- `/data` or `/docs` → `CC-BY-4.0`

You can note this split in your README and in `CITATION.cff` under the `license` field, which accepts a list:

```yaml
license:
  - BSD-3-Clause
  - CC-BY-4.0
```

Most research repositories don't need this — but if you're sharing a dataset alongside code, it's worth thinking through.

:::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::: callout

### Resources

* [ChooseALicense.com](https://choosealicense.com/) – Compare features across all common licenses.
* [SPDX License List](https://spdx.org/licenses/) – Authoritative registry of license identifiers used in CITATION.cff and package metadata.
* [UC OSPO License Guide](https://ucospo.net/oss-resources/template-guides/license-guide/) *(UC-specific)* – UC institutional requirements and templates.
* [UC OSS Chart and Companion Guide](https://security.ucop.edu/resources/open-source-software-licensing.html) *(UC-specific)* – UC-approved "low-risk" license list.

:::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::: challenge

## Challenge: Add a BSD License to Your Repository

We will add the BSD 3-Clause license to your demo repository:

1. Navigate to your repository on GitHub.
2. Click **Add file** → **Create new file**.
3. Name it `LICENSE` (or `LICENSE.txt`).
4. Click **Choose a license template** and select **BSD 3-Clause License**.
5. Update the copyright holder to reflect who owns the software. At UC campuses this is `The Regents of the University of California`; at other institutions check with your Tech Transfer office. *(If this is a personal project, use your own name.)*
6. Update the year to 2026.
7. Commit the file to your `main` branch.

**Verify:** Does your repository now display the "BSD-3-Clause" license badge in the sidebar?

:::::::::::::::::::::::: solution

GitHub automatically detects the `LICENSE` file and displays it in the sidebar. Your file should look like this:

```
BSD 3-Clause License

Copyright (c) 2026, The Regents of the University of California
All rights reserved.
```

If the badge doesn't appear, ensure the file is in the root directory and named exactly `LICENSE` or `LICENSE.txt`.

:::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::

## Communicating your license

After adding a LICENSE file, reference it in your README so users immediately understand usage terms.

Add this section near the top of your README:
```markdown
## License

This project is licensed under the BSD 3-Clause License - see the [LICENSE](LICENSE) file for details.
```

**Why this matters:** Users reading your README on platforms other than GitHub (Zenodo, email, exported PDFs) will see your license terms even without GitHub's automatic detection.

::::::::::::::::::::::::::::: challenge

## Exercise: License Scenarios

Which license would you recommend for each UC research scenario?

**Scenario 1:** A Python package for ecological data analysis. You want maximum adoption across academia and industry.

**Scenario 2:** A data visualization tool developed with a biotech partner who may commercialize derivatives.

**Scenario 3:** A simple utility script you're sharing with collaborators.

:::::::::::::::::::::::: solution

**Scenario 1:** BSD 3-Clause (UC's default recommendation, maximum flexibility and adoption)

**Scenario 2:** Apache 2.0 (explicit patent protection important for industry partnerships)

**Scenario 3:** Either BSD 3-Clause or MIT (both work well for simple sharing; BSD preferred by UC)

In all cases, verify with your campus Tech Transfer office before releasing.

:::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::

## Summary

Licensing is foundational to making research software usable, citable, and shareable.
In this episode, you added a BSD license to a repository following UC recommendations.

::::::::::::::: keypoints

* Without a license, software is legally restricted and not reusable
* BSD 3-Clause is a common default at research institutions; MIT and Apache 2.0 are strong alternatives
* Permissive licenses (BSD, MIT, Apache 2.0) maximize flexibility and adoption
* Always consult your institution's Tech Transfer or IP office before releasing institutionally-owned software
* GitHub makes adding standard licenses straightforward

:::::::::::::::
