#!/bin/bash
# from: pandoc/core:  https://hub.docker.com/r/pandoc/core
# pandoc/latex: https://hub.docker.com/r/pandoc/latex
docker run --rm \
       --volume "$(pwd):/data" \
       --user $(id -u):$(id -g) \
       pandoc/latex README.md -o outfile.pdf
