---
title: "Using RAG With Ethoculus"
slug: "ethoculus-rag"
excerpt: "Use Retrieval-Augmented Generation in Ethoculus to ask questions about your own documents without fine-tuning a model."
---

# Using RAG With Ethoculus

RAG stands for Retrieval-Augmented Generation.

That is a technical phrase for a simple idea: give the assistant relevant documents before asking it to answer.

## RAG in plain English

A normal model answers from patterns learned during training.

A RAG-enabled assistant first looks at documents, pulls the most relevant parts into the conversation, and then answers using that context.

It is closer to open-book reasoning than memory.

## Why RAG matters

RAG helps Ethoculus evolve without immediately retraining the model.

Instead of changing the model weights, you improve the knowledge base.

That means you can update:

1. Project documentation.
2. Legal or policy sources.
3. Internal notes.
4. Research papers.
5. User guides.
6. Ethical rules and review checklists.

## Simple document chat

Use this when you only need one document for one conversation.

1. Open `http://localhost:3000`.
2. Start a new chat.
3. Upload a document.
4. Ask a question about the document.
5. Ask the model to identify which part of the document supports the answer.

Example prompt:

```text
Summarize this document in plain English. Then list the three most important claims and the exact sections that support them.
```

## Reusable knowledge base

Use this when you want Ethoculus to repeatedly use a collection of documents.

1. Open Open WebUI.
2. Go to Workspace.
3. Go to Knowledge.
4. Create a knowledge base.
5. Upload documents.
6. Attach the knowledge base to a chat or model.

## Suggested Ethoculus knowledge bases

1. `Ethoculus Docs` — installation, troubleshooting, roadmap.
2. `Ethical AI Sources` — AI law, policy, audit frameworks, professional responsibility.
3. `DonTheDataGuy Writing` — essays, articles, style guides, public posts.
4. `Legal Review` — statutes, regulations, cases, professional rules.
5. `Technical Notes` — Docker, Python, RAG, model-running notes.

## Prompt template for document questions

```text
Use only the uploaded document or selected knowledge base unless I ask you to use outside knowledge. If the document does not answer the question, say: “I do not see that in the provided material.” Cite or quote the smallest relevant passage when possible.
```

## RAG is not magic

RAG can still fail.

Common failures:

1. The document was not parsed correctly.
2. The right passage was not retrieved.
3. The model ignored the retrieved context.
4. The chunk was too small or too large.
5. The knowledge base is outdated.
6. The user asked a question the documents do not answer.

## Re-indexing warning

If you change the embedding model after documents have already been indexed, the old embeddings may no longer match the new embedding space. In that case, re-index knowledge-base documents. Standalone chat uploads may need to be re-uploaded.

## Ethical RAG rule

A document-aware model should not be allowed to turn weak sources into strong claims.

Ask Ethoculus:

```text
Is the evidence strong, weak, incomplete, outdated, or missing? Explain why.
```

## First RAG milestone

Before building complex agents, make Ethoculus good at one humble task:

Answer questions from documents without pretending the documents say more than they actually say.
