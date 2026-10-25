# Caravaggio (template)

**Caravaggio** is a starter template for a public, downloadable **Claude Skill**
focused on design: light, shadow, contrast, and drama in UI.
Fork it, fill in the `TODO` sections, and ship your own design skill.

> This repo is a **template**. The skill itself is intentionally unfinished.

## What is a Claude Skill?

A skill is a folder with a `SKILL.md` file (YAML frontmatter + Markdown instructions)
and optional bundled resources. Claude reads the `name` and `description` to decide
*when* to use the skill, then loads the body of `SKILL.md` *only when it triggers*.

```
caravaggio/
├── SKILL.md          # required: frontmatter + instructions
├── references/       # docs Claude reads on demand (color, type, layout...)
├── assets/           # files used in output (templates, fonts, icons)
├── scripts/          # deterministic helpers Claude can run
└── evals/            # test prompts (readable by `claude plugin eval`)
```

## Install

**Claude Code (personal, all projects)**
```bash
git clone https://github.com/JosephLiao542211/caravaggio.git
cp -r caravaggio/caravaggio ~/.claude/skills/caravaggio
```

**Claude Code (one project only)**
```bash
cp -r caravaggio/caravaggio <your-project>/.claude/skills/caravaggio
```

**Claude.ai / Desktop (upload a `.skill` file)**
```bash
./scripts/package.sh          # produces dist/caravaggio.skill
```
Then upload the file in Settings → Capabilities → Skills.

## Customise

1. Keep the `caravaggio/` folder name and the `name` field in `SKILL.md` in sync if you rename either.
2. Rewrite the `description` — it is the *only* thing Claude sees before deciding to use the skill, so say what it does **and** when to use it.
3. Fill in the `TODO` sections of `SKILL.md`. Keep it under ~500 lines; push detail into `references/`.
4. Add real test prompts under `evals/` and run them:
   ```bash
   cd caravaggio && claude plugin eval . --allow-tools Write,Edit,Bash
   ```
5. Delete this section of the README and describe your finished skill.

## Writing tips

- Explain *why* a rule exists instead of shouting MUST. Claude follows reasoning better than commands.
- Put "when to use" language in the frontmatter `description`, not the body.
- One idea per reference file; link to it from `SKILL.md` with a sentence on when to open it.
- Keep examples: an input, the output you want, and a short note on why it is good.

## License

MIT — see [LICENSE](LICENSE).
