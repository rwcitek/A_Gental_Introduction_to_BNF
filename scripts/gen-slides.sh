#!/bin/bash
# Run this to re-generate new slide deck
## cat ~/dev/A_Gentle_Intro_to_BNF/slides/???_*.md > ~/dev/A_Gentle_Intro_to_BNF/hugo/A_Gental_Introduction_to_BNF/content/_index.md 
mkdir -p ./hugo/A_Gental_Introduction_to_BNF/content/
rm -rf ./hugo/A_Gental_Introduction_to_BNF/content/_index.md
cat ./slides/???_*.md > ./hugo/A_Gental_Introduction_to_BNF/content/_index.md