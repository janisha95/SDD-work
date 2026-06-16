# Spec-Driven Development — Workplace Pitch

A brief, self-contained pitch for adopting **Spec-Driven Development (SDD)** with AI assistance in an
enterprise environment. **Generic and method-only — contains no proprietary or company-specific information.**

## What this is
SDD treats the **spec as the single source of truth**: a conceptual design becomes a precise spec
(behaviour + acceptance criteria), the implementation is built to that spec with AI assistance, and
nothing is *"done"* until it is **proven** against the spec.

## Start here
- **[`SDD_pitch.docx`](SDD_pitch.docx)** — the one-page pitch.
- **[`docs/MEETING_PREP.md`](docs/MEETING_PREP.md)** — talking points + copy-paste email + Q&A. **Read this before the meeting.**

## Contents
| Path | What |
|---|---|
| `SDD_pitch.docx` | The one-page pitch (start here) |
| `docs/SDD_workflow.md` | Workflow write-up with Mermaid source |
| `diagrams/loop.png` | The SDD method loop |
| `diagrams/deploy.png` | How it runs on an internal/sanctioned AI platform (no data leaves) |
| `diagrams/roles.png` | How AI *augments* (not replaces) the BA → dev → QA pipeline |
| `diagrams/visa.png` | Example: one stage of a payment pipeline |
| `scripts/*.mmd` | Mermaid diagram sources |
| `scripts/build_pitch.py` | Regenerates `SDD_pitch.docx` |
| `scripts/render_diagrams.sh` | Re-renders the `.mmd` sources to PNG |

## Regenerate
```bash
# diagrams (needs Node + npx)
bash scripts/render_diagrams.sh
# pitch doc (needs: pip install python-docx)
python3 scripts/build_pitch.py
```

## Principle
> **Access is not acceptance. Acceptance is earned through proof. The enemy is false completion.**
