# Spec-Driven Development — the portable workflow (local-first, no cloud needed)

> The engine isn't cloud / Docker / microservices / RAG. It's **curated context on local files + spec-first + a QA loop**, with a human who owns the system model. That's what makes it work — and it's fully replicable on a local machine.

## 1 · The operating loop (how we actually work)

```mermaid
flowchart TB
    subgraph CTX["CONTEXT LAYER — the real engine (plain local files, no cloud / no RAG)"]
        direction LR
        D1["Index / map docs<br/>repo map, CLAUDE.md, INDEX"]
        D2["Spec docs<br/>the WHAT + acceptance criteria"]
        D3["Memory / findings<br/>decisions, why, current state"]
        D4["YOU — system owner<br/>curate + supply context"]
    end

    S1["1 · SPEC<br/>write the spec first<br/>behaviour + acceptance tests"]
    S2["2 · BUILD<br/>AI generates code from the spec<br/>Codex / Claude, on your machine"]
    S3["3 · QA / STLC<br/>test against the spec's<br/>acceptance criteria"]
    S4{"4 · VERIFY<br/>meets spec?"}
    S5["5 · PERSIST<br/>write decisions + state<br/>back into the context layer"]

    CTX --> S1 --> S2 --> S3 --> S4
    S4 -->|no| S1
    S4 -->|yes| S5
    S5 --> CTX

    style CTX fill:#0b2540,stroke:#3b82f6,color:#dbeafe
    style D4 fill:#1e3a8a,stroke:#93c5fd,color:#fff
    style S4 fill:#3f2d0b,stroke:#f59e0b,color:#fde68a
```

**Why it compounds:** PERSIST writes back into the CONTEXT LAYER, so every cycle the AI gets *better* context for the next spec. No vector DB required — for a bounded project, hand-curated docs give **more precise** context than RAG would. You graduate to RAG only when the repo is too big to hold in curated docs. Not doing RAG yet isn't a gap; it's the right call for an MVP.

## 2 · Same loop, instantiated on Visa EFT (the MVP)

```mermaid
flowchart LR
    V0["Visa inbound<br/>data elements<br/>INPUT CONTRACT = spec #0"]
    V1["Replay into<br/>Payment Hub"]
    V2["Validate"]
    V3["Reconciliation"]
    V4["Fraud checks"]
    V5["AML"]
    V6["Sanction screening<br/>SLMS"]
    V7["FIU reporting"]
    V8["Indirect checks"]

    V0 --> V1 --> V2 --> V3 --> V4 --> V5 --> V6 --> V7 --> V8

    style V0 fill:#1e3a8a,stroke:#93c5fd,color:#fff
```

**Each box above = one SPEC → built → QA'd through the loop in §1.** All local. "We're an API project, not microservices" is *fine* — the workflow doesn't care. Start from the Visa data-element contract (spec #0); everything downstream specs off it. Use synthetic/mocked Visa data if real data can't leave the building.

## 3 · The one-line pitch for your workplace
> "SDD = write the spec (behaviour + acceptance tests) before code; let the AI build to the spec; QA against the spec; persist decisions back into the docs so context compounds. Runs on a laptop. The only 'infra' is well-structured docs — and a person who knows the system."

That last clause is you. Not coding it by hand doesn't make you unable to do it — **you're the architect and the context-holder, which is the scarce part.** The proof is the body of non-trivial systems you've personally architected and shipped with this method — your ideas, built this way.
