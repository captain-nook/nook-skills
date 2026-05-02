# WeChat Article Workflow

This workflow separates writing, formatting, image handling, and final publishing.

## Writing

Use `skills/wechat-article-writing/SKILL.md`.

Default flow:

1. Define article value.
2. Choose topic direction.
3. Select material.
4. Build structure.
5. Draft.
6. Review in multiple passes.
7. Ask whether images are needed.
8. Apply the WeChat article template.

## Publishing

Use `skills/wechat-article-publishing/SKILL.md`.

The final article structure is:

```text
follow prompt -> fixed header image -> word count notice -> intro block -> body -> fixed closing prompt -> fixed footer image
```

## Manual WeChat Editor Rule

When copying rendered content into the WeChat editor:

- Body text, inline styles, and image links usually paste correctly.
- The title field is separate. Copy YAML `title` manually.
- The summary field is separate. Copy YAML `summary` manually.
- If the summary is not filled manually, WeChat may auto-extract the first visible text from the body, such as "点击蓝字，关注...".

## Recommended YAML

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
