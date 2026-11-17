# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Jekyll 4.4.1 blog called "Be Like Gump" using the Minima 2.5 theme. It is a personal blog for recording thoughts on work, study, and life.

## Commands

```bash
# Install dependencies
bundle install

# Serve locally with live reload (http://localhost:4000)
bundle exec jekyll serve

# Build static site to _site/
bundle exec jekyll build
```

Note: `_config.yml` changes require a server restart — live reload does not pick them up automatically.

## Architecture

- `_config.yml` — site-wide settings (title, email, description, theme, plugins)
- `_posts/` — blog posts, named `YYYY-MM-DD-title.markdown` with front matter (`layout`, `title`, `date`, `categories`)
- `index.markdown` — homepage using `layout: home`
- `about.markdown` — About page at `/about/`
- `Gemfile` — Ruby dependencies; Jekyll 4.4.1, Minima theme, jekyll-feed plugin

There are no custom `_layouts/`, `_includes/`, or `_sass/` overrides — all rendering comes from the Minima gem.

## Creating Posts

New posts go in `_posts/` with the filename format `YYYY-MM-DD-slug.markdown` and front matter:

```yaml
---
layout: post
title: "Post Title"
date: YYYY-MM-DD HH:MM:SS +0800
categories: category1 category2
---
```
