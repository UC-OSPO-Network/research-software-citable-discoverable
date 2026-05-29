# Lesson Reorganization Summary

## What's Been Done

### 1. **Created introduction.md** (New Episode 0)
- Strong motivational opening with "Works on My Machine" trap
- Concrete error message example
- Bus Factor problem explanation
- FAIR4RS principles overview
- Shows before (01-start) vs after (06-metadata) states
- References real-world example (Spack)

### 2. **Updated config.yaml**
- Reordered episodes to include introduction.md first
- Added comments mapping each episode to its branch

**New Episode Order:**
```
0. introduction.md                  → Shows 01-start vs 06-metadata
1. why-software-citation.md        → Explains why citation matters
2. sharing-software.md             → Explores 01-start branch
3. open-source-license.md          → 01-start → 02-license
4. managing-environments-pixi.md   → 02-license → 03-pixi
5. adding-citation-file.md         → 03-pixi → 04-citation
6. making-software-citable.md      → 04-citation → 05-release
7. improving-metadata-discoverability.md → 05-release → 06-metadata
8. wrap-up-reflect.md              → Final reflection
```

### 3. **Updated learners/setup.md**
- Added clear instructions for cloning the software-demo repository
- Explained the branch structure (01-start through 06-metadata)
- Provided commands for catching up during the lesson

### 4. **Added Branch Callouts**
Added to:
- ✅ sharing-software.md (01-start)
- ✅ open-source-license.md (01-start → 02-license)

### 5. **Enhanced Content with Slide Material**
All episodes now include:
- Concrete examples from slides
- Visual comparisons (❌ Bad vs ✅ Good)
- Step-by-step workflows
- UC OSPO resource links
- Memorable phrases and rules

## What Still Needs to Be Done Manually

### Add Branch Callout Boxes

You need to manually add branch callout boxes to these episodes:

**See: `ADD_BRANCH_CALLOUTS.md` for the exact text to add**

1. **managing-environments-pixi.md** → Add callout for `02-license → 03-pixi`
2. **adding-citation-file.md** → Add callout for `03-pixi → 04-citation`
3. **making-software-citable.md** → Add callout for `04-citation → 05-release`
4. **improving-metadata-discoverability.md** → Add callout for `05-release → 06-metadata`

**Where to add:** Place each callout right after the `objectives` section and before the first `##` heading.

## Branch Mapping

Each episode now corresponds to specific branches in the demo repository:

| Episode | Branch Progression | What Gets Added |
|---------|-------------------|-----------------|
| 0. Introduction | Shows 01-start & 06-metadata | Overview |
| 1. Why Citation | N/A | Motivation |
| 2. Sharing | `01-start` | Explore initial state |
| 3. License | `01-start` → `02-license` | LICENSE file |
| 4. Environments | `02-license` → `03-pixi` | pixi.toml & .gitignore |
| 5. Citation File | `03-pixi` → `04-citation` | CITATION.cff |
| 6. Releases | `04-citation` → `05-release` | Git tag v0.1.0 |
| 7. Metadata | `05-release` → `06-metadata` | README, CONTRIBUTING, CoC, .zenodo.json |
| 8. Wrap-up | Shows full progression | Reflection |

## How Learners Will Progress

### Option 1: Follow Along (Hands-on)
Learners clone the repo and checkout each branch as they go:

```bash
# Episode 2
git checkout 01-start

# Episode 3
git checkout 02-license

# etc.
```

### Option 2: Catch Up (If They Fall Behind)
Each episode has a callout box telling them which branch to checkout to jump to that point.

Example: If they join Episode 4 late:
```bash
git checkout 02-license  # Catch up to start of Episode 4
```

## Content Improvements Made

### Key Additions from Slides:

1. **Concrete Examples**
   - Actual error messages
   - Real file contents
   - Before/after comparisons

2. **Visual Formatting**
   - ❌ and ✅ symbols
   - Side-by-side comparisons
   - Code blocks with actual content

3. **Memorable Concepts**
   - "Works on My Machine" Trap
   - Bus Factor Problem
   - The 30-Second Rule (README)
   - "Vague Way" vs "Locked Way" (environments)
   - Link Rot Timeline

4. **Detailed Workflows**
   - 6-step DOI minting process
   - README structure (7 sections)
   - 5 README Best Practices
   - CITATION.cff creation options

5. **UC OSPO Resources**
   - Templates repository prominently featured
   - License guide
   - README guide
   - Contributing guide
   - All linked throughout

## Testing the Flow

To test the lesson flow:

1. Clone the demo repo: `git clone https://github.com/jt14den/software-demo.git`
2. Walk through each episode
3. Check out the corresponding branch at each step
4. Verify that each episode's content matches the branch state

## Next Steps

1. **Add remaining branch callouts** (see ADD_BRANCH_CALLOUTS.md)
2. **Test the branch progression** with the demo repository
3. **Update any instructor notes** that reference the old structure
4. **Consider adding screenshots** from slides as figures
5. **Update README** of the lesson repository to explain the new structure

## Files Created/Modified

### Created:
- `episodes/introduction.md` (new)
- `IMPROVEMENTS_SUMMARY.md` (documentation)
- `ADD_BRANCH_CALLOUTS.md` (instructions)
- `REORGANIZATION_SUMMARY.md` (this file)

### Modified:
- `index.md` (landing page with motivation)
- `config.yaml` (episode order with comments)
- `learners/setup.md` (clone instructions)
- `episodes/why-software-citation.md` (bad vs good citations)
- `episodes/sharing-software.md` (branch callout added)
- `episodes/open-source-license.md` (branch callout added)
- `episodes/managing-environments-pixi.md` (vague vs locked comparison)
- `episodes/adding-citation-file.md` (CFF examples)
- `episodes/making-software-citable.md` (6-step workflow)
- `episodes/improving-metadata-discoverability.md` (README best practices)
- `episodes/wrap-up-reflect.md` (FAIR4RS checklist)

### Deleted:
- Old template `episodes/introduction.md` (replaced with real content)

## Questions to Consider

1. Should learners fork the repo and make changes, or just observe by checking out branches?
2. Do you want exercises where they apply changes to their own repositories?
3. Should there be a "final exercise" where they start from scratch on their own project?
4. Do you want to include the Zenodo Sandbox workflow in the lesson, or keep it for instructor demo only?
