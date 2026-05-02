# Release Checklist

Before publishing a new skill:

- [ ] Skill has a `SKILL.md` file.
- [ ] Frontmatter includes `name`, `description`, and `trigger`.
- [ ] No local absolute paths are committed.
- [ ] No credentials or tokens are committed.
- [ ] Private examples are replaced with generic examples.
- [ ] Related docs are updated.
- [ ] README mentions the new workflow.
- [ ] Scripts have safe defaults.

For WeChat workflows:

- [ ] Template image URLs are placeholders or intentionally public.
- [ ] WeChat AppID/AppSecret are not committed.
- [ ] Manual title and summary field behavior is documented.
- [ ] Image upload limitations are documented.
