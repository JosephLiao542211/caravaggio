---
name: caravaggio
description: >-
  TODO: One or two sentences on what this skill does, then when to use it.
  Be a little pushy so Claude does not under-trigger. Example: "Guidance for
  producing distinctive, intentional visual design for web UI. Use this skill
  whenever the user asks to design, redesign, style, theme, or 'make it look
  better' for any page, component, landing page, dashboard, or app, even if
  they never say the word 'design'."
---

# Caravaggio

<!--
  TEMPLATE NOTES (delete when done)
  - Keep this file under ~500 lines. Move detail into references/.
  - Prefer imperative voice and explain the reasoning behind each rule.
  - The frontmatter `description` is the only text Claude sees before the
    skill triggers. Everything about *when* to use the skill belongs there.
-->

## Purpose

TODO: Two or three sentences. What outcome does this skill produce, and what
does "good" look like? Who is the user, and what are they usually trying to do?

## When this skill applies

TODO: Short list of situations and user phrasings. Also note what it is **not**
for (e.g. data visualisation, print, brand identity) so it does not fire wrongly.

## Workflow

Follow these steps in order. Each exists for a reason, noted beside it.

1. **Understand the brief.** TODO: what to ask or infer (audience, tone, platform,
   constraints, existing brand).
2. **Pick a direction.** TODO: how to choose an aesthetic point of view before
   touching code, and how to state it in one line.
3. **Build.** TODO: the order of work (layout → type → color → motion, etc.).
4. **Review.** TODO: the checklist Claude runs on its own output before handing
   it back.

## Design principles

TODO: Your opinionated rules. Each one in the form *rule — why it matters*.

- **Typography** — TODO. See [references/typography.md](references/typography.md)
  when choosing or pairing typefaces.
- **Color** — TODO. See [references/color.md](references/color.md) when building a
  palette or checking contrast.
- **Layout & spacing** — TODO. See [references/layout.md](references/layout.md)
  for grids, rhythm and responsive rules.
- **Motion** — TODO.
- **Accessibility** — TODO (contrast, focus states, reduced motion, semantics).

## Anti-patterns

TODO: The things that make output look generic or templated. Explain *why*
each reads badly so Claude can generalise instead of pattern-matching.

- Example: Centered hero + three feature cards + gradient CTA — reads as a
  default because it is what every starter template ships with.

## Output format

TODO: What Claude should hand back. For example:

```
1. One-paragraph design rationale (direction, type, palette)
2. The code / files
3. A short "what to tweak next" list
```

## Examples

TODO: Two or three short input → output pairs with a note on why the output is good.

**Example 1**
Input: TODO
Output: TODO
Why it works: TODO

## Bundled resources

- `references/` — deeper guidance, read only when relevant.
- `assets/` — starter files (tokens, templates, fonts) used in output.
- `scripts/` — deterministic helpers (e.g. a contrast checker). Run, don't read.
