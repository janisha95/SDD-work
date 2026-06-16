# Meeting Prep — SDD pitch (read this and you're ready)

> You are pitching a **method + a small demo proposal.** You are NOT claiming you built a banking
> system. There is nothing deep or hidden to defend.

---

## 📧 Copy-paste email to yourself

**Subject:** SDD pitch — my prep + repo (for the meeting)

```
Repo (everything's here): https://github.com/janisha95/SDD-work
Pitch doc: SDD_pitch.docx   ·   Prep: docs/MEETING_PREP.md

THE ONE-BREATH PITCH:
"I want to show how we can use Spec-Driven Development with AI on CIBCAI to build
faster without losing control. You write a clear spec first, the AI builds to it, and
nothing's 'done' until it's proven against the spec. I've built whole systems this way
myself. I'd like to prove it on one small, bounded piece of our work."

60-SECOND VERSION
- Problem: delivery is slow; many handoffs; specs and code drift apart.
- Idea: make the spec the single source of truth. AI builds to it. Prove before "done."
- Where it runs: CIBCAI - already inside our boundary. No data leaves. No new cost.
- Who it affects: nobody loses a role. AI speeds up each role; humans keep the gates.
- The ask: one small bounded function + CIBCAI access -> a working, proven demo in days.

QUESTIONS THEY'LL ASK -> MY ANSWERS
- Does this put bank data in AI? -> No. Runs on CIBCAI, inside our boundary. Data never leaves.
- Isn't this just ChatGPT? -> No. A disciplined method: spec-first, proof-before-done, honest status.
- Does it replace people? -> No. Force-multiplier on the BA->dev->QA pipeline. Every role keeps its gate.
- New cost/infra? -> None. Rides on CIBCAI + existing CI/CD + vendor delivery.
- Prove it works. -> That's the MVP ask: one small bounded function with a design -> proven logic in days.
- How's quality controlled? -> "Access is not acceptance; acceptance is earned through proof."
  Every change classified honestly: done / partial / scaffolded / unproven.

DON'T OVERCLAIM
- It's a method + a demo proposal, not an already-built banking system.
- Doesn't replace vendors or QA.
- Nothing proprietary - all generic.
- If unsure: "Good question - that's exactly what the bounded MVP would surface."
```

---

## The 4 diagrams, in your words
- **loop.png** — "spec → build → prove → save what we learned → repeat."
- **deploy.png** — "runs on CIBCAI; data never leaves; rides on our existing infra."
- **roles.png** — "AI speeds up every role; no one is replaced; humans still approve."
- **visa.png** — "example — one stage of a payment flow."

## Going deeper tomorrow (offline)
- Open the repo on your phone: **github.com/janisha95/SDD-work** → read `README.md` and `SDD_pitch.docx`.
- Paste this file into ChatGPT / CIBCAI and say: *"quiz me on this until it's reflex."*
