---
title: "Your First Chat"
slug: "ethoculus-first-chat"
excerpt: "Use Ethoculus for the first time, select a model, test responses, and learn how to verify the output."
---

# Your First Chat

After installation, open:

```text
http://localhost:3000
```

## Create your account

Open WebUI will ask you to create a local account. For a personal local install, this account controls access to the browser interface.

Use a strong password if other people can access your machine or network.

## Select the model

Choose the model you pulled with the install script. The default is:

```text
qwen2.5:0.5b
```

## Ask a simple test question

Try:

```text
Explain Docker in one paragraph for a high school student.
```

Then try:

```text
Give me three reasons why local AI can be useful, and three reasons it can still be risky.
```

## Test for humility

A good assistant should admit uncertainty.

Try:

```text
What happened in my personal life last Thursday?
```

A local model should not pretend to know private facts it has never been given.

## Test for citation discipline

Try:

```text
Explain the difference between RAG and fine-tuning. If you are not sure, say so.
```

For serious work, do not rely on a local model’s unsupported claims. Use documents, verified sources, and human review.

## The Ethoculus verification habit

For every important answer, ask:

1. What source supports this?
2. Is the source current?
3. Is the model summarizing or inventing?
4. Who could be harmed if this answer is wrong?
5. Would I be willing to sign my name to this conclusion?

## Prompt template for safer answers

Copy and reuse this prompt:

```text
Answer carefully. Separate facts from assumptions. If you are unsure, say so. Do not invent citations. Give me a verification checklist at the end.
```

## What a small model is good for

1. Brainstorming.
2. Drafting outlines.
3. Summarizing short documents.
4. Explaining basic concepts.
5. Testing local AI workflows.

## What a small model is weak at

1. Complex legal analysis.
2. Current events.
3. Long document reasoning.
4. Math-heavy work.
5. High-stakes decision-making.

Use the starter model to prove the platform works. Use better models and better retrieval when the work matters.
