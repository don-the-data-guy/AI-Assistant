# Ethoculus Local

## Investigating the Black Box

Modern neural networks can produce remarkably capable results while remaining only partially interpretable.

We may be able to inspect weights, activations, attention patterns, and other internal signals, yet still lack a complete human-readable explanation for why a large model produced a particular answer.

Ethoculus starts from a simple premise:

> **A neural network does not have to be completely interpretable for its behavior to be scientifically investigated.**

If we can control the inputs, observe the outputs, repeat experiments, measure differences, and perform targeted interventions, then data can progressively convert an opaque computational system into a testable one.

---

## The Legal Analogy: Mens Rea

Law has confronted a similar epistemic problem for centuries.

A court cannot directly observe a person's intent.

Instead, intent is inferred from evidence such as:

- statements
- conduct
- knowledge
- planning
- concealment
- reactions before and after an event
- foreseeable consequences

The internal state is inaccessible directly, but it can still be investigated through disciplined rules of evidence and inference.

Ethoculus applies a similar principle to AI systems.

We do not assume that a model's explanation of its own behavior proves what happened internally.

We test behavior.

---

## The Experimental Method

Ethoculus uses controlled experimentation:

```text
HYPOTHESIS
    │
    ▼
CONTROL INPUT
    │
    ├───────────────┐
    ▼               ▼
CONTROL         TREATMENT
                    │
                    ▼
             CHANGE ONE VARIABLE
                    │
          ┌─────────┴─────────┐
          ▼                   ▼
     CONTROL OUTPUT      TREATMENT OUTPUT
          │                   │
          └─────────┬─────────┘
                    ▼
                 COMPARE
                    │
                    ▼
                  REPEAT
                    │
                    ▼
                MEASURE
                    │
                    ▼
                 EVIDENCE
