#!/bin/bash
REPO_PATH="/Users/timdennis/projects/carpentries/software-demo"
ASSETS_DIR="$(pwd)/slide_assets"

cd "$REPO_PATH"

capture_stage() {
    local branch=$1
    local stage_name=$2
    local annotations=$3
    echo "Capturing $stage_name..."
    git checkout "$branch" --quiet
    
    {
        echo "=== STAGE: $stage_name (Branch: $branch) ==="
        echo "--- DIRECTORY STRUCTURE ---"
        # Run tree and then use sed to add annotations if they match
        if [ -n "$annotations" ]; then
            tree -F -I .git | sed "$annotations"
        else
            tree -F -I .git
        fi
        echo ""
        
        if [ -f "CITATION.cff" ]; then
            echo "--- CITATION.CFF ---"
            cat CITATION.cff
            echo ""
        fi
        
        if [ -f "pixi.toml" ]; then
            echo "--- PIXI.TOML ---"
            cat pixi.toml
            echo ""
        fi
    } > "$ASSETS_DIR/${branch}_content.txt"
}

# Define annotations for sed (pattern replacement)
ANN_01="s/environment.toml/environment.toml   <-- 'Just works for me'/; s/README.md/README.md          <-- 'Just a title'/; s/analysis.py/analysis.py    <-- The hidden logic/"
ANN_02="s/LICENSE/LICENSE            <-- 🛡️ UNLOCKS REUSE/"
ANN_03="s/pixi.lock/pixi.lock          <-- 🔒 THE SNAPSHOT (Exact Versions)/; s/pixi.toml/pixi.toml          <-- 📋 THE MANIFEST (Dependencies)/"
ANN_04="s/CITATION.cff/CITATION.cff       <-- 🎓 ACADEMIC CREDIT/"
# For stage 6, we use the "Healthy Tree" style from the guide
ANN_06="s/CITATION.cff/🟢 CITATION.cff        (Credit)/; s/CODE_OF_CONDUCT.md/🔵 CODE_OF_CONDUCT.md  (Safety)/; s/CONTRIBUTING.md/🔵 CONTRIBUTING.md     (Collaboration)/; s/LICENSE/🔴 LICENSE             (Legal)/; s/pixi.lock/🟠 pixi.lock           (Reproducibility)/; s/pixi.toml/🟠 pixi.toml           (Environment)/; s/README.md/⚪ README.md           (The Front Door)/"

capture_stage "01-start" "The Before State" "$ANN_01"
capture_stage "02-license" "Licensing" "$ANN_02"
capture_stage "03-pixi" "Reproducibility" "$ANN_03"
capture_stage "04-citation" "Metadata" "$ANN_04"
capture_stage "05-release" "Versioning" ""
capture_stage "06-metadata" "The After State" "$ANN_06"

git checkout main --quiet
echo "Done! Annotated assets generated in $ASSETS_DIR"
