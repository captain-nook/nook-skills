# Nook Skills

Reusable agent skills for Chinese content workflows.

This repository starts with a WeChat Official Account article workflow. It is designed for people who write, edit, illustrate, format, and publish long-form Chinese articles from Markdown or Obsidian.

## What Is Included

- `skills/wechat-article-writing`: end-to-end article writing workflow.
- `skills/wechat-article-publishing`: Markdown-to-WeChat publishing and formatting workflow.
- `skills/wechat-title-writing`: title writing rules for searchable and clickable article titles.
- `skills/humanize-zh-review`: Chinese draft review workflow for reducing generic AI writing patterns.
- `templates/wechat-article-template.md`: Obsidian-friendly WeChat article template.
- `scripts/upload_wechat_images.ps1`: PicGo/PicList helper for uploading local images through a local image-bed service.
- `docs/`: setup notes, publishing workflow, image workflow, and design notes.

## Core Workflow

1. Choose the article value before drafting: who it helps, why readers care, and what they can take away.
2. Draft with a clear structure instead of generating a generic complete-looking article.
3. Review in multiple passes for factual support, judgment ownership, AI-ish phrasing, and publishing format.
4. Ask whether images are needed. Do not generate images by default.
5. If images are needed, generate or insert them, upload them to an image bed, and keep Markdown image links stable.
6. Apply the WeChat article template.
7. Copy the rendered article body into the WeChat editor.
8. Manually fill the WeChat title and summary fields from YAML frontmatter.

## Important Notes

- This repository does not include private API keys, WeChat credentials, or image-bed credentials.
- Header/footer images in the template are placeholders. Replace them with your own image URLs.
- The image upload helper assumes a PicGo/PicList-compatible local server, usually `http://127.0.0.1:36677/upload`.
- Manual copy/paste into WeChat usually carries body text, formatting, and images. It does not reliably fill title or summary fields.

## Suggested Repository Use

This repository is meant to become a home for future Nook skills. New workflows, such as transcript processing skills, can be added under `skills/` with companion docs under `docs/`.

## License

MIT. See `LICENSE`.
