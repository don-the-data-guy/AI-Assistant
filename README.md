<h1 align="center">
  <span>Ethoculus</span>
</h1>

<p align="center">
  <strong>Local-first generative AI you can inspect, question, and improve.</strong>
</p>

<p align="center">
  Clone it. Start it. Pull a model. Chat locally.
</p>

<div align="center">

<a href="https://github.com/don-the-data-guy/AI-Assistant/stargazers">![GitHub Repo stars](https://img.shields.io/github/stars/don-the-data-guy/AI-Assistant?style=social)</a>
<a href="docs/docs/ethoculus/README.md">![Docs](https://img.shields.io/badge/docs-Ethoculus-green)</a>
<a href="LICENSE">![License](https://img.shields.io/badge/license-Apache--2.0-blue)</a>

</div>

---

# Ethoculus

Ethoculus is a downloadable, local-first generative AI starter platform designed to make AI easier to install, easier to inspect, and easier to question.

The first goal is not to build the biggest model.

The first goal is to make a working AI platform that ordinary people can download, run, test, and improve.

Ethoculus starts with a practical local stack:

- Docker Compose
- Ollama
- Open WebUI
- A small working local model
- Optional document-based RAG

The long-term goal is to evolve Ethoculus into a transparent, document-aware AI platform built around source checking, human judgment, and ethical review.

> Check my citations, validate my sources, and come to your own conclusion.

> Ethoculus should answer with evidence, identify uncertainty, and remind users when human verification is needed.

---

# Table of Contents

- [What Is Ethoculus?](#what-is-ethoculus)
- [Quick Start](#quick-start)
- [Documentation](#documentation)
- [Using RAG](#using-rag)
- [Core Principles](#core-principles)
- [Roadmap](#roadmap)
- [Project Status](#project-status)
- [Attribution](#attribution)
- [Contributing](#contributing)

---

## What Is Ethoculus?

Ethoculus is a simple local AI starter platform.

It is designed for people who want to experiment with generative AI without needing to immediately depend on a paid cloud API, a complex machine learning stack, or a closed system they cannot inspect.

Ethoculus is for:

- Learners who want to understand how local AI works
- Builders who want a simple starter platform
- Writers and researchers who want document-aware AI
- Attorneys, technologists, and citizens who want AI they can question
- Anyone who believes AI should be more transparent, accountable, and accessible

Ethoculus is not about trusting AI blindly.

It is about making AI visible enough to challenge.

---

## Quick Start

### 1. Clone the repository

```bash
git clone https://github.com/don-the-data-guy/AI-Assistant.git
cd AI-Assistant
```

### 2. Start Ethoculus

```bash
./scripts/ethoculus/start.sh
```

### 3. Pull the starter model

```bash
./scripts/ethoculus/pull-model.sh qwen2.5:0.5b
```

### 4. Open Ethoculus

Open this in your browser:

```text
http://localhost:3000
```

Create your local Open WebUI account, select the model, and start chatting.

---

## Stop Ethoculus

```bash
./scripts/ethoculus/stop.sh
```

---

## Documentation

Start here:

- [Quick Start](#quick-start)
- [Using RAG](#using-rag)
- [Core Principles](#core-principles)
- [Roadmap](#roadmap)
- [Project Status](#project-status)
- [Attribution](#attribution)
- [Contributing](#contributing)
- [License](#license)
---

## Using RAG

RAG means Retrieval-Augmented Generation.

In plain English: the AI can answer using documents you provide, instead of relying only on what the model already knows.

Ethoculus is intended to support document-aware workflows such as:

- Uploading PDFs or text files
- Asking questions about your own documents
- Building reusable knowledge bases
- Checking whether an answer is supported by the source material
- Separating model output from actual evidence

For the first version, Ethoculus uses Open WebUI’s document and knowledge features as the practical RAG layer.

Future versions may add a more opinionated DonTheDataGuy-style RAG workflow focused on citations, evidence checks, source quality, and auditability.

---

## Core Principles

Ethoculus is built around five basic principles.

### 1. Local First

The default version should run locally when possible.

That does not make every use private or safe by itself, but it gives users more control over the system they are running.

### 2. Easy to Install

A useful AI project should not require a PhD in infrastructure.

The starter experience should be simple:

```text
clone → start → pull model → chat
```

### 3. Evidence Over Vibes

AI should not be treated as an oracle.

Ethoculus should help users ask:

- What is the source?
- Is the answer grounded?
- What is missing?
- What assumptions are being made?
- Who could be harmed if this is wrong?

### 4. Human Judgment Stays Central

Ethoculus is a tool.

It does not replace professional judgment, legal judgment, medical judgment, moral judgment, or democratic accountability.

### 5. Protect the People Most Likely to Be Harmed

AI systems often fail hardest against people with the least power to challenge them.

Ethoculus should be developed with that risk in mind from the beginning.

---

## Roadmap

Planned direction:

- Simple Docker-based local install
- Small starter model support
- Larger optional model support
- Better onboarding documentation
- RAG/document workflows
- Source-checking templates
- Ethical review prompts
- Example legal, policy, and research workflows
- DonTheDataGuy website integration
- Public demo documentation
- Contributor guide

---

## Project Status

Ethoculus is in early starter-platform form.

The immediate goal is to provide a simple, downloadable, working local generative AI platform.

The next goal is to make it easier to use with documents, citations, and transparent workflows.

---

## Attribution

This repository began from the open-source LAION Open Assistant project.

Open Assistant was an important open-source effort to make chat-based large language model technology more accessible. The upstream Open Assistant project has been completed.

Ethoculus is a new project direction focused on local-first installation, document-aware AI, source verification, and responsible public use.

This project should not be represented as the original LAION Open Assistant project.

Original upstream project:

- [LAION Open Assistant](https://github.com/LAION-AI/Open-Assistant)

---

## Contributing

Contributions are welcome.

Helpful contributions include:

- Improving installation instructions
- Testing on Mac, Windows, and Linux
- Fixing broken setup steps
- Improving documentation
- Adding RAG examples
- Creating ethical review workflows
- Making the project easier for nontechnical users

Start here:

- [Contributing](CONTRIBUTING.md)

---

## License

This repository retains the applicable open-source license terms from the original project where required.

See:

- [LICENSE](LICENSE)
---

## DonTheDataGuy Rule

Check the sources.

Validate the outputs.

Question the machine.

Protect the people most likely to be harmed by automation.


## Ethical Operation

- [Ethical Operation](docs/docs/ethoculus/10_ethical_operation.md)
- [Privacy and Data Handling](docs/docs/ethoculus/11_privacy_and_data.md)
- [Ethoculus Evidence Mode Prompt](prompts/ethoculus_evidence_mode.md)


## VERITAS Framework

- [VERITAS Framework](docs/docs/ethoculus/12_veritas_framework.md)
- [VERITAS Quickstart](docs/docs/ethoculus/13_veritas_quickstart.md)
- [VERITAS Framework Prompt](prompts/veritas_framework_prompt.md)


## VERITAS Framework

Ethoculus uses the VERITAS Framework as its ethical review layer.

VERITAS asks users and models to:

- Verify source grounding
- Expose uncertainty
- Require reasoning checks
- Identify impact and harm
- Trace data and retrieval
- Account for alternatives
- Safeguard human judgment

The goal is not blind trust.

The goal is evidence-centered AI that users can challenge.

