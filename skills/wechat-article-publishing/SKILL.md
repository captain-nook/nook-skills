---
name: wechat-article-publishing
description: Format Markdown drafts into WeChat-ready article drafts with fixed template blocks, image rules, and manual publishing checks.
trigger: 发布公众号、公众号排版、套公众号模板、复制到公众号、WeChat publishing
---

# WeChat Article Publishing

## Responsibility

This skill formats a finished Markdown draft for WeChat publishing. It does not rewrite the article body unless the user asks.

## Required Structure

Use this order:

```text
follow prompt -> fixed header image -> word count notice -> intro block -> body -> fixed closing prompt -> fixed footer image
```

The fixed blocks should use WeChat-compatible inline HTML styles. Do not rely on external CSS.

## YAML

Recommended frontmatter:

```yaml
---
title:
summary:
tags: []
topic:
status: draft
created:
format: article
platform: 微信公众号
publish-date:
cover:
source:
relation:
derivative_type: original
image-auto-upload: true
---
```

## Manual WeChat Editor Rule

Rendered body copy/paste usually carries:

- body text
- inline styles
- images

It usually does not carry:

- title field
- summary field

Before publishing:

- copy YAML `title` to the WeChat title field
- copy YAML `summary` to the WeChat summary field
- verify the cover image
- verify all body images

If the summary field is not filled manually, WeChat may extract the first visible body text, such as the follow prompt.

## Image Handling

For fixed images:

- put header and footer image URLs in the article template
- replace placeholder URLs with your own public image URLs

For per-article images:

- use standard Markdown image syntax
- use stable image-bed URLs when possible
- check rendered preview before copying

## PicGo/PicList Upload Note

If PicGo cannot read images in non-ASCII paths, stage the files in an ASCII-only temporary directory before uploading.

This repository includes:

```text
scripts/upload_wechat_images.ps1
```

The script uploads through a PicGo/PicList-compatible local endpoint.

## Draft Sync

One-click sync to WeChat drafts may require:

- WeChat AppID
- WeChat AppSecret
- IP whitelist or proxy setup
- a compatible Markdown-to-WeChat sync tool

Do not commit these credentials.
