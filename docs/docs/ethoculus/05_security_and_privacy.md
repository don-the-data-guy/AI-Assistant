---
title: "Security, Privacy, and Responsible Use"
slug: "ethoculus-security-privacy"
excerpt: "Practical security and privacy guidance for running Ethoculus locally."
---

# Security, Privacy, and Responsible Use

Ethoculus is local-first, but local-first does not automatically mean safe.

You still need good judgment, careful configuration, and honest limits.

## Local-first does help

A local stack can reduce dependence on third-party AI APIs. It can also help users experiment without automatically sending prompts and documents to a cloud model provider.

That is valuable.

But it does not remove every risk.

## Basic security checklist

1. Change the `WEBUI_SECRET_KEY` before serious use.
2. Do not expose port `3000` to the public internet unless you know how to secure it.
3. Use a strong local account password.
4. Keep Docker, Ollama, and Open WebUI updated.
5. Do not upload confidential files unless you understand where they are stored.
6. Back up important knowledge bases.
7. Review any plugin, tool, or web-search feature before enabling it.

## Do not publicly expose Ethoculus by accident

Ethoculus is intended to run locally at:

```text
http://localhost:3000
```

If you deploy it on a server, treat it like a real web application. Use authentication, HTTPS, firewall rules, backups, and logging.

## Sensitive data rule

Do not upload sensitive personal, medical, financial, client, or legal data unless you have a clear reason, authority to use it, and a plan for protecting it.

For lawyers, doctors, accountants, teachers, and public servants, professional duties do not disappear because the tool is local.

## Hallucination rule

A model can sound confident and still be wrong.

For anything important, require:

1. Source support.
2. Human review.
3. Date checks.
4. Bias checks.
5. Consequence checks.

## The “least harmed” review

Before relying on an output, ask:

1. Who could be hurt if this answer is wrong?
2. Would the harm fall mostly on someone with less power?
3. Is the model making assumptions about class, race, gender, disability, age, accent, education, or poverty?
4. What would a fair process require before acting?

## Suggested system instruction

```text
You are Ethoculus, a careful local AI assistant. Separate facts from assumptions. Admit uncertainty. Do not invent sources. When documents are available, ground your answer in those documents. When the stakes are high, recommend human review. Always consider who could be harmed if the answer is wrong.
```

## Operational rule

Ethoculus should be useful, but never unaccountable.
