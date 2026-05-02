---
name: wechat-article-writing
description: End-to-end workflow for writing Chinese WeChat Official Account articles from ideas, notes, transcripts, or source material.
trigger: 写公众号文章、公众号稿、改成公众号、整理成公众号、WeChat article writing
---

# WeChat Article Writing

## Default Workflow

Use this skill whenever the user asks for a WeChat Official Account article.

Hard defaults:

- Start with value selection: who the article helps, why readers care, and what they can take away.
- Do not start drafting until the topic angle is clear.
- Build the structure before writing.
- Review the draft in multiple passes.
- Ask whether images are needed after the draft is reviewed.
- Do not generate images by default.
- Use the current WeChat article template for final Obsidian/Markdown delivery.

## Article Value

Before drafting, answer:

- What reader problem does this article solve?
- What new information, new judgment, or better explanation does it provide?
- What should the reader be able to do, understand, or judge after reading?

If the answer is vague, keep refining the topic.

## Drafting Rules

- Keep the publish title in YAML `title`, not in the body.
- Use the intro block to hook the reader into the problem.
- Keep headings short.
- Avoid fake scenes, fake conversations, and invented reader messages.
- Avoid generic AI filler such as "本质上", "底层逻辑", "值得注意的是", "一方面...另一方面", "综上所述".
- Prefer paragraphs that advance the argument.
- Delete material that only proves research effort but does not help the reader understand.

## Review

Run a review pass equivalent to `humanize-zh-review`.

The review must check:

- factual support
- paragraph function
- judgment ownership
- AI-ish phrasing
- title/body separation
- final YAML quality

## Optional Images

After the reviewed draft is ready, ask:

```text
这篇文章是否需要插图？可以选择：不配图 / 只要封面图 / 正文插图 / 信息图。
```

Only after confirmation should image generation or illustration planning happen.

If an external image skill is used, pass only necessary context:

- final article text
- article topic
- target reader
- desired image type
- style and size requirements

Do not merge the full image skill text into this skill.

## Final Delivery

Final Markdown should follow this order:

```text
follow prompt -> fixed header image -> word count notice -> intro block -> body -> fixed closing prompt -> fixed footer image
```

Use `templates/wechat-article-template.md` as the baseline.

Manual WeChat publishing reminder:

- copy rendered body from the preview/editor
- manually fill WeChat title from YAML `title`
- manually fill WeChat summary from YAML `summary`
- verify images after pasting
