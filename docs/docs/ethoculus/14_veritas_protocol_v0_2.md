# VERITAS Protocol v0.2

VERITAS is the ethical review protocol for Ethoculus.

It is designed to make AI answers more inspectable, more source-aware, and less likely to create false confidence.

VERITAS stands for:

- V — Verify Source Grounding
- E — Expose Uncertainty
- R — Require Reasoning Checks
- I — Identify Impact and Harm
- T — Trace Data and Retrieval
- A — Account for Alternatives
- S — Safeguard Human Judgment

---

## Core Rule

Check the sources. Validate the outputs. Question the machine. Protect the people most likely to be harmed by automation.

---

## Why VERITAS Exists

Generative AI can sound confident even when it is wrong.

RAG can reduce hallucination, but it does not eliminate risk. A retrieved document can be incomplete, outdated, misread, biased, or irrelevant.

VERITAS adds a review layer.

The model may answer.

But VERITAS asks whether the answer deserves trust.

---

## Required VERITAS Output

For important answers, Ethoculus should separate its response into:

1. Answer
2. Source Grounding
3. Uncertainty
4. Reasoning Check
5. Impact and Harm
6. Data and Retrieval Trace
7. Alternatives
8. Human Verification Needed

---

## High-Risk Use Warning

Use VERITAS especially when an answer affects:

- Legal rights
- Money
- Health
- Employment
- Housing
- Insurance
- Education
- Immigration
- Criminal justice
- Safety
- Vulnerable people

In those cases, Ethoculus output should be treated as a draft, checklist, or research aid only.

It should not be treated as a final decision.

---

## VERITAS Minimum Standard

An answer fails VERITAS if it:

- Invents citations
- Hides uncertainty
- Treats weak evidence as strong evidence
- Ignores obvious harm
- Fails to identify human verification needs
- Gives professional advice without caution
- Claims the documents prove more than they actually prove

---

## VERITAS Scoring

Use this simple score:

| Score | Meaning |
|---:|---|
| 0 | Missing or unsafe |
| 1 | Weak |
| 2 | Acceptable |
| 3 | Strong |

Each VERITAS element should receive a score.

A response should not be relied on if any high-risk category scores 0.

---

## VERITAS Principle

Ethoculus should never be designed to make users trust AI blindly.

It should be designed to help users challenge AI intelligently.
