# Be Like Gump · 写作与发布指南

这是使用 Jekyll 和 Minima 主题的个人博客。文章源文件和图片都保存在本目录，网站访客只能阅读已发布内容，没有公开写入入口。

## 本地预览

在 Finder 双击 `preview.command`，或在终端运行 `bash scripts/jekyll serve --livereload`。访问 http://127.0.0.1:4000 。修改文章会自动更新预览；修改 `_config.yml` 后需重启。

双击 `build.command` 可生成网站，输出在 `_site/`。不要直接修改或提交 `_site/`。

脚本优先使用电脑已安装的 Homebrew Ruby，不更改系统 Ruby 或终端设置。首次安装依赖：`PATH=/opt/homebrew/opt/ruby/bin:$PATH BUNDLE_PATH=vendor/bundle bundle install`。本项目锁定 Bundler 2.6.4。若电脑默认 Xcode 尚未配置，但已安装 Command Line Tools，可在依赖安装命令前加 `DEVELOPER_DIR=/Library/Developer/CommandLineTools`。

## 写文章

1. 复制 `_drafts/我的第一篇手记.md`，先在 `_drafts/` 中写作。
2. 修改标题、分类和正文。分类建议使用学习、运动、读书、感悟、经历；也支持新分类。
3. 预览草稿：`bash scripts/jekyll serve --drafts`，不要将草稿构建产物发布。
4. 正式发布时，将文章移到 `_posts/`，命名为 `2026-11-17-my-first-note.md`。日期换成实际发布日期，英文短名用于稳定网址。
5. 可以添加 `date: 2026-11-17 10:00:00 +0800` 精确指定时间。未来日期的文章默认不会构建，需要在日期到来后重新触发构建。

文件头示例：

```yaml
---
layout: post
title: "读完一本书之后"
categories: [读书]
tags: [阅读笔记]
---
```

正文使用 Markdown。标题下第一段会成为列表摘要；也可以用 `<!--more-->` 指定摘要截止位置。

## 添加图片

将图片保存到 `assets/images/`，例如 `assets/images/reading.jpg`，正文使用：

```liquid
![读书笔记]({{ '/assets/images/reading.jpg' | relative_url }})
```

避免把不准备公开的照片、文件或密码放入网站目录。`_drafts/` 不会生成网页，但如果源码仓库公开，草稿源文件仍可被查看。

## 自动发布

仓库已配置 `.github/workflows/pages.yml`：提交到 `main` 后构建并发布；拉取请求只构建，不发布。线上构建不会包含草稿。

首次启用需在 GitHub 仓库 Settings → Pages → Build and deployment 中，把 Source 设为 **GitHub Actions**。仓库地址：https://github.com/BeLikeGump/BeLikeGump.github.io 。

日常流程：写作 → 本地预览 → 提交需要发布的文件 → 推送 main → 在 Actions 查看构建结果。预期网址：https://belikegump.github.io/ 。只有线上部署成功后，才说明内容已发布。

## 常用修改位置

- `_config.yml`：站名、介绍、网址与导航。
- `about.markdown`：关于页面。
- `_data/categories.yml`：五类记录的名称与介绍。
- `assets/main.scss`：配色、间距和排版。
- `_layouts/`、`_includes/`：基于 Minima 的局部定制。

原始英文欢迎文章已保留在 `_drafts/`，不在首页公开显示。

## 当前发布状态

本地构建与草稿隔离已验证。当前电脑的 GitHub Git 登录失效，尚未推送本次更新，线上仍是原版本。请通过 GitHub Desktop 重新登录后，将本地变更提交并推送，再核对 Pages 的 Source 设置及 Actions 运行结果。不要在聊天中提供密码或访问令牌。
