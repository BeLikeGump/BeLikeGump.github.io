#!/bin/bash
cd "$(dirname "$0")"
exec bash scripts/jekyll serve --livereload --open-url
