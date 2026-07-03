#!/bin/bash
set -e

# Stage the static site into _build/html, then publish it to the
# gh-pages branch that GitHub Pages serves (https://solerom.github.io/0XSOL/).

rm -rf _build
mkdir -p _build/html

# Copy the static site into the build dir.
# index.html is the landing page; add more files/globs here as the site grows.
cp index.html vladSolov.pdf _build/html/

# Publish _build/html to the gh-pages branch and push.
#   -n  add a .nojekyll file (serve files as-is, skip Jekyll processing)
#   -p  push to the remote after committing
#   -f  force (overwrite the gh-pages history)
ghp-import -n -p -f _build/html
