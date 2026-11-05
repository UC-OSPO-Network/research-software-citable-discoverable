---
title: Learner Profiles
---

These profiles describe the learners this lesson is designed for. The primary audience is library and information professionals working in scholarly communications, research data services, open science support, and OSPO roles, the people who will advise researchers on these practices and often teach this material themselves. Researchers who write code are welcome and represented here too; the hands-on steps are the same for everyone.

---

## Priya — Scholarly Communications Librarian

Priya is a scholarly communications librarian at a research university. She answers copyright, open access, and research-output questions all day. She can explain a dataset DOI and walk someone through a data citation without notes. Software is the gap: when a researcher asks "how do I get a DOI for my code?" she changes the subject. She has browsed GitHub but never committed anything, and she knows YAML from maintaining the library's static site.

**Goal:** A mental model of software citation solid enough to advise from, plus real hands-on practice with CITATION.cff so she can sit next to a researcher and build one.

**Pain / obstacle:** She feels like a fraud on software questions because she assumes they require engineering knowledge. They mostly don't, but nobody has told her that.

**How this lesson helps:** It maps software citation onto the data citation model she already teaches: same DOIs, same metadata thinking, same repository logic, one new file format. The environment episode is optional and she can skip it without losing the thread. She plans to run a "Make Your Code Citable" workshop for graduate students afterward.

**After the lesson she can advise on:** CITATION.cff creation, the GitHub-to-Zenodo DOI workflow, version vs. concept DOIs, license basics and the campus default.
**She should refer out:** ownership and IP questions (Tech Transfer), anything about code quality, packaging, or making the software actually run (research computing or an RSE group).

---

## Marcus — Research Data Services Librarian

Marcus is a research data services librarian at a mid-size university. He lives in the compliance layer: data management plans, funder mandates, deposits into the institutional Dataverse. He has enough Python to run a script and enough Zenodo experience to deposit a dataset. Software questions are arriving through the same door as data questions, most recently a PI whose reviewers asked for a citable software version, and he has been improvising answers he would never accept in his data work.

**Goal:** A workflow he can put in writing and stand behind: GitHub release plus Zenodo DOI, connected to a CITATION.cff, plus a clean decision rule for when to send someone to Zenodo instead of the institutional repository.

**Pain / obstacle:** His IR does not handle software well, and he knows it. Without an endorsed alternative path, every software question turns into an awkward workaround, and he is wary of recommending anything he cannot defend to the funder-compliance side of his job.

**How this lesson helps:** It gives him the exact workflow he is missing, walked end to end on a real repository, and treats the Zenodo-versus-IR question as an advising decision rather than an embarrassment. He leaves able to add a software section to the library's RDM guidance that parallels what he already publishes for data.

**After the lesson he can advise on:** the release-plus-DOI workflow, version vs. concept DOIs, Zenodo vs. IR routing, connecting software deposits to DMP language.
**He should refer out:** license ownership (Tech Transfer), packaging and code quality (research computing / RSE group), and anything the IR platform team must decide about software support.

---

## Sofia — Postdoctoral Researcher, computational ecology

Sofia is a postdoc who maintains the GitHub repo behind her latest paper, currently under review. She writes working analysis code every day, so she is the most technically fluent learner in the room and the least fluent in scholarly communication. She uses pip with a rough requirements.txt, has never tagged a release, and her repo has no license and no citation file. She learned last week that the journal now requires a citable code deposit, and neither she nor her co-author knows precisely what that means.

**Goal:** Get from "code on GitHub" to "deposited software with a DOI" in one session, and understand what each piece does so she can repeat it unassisted on the next project.

**Pain / obstacle:** Time. She has a revision deadline, and anything framed as software engineering homework will lose her. She needs the minimum credible path, with reasons.

**How this lesson helps:** The lesson's demo repo starts exactly where her repo is (no license, no citation, no release) and ends where the journal needs her to be. She leaves with a checklist she can apply to her own repo the same afternoon, and a reason to care beyond compliance: the DOI makes her code a citable line on her CV.

---

## James — Digital Scholarship Librarian, liberal arts college

James is a digital scholarship librarian at a liberal arts college who teaches Library Carpentry (Shell, Git, OpenRefine) several times a year to mixed grad, postdoc, and faculty audiences on managed machines. He is the most technically comfortable librarian in these profiles: Git, HTML/CSS, R, and years of live-teaching experience. What he evaluates is not the content but the teachability. He has watched workshops die in the first twenty minutes to installation problems, and his participants are rarely developers.

**Goal:** A half-day lesson he can slot into his workshop series without modification, where every learner leaves with a concrete output: a licensed, citable repo with a DOI path they have actually clicked through.

**Pain / obstacle:** Setup risk and local fit. Anything requiring installs on managed machines is a hazard, so the environment episode must be genuinely skippable without breaking the lesson's narrative. And because this is a UC-authored lesson, he needs UC-specific content (license defaults, Tech Transfer references) clearly flagged so he can substitute his own institution's equivalents in minutes, not hours.

**How this lesson helps:** The core path runs through the GitHub web interface with no installation, the pixi episode is explicitly optional with instructions for skipping it, and UC-specific callouts are labeled as such. He can teach it twice a year as a standalone and later fold it into a broader open science curriculum.

**After the lesson he can advise on:** everything in the core path, plus how to teach it: pacing, the demo-repo branch progression, and where learners stumble.
**He should refer out:** his own campus's license ownership questions (their Tech Transfer equivalent) and researchers who need real environment or packaging help.

---

## Dana — Subject Liaison Librarian, no coding background

Dana is a liaison librarian for a science or social science department at a research university. She does collection development, instruction, and reference for her departments. She has never used Git, never opened a terminal, and does not intend to start. But her faculty are getting reviewer comments and funder language about sharing code, and the questions land in her inbox because she is the librarian they already know. Right now her only move is to forward the email and hope.

**Goal:** Enough of a map to triage confidently: recognize what a researcher is being asked for, explain in plain language why it matters, and know exactly who on campus handles each piece.

**Pain / obstacle:** Intimidation. If the lesson opens with a terminal or assumes GitHub fluency, she decides within ten minutes that this is not for her and stops listening. She is the learner the lesson most has to protect.

**How this lesson helps:** Everything hands-on happens in the GitHub web interface, no command line required, and the "Supporting others" boxes give her referral language rather than assuming she will do the work herself. Success for Dana is not a repo of her own. It is hearing "the journal wants a citable code deposit" and knowing it means a license, a citation file, and a Zenodo DOI, and knowing which two of those she can walk someone through and which one goes to Tech Transfer.

**After the lesson she can advise on:** recognizing the ask, explaining why a URL is not a citation, pointing to CITATION.cff and Zenodo as the standard path.
**She should refer out:** all licensing ownership questions, anything requiring the command line, environment and reproducibility mechanics.

---

## Alex — OSPO Research Software Consultant

Alex is a front-line research software consultant in a university Open Source Program Office or OSPO-like service. He comes at this from the opposite side of the table. Licensing, GitHub, community health files, contributor workflows: he is fluent in all of it, often more fluent than the librarians in the room. Researchers come to him with practical questions about whether they can put code on GitHub, which license to use, how to structure a README, and what files a healthy open source project should have.

But his consultations keep hitting a second layer of questions: "Fine, it's open, but how do I get credit for it?" "Is this something I cite, archive, publish, or all three?" "Who should be listed as an author?" "Does the DOI go in the paper, the README, or the release?" Alex's open source toolkit does not fully answer those questions.

**Goal:** The citation and preservation half of the story: how a well-run open source project becomes a citable, discoverable, countable scholarly output, and which library systems and people make that happen.

**Pain / obstacle:** Vocabulary and partners, not concepts. Alex can learn the mechanics in an afternoon, but he does not know who owns deposit, who runs the institutional repository, how DataCite metadata works, or how librarians think about citation, preservation, and scholarly credit. Without that map, he keeps solving credit problems from scratch instead of routing them.

**How this lesson helps:** It connects the practices Alex already teaches, including licensing, READMEs, releases, and community files, to the credit infrastructure researchers are judged by. It also introduces the library and scholarly communication partners Alex should be co-advising with. The strongest campus service here is not OSPO alone or library alone; it is a shared software citation and reuse service where each side understands the other's half.

**After the lesson Alex can advise on:** open source project basics, CITATION.cff, the release-to-Zenodo DOI workflow, version versus concept DOIs, and when a project needs a scholarly communication or repository partner.
**Alex should refer out:** institutional repository deposit policy, formal authorship disputes, research evaluation questions, and formal ownership determinations involving Technology Transfer or counsel.
