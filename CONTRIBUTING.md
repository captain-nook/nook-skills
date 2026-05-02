# Contributing

Contributions are welcome.

## Skill Format

Each skill should live under:

```text
skills/<skill-name>/SKILL.md
```

Use frontmatter:

```yaml
---
name:
description:
trigger:
---
```

## Documentation

If a skill depends on external tools, add a document under `docs/`.

## Safety

Do not commit:

- API keys
- OAuth secrets
- WeChat AppSecret
- image-bed credentials
- private QR codes
- unpublished article drafts
- local absolute paths

Use placeholders and setup instructions instead.
