#!/bin/bash
cd ~/dev/A_Gentle_Intro_to_BNF/hugo/A_Gental_Introduction_to_BNF
docker run --rm -it -v ${PWD}:/work -p 8080:1313 edhowland/hugo hugo server --bind 0.0.0.0 -D 
# /bin/bash

#   

