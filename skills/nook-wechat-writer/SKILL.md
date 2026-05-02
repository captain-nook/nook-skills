---
name: nook-wechat-writer
description: Write, revise, and review Chinese WeChat official-account articles using the nook content-production method. Use when the user asks to write a 公众号文章, produce a long-form Chinese article, turn materials into an article, refine an article draft, remove AI flavor from a WeChat article, design an article angle, or build a publishable article from notes, research, transcripts, links, or rough ideas.
---

# nook-wechat-writer

Use this skill to produce Chinese WeChat official-account articles with a clear reader value, real judgment, natural paragraph prose, and layered review.

The skill is not a prompt-template generator. It is a writing workflow: clarify the value, shape the topic, process materials, write the draft, then review hard for structure, source attribution, AI flavor, and sensitive information.

**Constraint-based generation**: This skill uses mandatory checkpoints and explicit prohibition rules (L0) to ensure output quality. Models must verify compliance with L0 rules before presenting any draft. This approach treats critical formatting and language rules as hard constraints, not suggestions.

## Core Rules

### L0: Absolute Prohibitions (Never Break)

These rules are mandatory for all outputs. Any violation = draft rejected. Check before every output.

**Formatting prohibitions:**
- No blank lines between paragraphs inside the article body (exception: one blank line after the intro blockquote).
- No checkboxes, no hanging indents, no large bullet-list blocks in body prose.
- Use natural paragraph prose as default. Lists only when information is genuinely list-shaped.

**Language prohibitions:**
- No parallelism patterns: "不是……而是……" (max 1-2 uses per article, only for real contrast), "第一、第二、第三" enumeration, consecutive same-structure sentences (3+ in a row), consecutive rhetorical questions.
- No formal checklist block structures: "定问题这块，我会问：...选材料这块，我会问：..." or "第一块...第二块..." patterns. Use natural paragraph flow with "比如，..." instead.
- No AI-flavor filler words: 综上所述, 值得注意的是, 不难发现, 本质上, 换句话说, 不可否认, 随着技术的发展, 在当今时代, 让我们来看看, 首先/其次/最后 (as paragraph starters), 赋能, 打造闭环, 深度融合, 全方位提升, 压舱石, 信息搜集官.
- No bookish phrasing: 选题站住, 材料铺满, 承担推进任务, 拉出来的观点, 结构重量, 把读者往前推, 进入问题, 丢在岔路里.
- No defensive explanations: avoid phrases like "研究别人可以很坦荡，借鉴也可以很正常" that explain away potential criticism. Just state what to do.
- Use "我/你" in natural contexts, not stiff "作者/读者" labels.
- Prefer colloquial verbs: "干的事" over "要问的是", "可没有" over "没有" for emphasis.

**Content prohibitions:**
- No table-of-contents announcements in the intro (e.g. "这篇文章将讨论……").
- No borrowed frameworks or judgments without source attribution at first use.
- No abstract method discussions without at least 2-3 concrete first-hand details.
- No prescriptive/teaching-tone endings (e.g. "下次你应该..." or "不妨先问自己..."). Prefer endings that回环 to the intro question, offer an open reflection, or share the author's current thinking without instructing the reader.

### L1: Core Rules

- Do not start writing immediately unless the user explicitly asks for a direct draft.
- First identify the article's main value: what should the reader understand, judge, or do differently after reading?
- Treat research subjects, tools, creators, and internal process notes as supporting material, not as the automatic article center.
- If using another creator's explicit framework or judgment, introduce the source at first use.
- Prefer natural paragraph prose. Do not turn the article into a one-sentence-per-line outline.
- Avoid habitual AI phrasing, especially empty transitions, excessive "not X but Y", and parallel-question scaffolding.
- Put `summary` in YAML frontmatter. Body must start with one blockquote intro paragraph, followed by one blank line.
- Publishable AI-channel articles must include publishing metadata in YAML: `publish_title`, `publish_summary`, `publish_description`, `publish_tags`, and `delivery_links`.
- `publish_title` should usually target about 30 Chinese characters when possible, balancing curiosity, search terms, and clarity. The 30-character target maximizes search keyword coverage: more characters = more opportunities for readers to find the article through different search terms. A good title must be immediately understandable at first glance—readers should grasp the problem or value within 2 seconds. Title principles: (1) Stand in the reader's shoes and show tangible benefits or value, not abstract concepts like "从完整到准确" or "判断权回到你手里". (2) Dig into real pain points: feeling unnoticed, struggling to improve quality, wanting to monetize but unable to build an IP. (3) Include concrete, relatable problems or questions (avoid abstract concepts like "分水岭"). (4) Include hot keywords related to the topic (tool names, concepts, platforms like AI, 公众号, 写作). (5) Show clear value or outcome (what readers will learn or be able to do). (6) Include specific deliverable if applicable (e.g., "四个动作", "三个方法"). (7) Quantify when possible, but avoid over-promising or clickbait (e.g., "月入过万" is too vulgar). Find the balance: specific benefits without exaggeration. (8) Focus on the author's own methodology and value, not on riding the coattails of research subjects (e.g., avoid "研究花叔和卡兹克" in titles).
- Draft `publish_title` early, before final polish. Do not wait until publication to think about the title; the title should help test the article's reader value, keywords, curiosity, and search surface during drafting.
- `publish_summary` must be under 100 Chinese characters, create curiosity without spoiling the whole article, and avoid clickbait.
- `publish_tags` must include core promotion/search keywords for the topic, such as tool names, workflow names, and concept keywords.
- For publishable drafts, do not repeat the title as a body heading.
- For publishable drafts, the body must contain structural headings: normally 2-4 level-one `#` headings, optional `##` only when naturally needed, and no `####` or deeper headings.
- The intro blockquote must be a single natural paragraph. No hard character count; aim for roughly 3 lines on a mobile screen. The intro is just an entry point—keep it brief and inviting, do not pack in details or preview the full argument. A one-line slogan still fails review.
- After the intro/body separator, do not add blank lines inside the article body. No blank lines between headings and paragraphs or between natural paragraphs.
- After the intro, do not jump straight into the first heading. Use one or two natural prose paragraphs to enter through a concrete event, story, or conflict before the first structural heading. For AI-channel pieces, prefer the sequence: long-term pain point -> real usage scene -> why the system helps -> where it still fails -> why that failure matters.
- Headings should be short, colloquial, and down-to-earth, usually 4-6 Chinese characters. Prefer conversational phrasing such as questions (e.g. "怎么选题？") over formal labels (e.g. "选题先过关"). Avoid long explanatory headings or bookish tones.
- Treat excessive parallelism, repeated rhetorical questions, and repeated "not X but Y" structures as rewrite blockers, not polish notes.
- Before writing or revising real AI-channel articles in the user's vault, consult the user's own article database first. Ask the user for their article database location if not specified. Use the latest 2 same-type pieces plus 1-3 keyword-related pieces when available.
- When the user asks for publishable AI-channel article work, the user's own article database is mandatory reference, not optional inspiration.
- Final delivery must state which database pieces were consulted and what style/process rules were extracted. If the database was not consulted, state why.
- Every publishable article must include at least 2-3 concrete first-hand details: a specific experience, a real tool interaction, a particular failure, or an actual editing decision the author made. Abstract method discussions without personal anchors are not publishable.
- Always do a sensitive-information pass before final delivery.
- When preparing a version that may be shared publicly or open-sourced, remove private names, local absolute paths, internal folder names that are only meaningful in the user's vault, tokens, IDs, secrets, and any sensitive workflow details that would not make sense to strangers.

## Execution Contract

Use this fixed loop for publishable article work:

1. Input: topic or rough idea, target reader, available materials, and whether the task is draft, rewrite, or review.
2. Output: 2-3 candidate value points, a recommendation for the main line, and a temporary `publish_title` if the task is publishable.
3. Checkpoint: the user confirms one value point or one angle before full drafting starts.
4. Output: a full article draft in the required WeChat format, including YAML, intro, headings, and natural paragraphs.
5. **Mandatory L0 Check**: Before presenting the draft, explicitly confirm each L0 rule:
   - [ ] No blank lines between body paragraphs (except after intro)
   - [ ] No checkboxes, hanging indents, or large bullet blocks
   - [ ] No parallelism: "不是……而是……" (checked count: __), "第一、第二、第三", consecutive same-structure sentences
   - [ ] No AI-flavor words: 综上所述, 值得注意的是, 本质上, 换句话说, 随着技术的发展, 让我们来看看, 首先/其次/最后, 赋能, 打造闭环, 压舱石, 信息搜集官
   - [ ] No bookish phrasing: 选题站住, 材料铺满, 承担推进任务, 把读者往前推, 进入问题, 丢在岔路里
   - [ ] Using "我/你" naturally, not "作者/读者"
   - [ ] No table-of-contents announcements in intro
   - [ ] Borrowed frameworks attributed at first use
   - [ ] At least 2-3 concrete first-hand details included
   If any item fails, fix before presenting the draft.
6. Checkpoint: run three visible review passes.
   - Pass 1: facts, names, links, metadata, and sensitive information.
   - Pass 2: structure, intro, headings, paragraph flow, and support for each section.
   - Pass 3: style, AI flavor, repeated parallelism, and final reading feel.
7. Output: final `publish_title`, `publish_summary`, `publish_tags`, and `delivery_links`, plus a short review note describing what changed in each pass.
8. Stop condition: if a blocking issue appears in any pass, fix the draft before moving on. Do not carry known problems into the final delivery.

## Reference Loading

Load references only as needed:

- For any article task, read `references/nook-content-principles.md`.
- For topic design, angle selection, or first drafts, read `references/wechat-production-workflow.md`.
- For rewriting, final polish, formatting, or AI-flavor review, read `references/wechat-style-and-review.md`.
- For open-source or public-release material, read `references/open-source-safety-and-attribution.md`.

## Default Workflow

1. Clarify the task and available materials.
2. Consult the user's AI-channel article database and extract relevant style/process cues.
3. Identify the reader, main value, and article type.
4. Decide whether the topic is ready; if not, propose a sharper angle instead of drafting.
5. Build a lightweight structure that serves the main value.
6. Write the article in natural Chinese prose.
7. **Execute mandatory L0 check**: Before presenting the draft, verify all L0 absolute prohibitions (formatting, language, content). Fix any violations immediately.
8. Review in three visible passes: hard facts, reader understanding, human judgment/style.
9. Check source attribution and sensitive information.
10. For real production drafts in the user's vault, save the Markdown artifact to the appropriate local content repository before summarizing it.
11. Deliver the draft or revision in the format requested by the user, including database-reference notes and review notes.

## Output Format

For publishable WeChat drafts, default to:

```markdown
---
title: 内部短标题
publish_title: 发布标题，建议接近 30 个字
summary: 写一段内部摘要，放在元信息里
publish_summary: 公众号摘要，不超过 100 字
publish_description: 发布说明、配套物料和链接备注
status: draft
tags:
  - 根据主题填写标签
publish_tags:
  - 根据主题填写发布话题标签
delivery_links: []
---
> One-paragraph intro.

Body starts here.
```

If the user asks for planning only, output the angle, reader value, main structure, and risks instead of a full draft.

If the user asks for review, prioritize findings and concrete revision advice before praise or summary.

## Review Checklist

- The article's main value is visible early.
- Each section serves the main line.
- External frameworks are attributed when first used.
- Materials are processed, not dumped.
- The draft avoids obvious AI flavor and ornamental parallelism.
- The ending adds judgment or closure rather than slogans.
- No keys, tokens, private database IDs, local absolute paths, or private account information remain.
