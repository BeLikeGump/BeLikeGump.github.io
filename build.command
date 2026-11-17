#!/bin/bash
cd "$(dirname "$0")"
exec bash scripts/jekyll build
