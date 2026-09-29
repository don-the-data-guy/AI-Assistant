<h1 align="center">Ethoculus</h1>

<p align="center">
  <strong>Local-first generative AI you can inspect, question, and improve.</strong>
</p>

<p align="center">
  Clone it. Start it. Pull a model. Chat locally.
</p>

<div align="center">

<a href="https://github.com/don-the-data-guy/AI-Assistant/stargazers">![GitHub Repo stars](https://img.shields.io/github/stars/don-the-data-guy/AI-Assistant?style=social)</a>
<a href="LICENSE">![License](https://img.shields.io/badge/license-Apache--2.0-blue)</a>

</div>

> Check my citations, validate my sources, and come to your own conclusion.

---

## Table of Contents

- [What Is Ethoculus?](#what-is-ethoculus)
- [Before You Start](#before-you-start)
- [Quick Start](#quick-start)
- [Stop or Reset Ethoculus](#stop-or-reset-ethoculus)
- [Troubleshooting](#troubleshooting)
- [Using RAG](#using-rag)
- [Core Principles](#core-principles)
- [Roadmap](#roadmap)
- [Project Status](#project-status)
- [What's in This Repository](#whats-in-this-repository)
- [Attribution](#attribution)
- [Contributing](#contributing)
- [License](#license)

---

## What Is Ethoculus?

Ethoculus is a downloadable, local-first generative AI starter platform. It is designed to make AI easier to install, easier to inspect, and easier to question.

The first goal is not to build the biggest model. The first goal is a working AI platform that ordinary people can download, run, test, and improve, without depending on a paid cloud API or a closed system they cannot inspect.

Ethoculus starts with a practical local stack: Docker Compose, [Ollama](https://ollama.com) to run the model, [Open WebUI](https://openwebui.com) for the chat interface, a small starter model, and optional document-based RAG.

Ethoculus is for learners who want to understand how local AI works, builders who want a simple starter platform, writers and researchers who want document-aware AI, attorneys, technologists, and citizens who want AI they can question, and anyone who believes AI should be more transparent, accountable, and accessible.

Ethoculus is not about trusting AI blindly. It is about making AI visible enough to challenge.

For the research philosophy behind the project, see [Investigating the Black Box](Ethoculus_Local/README.md).

---

## Before You Start

You need two things installed:

1. **Git**, to download the project. On a Mac, running `git --version` in Terminal will offer to install it if it is missing.
2. **Docker Desktop**, to run the AI services. Download it from [docker.com](https://www.docker.com/products/docker-desktop/). On a Mac, pick the Apple Silicon build for M-series chips or the Intel build for older Macs. Open Docker Desktop and wait until it reports that it is running.

The first start downloads several gigabytes of software, so use a reasonable internet connection and allow some time.

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

Open this address in your browser:

```text
http://localhost:3000
```

Create your local Open WebUI account, select the model, and start chatting. The account is stored only on your computer.

Ethoculus is reachable only from your own computer. It is not exposed to your home network or the internet.

---

## Stop or Reset Ethoculus

Stop Ethoculus (your models and chat history are kept):

```bash
./scripts/ethoculus/stop.sh
```

Start it again any time with `./scripts/ethoculus/start.sh`.

To remove everything, including downloaded models, accounts, and chat history:

```bash
docker compose -f docker-compose.ethoculus.yaml down -v
```

---

## Troubleshooting

**"Docker is not running."** Open Docker Desktop and wait until it says it is running, then try again.

**"Permission denied" when running a script.** Run `chmod +x scripts/ethoculus/*.sh` from the project folder.

**"No such file or directory" when running a script.** Make sure you are inside the `AI-Assistant` folder (`cd AI-Assistant`) before running the commands.

**The page at localhost:3000 does not load.** The first start can take a few minutes. Wait, then refresh.

**Responses are slow.** On a Mac, the model runs on the CPU inside Docker. The small starter model is chosen so this stays usable.

**Something else went wrong.** Please [open an issue](https://github.com/don-the-data-guy/AI-Assistant/issues) with the command you ran and the full error message.

---

## Using RAG

RAG means Retrieval-Augmented Generation. In plain English: the AI can answer using documents you provide, instead of relying only on what the model already knows.

Ethoculus is intended to support document-aware workflows such as uploading PDFs or text files, asking questions about your own documents, building reusable knowledge bases, checking whether an answer is supported by the source material, and separating model output from actual evidence.

For the first version, Ethoculus uses Open WebUI's document and knowledge features as the practical RAG layer. Future versions may add a more opinionated DonTheDataGuy-style RAG workflow focused on citations, evidence checks, source quality, and auditability.

---

## Core Principles

### 1. Local First

The default version runs locally. That does not make every use private or safe by itself, but it gives users more control over the system they are running.

### 2. Easy to Install

A useful AI project should not require a PhD in infrastructure. The starter experience should be simple:

```text
clone → start → pull model → chat
```

### 3. Evidence Over Vibes

AI should not be treated as an oracle. Ethoculus should help users ask: What is the source? Is the answer grounded? What is missing? What assumptions are being made? Who could be harmed if this is wrong?

### 4. Human Judgment Stays Central

Ethoculus is a tool. It does not replace professional judgment, legal judgment, medical judgment, moral judgment, or democratic accountability.

### 5. Protect the People Most Likely to Be Harmed

AI systems often fail hardest against people with the least power to challenge them. Ethoculus should be developed with that risk in mind from the beginning.

---

## Roadmap

Planned direction:

- External kill-switch that can fully shut the model down from outside the system (in progress)
- Larger optional model support
- Better onboarding documentation
- RAG and document workflows
- Source-checking templates
- Ethical review prompts
- Example legal, policy, and research workflows
- DonTheDataGuy website integration
- Public demo documentation

---

## Project Status

Ethoculus is in early starter-platform form. The immediate goal is a simple, downloadable, working local generative AI platform. The next goal is to make it easier to use with documents, citations, and transparent workflows.

---

## What's in This Repository

You only need the following to run Ethoculus:

- `scripts/ethoculus/`: the start, stop, and model-download scripts
- `docker-compose.ethoculus.yaml`: the local Ollama and Open WebUI stack
- `Ethoculus_Local/`: the Ethoculus research layer, under development

Most other folders (`backend/`, `inference/`, `website/`, `model/`, `data/`, `discord-bots/`, and others) are inherited from the original Open Assistant project. They are kept for reference and attribution and are not needed for the Quick Start.

---

## Attribution

This repository began from the open-source [LAION Open Assistant](https://github.com/LAION-AI/Open-Assistant) project. Open Assistant was an important open-source effort to make chat-based large language model technology more accessible. The upstream project has been completed.

Ethoculus is a new project direction focused on local-first installation, document-aware AI, source verification, and responsible public use. It should not be represented as the original LAION Open Assistant project.

---

## Contributing

Contributions are welcome, especially testing on Mac, Windows, and Linux, fixing broken setup steps, improving documentation, adding RAG examples, creating ethical review workflows, and making the project easier for nontechnical users.

Start here: [CONTRIBUTING.md](CONTRIBUTING.md)

---

## License

This repository retains the applicable open-source license terms from the original project. See [LICENSE](LICENSE).

---

## DonTheDataGuy Rule

Check the sources.

Validate the outputs.

Question the machine.

Protect the people most likely to be harmed by automation.
