# Contributing to Ethoculus

Thank you for your interest in contributing to Ethoculus.

Ethoculus is an early-stage, local-first generative AI starter platform. The goal is simple:

> Make AI easier to download, run, inspect, question, and improve.

This project is not trying to be the biggest AI platform. It is trying to be a practical, transparent, local-first platform that ordinary users can install and understand.

---

## Current Project Status

Ethoculus is currently focused on:

- Easy local installation
- Clear documentation
- Docker-based setup
- Ollama model support
- Open WebUI integration
- Basic RAG/document workflows
- Ethical AI usage patterns
- Source-checking and transparency

Because the project is still early, the most useful contributions are small, practical, and easy to review.

---

## Ways You Can Help

Helpful contributions include:

- Testing installation on Mac, Windows, and Linux
- Improving setup instructions
- Fixing broken links
- Improving Markdown documentation
- Adding screenshots or diagrams
- Reporting confusing steps
- Adding troubleshooting notes
- Testing small local models
- Improving RAG/document workflows
- Suggesting ethical review prompts
- Making the project easier for nontechnical users

Documentation improvements are especially welcome.

---

## Before You Start

Please check the repository issues first:

[Ethoculus Issues](https://github.com/don-the-data-guy/AI-Assistant/issues)

If there is already an issue related to your idea, add a comment there.

If there is no existing issue, you may open a new one describing:

1. What problem you found
2. Why it matters
3. What change you suggest
4. Whether you are willing to work on it

---

## Submitting a Change

The preferred contribution process is:

1. Fork the repository
2. Create a new branch
3. Make a small, focused change
4. Test your change
5. Submit a pull request

Example:

```bash
git checkout -b docs/fix-install-instructions
```

After making your changes:

```bash
git add .
git commit -m "Improve Ethoculus install instructions"
git push origin docs/fix-install-instructions
```

Then open a pull request on GitHub.

---

## Pull Request Guidelines

Please keep pull requests focused.

Good pull requests usually:

- Fix one clear issue
- Touch only the files needed
- Include a plain-English explanation
- Avoid unnecessary formatting changes
- Do not mix documentation, code, and branding changes unless necessary

A good pull request title looks like:

```text
Improve Mac Docker troubleshooting steps
```

or:

```text
Add beginner RAG example
```

---

## Documentation Style

Ethoculus documentation should be:

- Clear
- Practical
- Honest
- Beginner-friendly
- Skeptical of AI overclaiming
- Written in plain English

Avoid hype.

Prefer:

```text
This helps users test a local model.
```

Instead of:

```text
This revolutionary AI system will transform everything.
```

The DonTheDataGuy rule applies:

> Check the sources. Validate the outputs. Question the machine. Protect the people most likely to be harmed by automation.

---

## Ethical AI Contributions

Ethoculus welcomes contributions that make AI more transparent and accountable.

Examples include:

- Source-checking workflows
- RAG verification prompts
- Bias and failure-mode examples
- Model limitation warnings
- Privacy and security guidance
- Human review checklists
- Legal, policy, and research use-case warnings

Ethoculus should help users ask:

- What is the source?
- What evidence supports the answer?
- What is missing?
- What assumptions are being made?
- Who could be harmed if this output is wrong?

---

## Development Setup

For the current Ethoculus starter setup, see:

- [README](README.md)

Basic local start:

```bash
./scripts/ethoculus/start.sh
```

Pull the starter model:

```bash
./scripts/ethoculus/pull-model.sh qwen2.5:0.5b
```

Stop Ethoculus:

```bash
./scripts/ethoculus/stop.sh
```

---

## Reporting Bugs

When reporting a bug, please include:

- Your operating system
- Whether you are using Docker Desktop
- The command you ran
- The full error message
- What you expected to happen
- What actually happened

Helpful example:

```text
OS: macOS Apple Silicon
Command: ./scripts/ethoculus/start.sh
Error: Cannot connect to Docker daemon
Expected: Docker containers start
Actual: Docker daemon was not reachable
```

---

## Good First Contributions

Good first contributions include:

- Fixing a typo
- Clarifying an install step
- Adding a missing command
- Improving a broken link
- Adding a troubleshooting example
- Testing the README on a fresh machine
- Adding screenshots to the documentation

---

## Attribution

This repository began from the open-source LAION Open Assistant project.

Ethoculus is a new project direction focused on local-first installation, document-aware AI, source verification, and responsible public use.

Please do not represent Ethoculus as the original LAION Open Assistant project.

Original upstream project:

- [LAION Open Assistant](https://github.com/LAION-AI/Open-Assistant)

---

## License

This repository retains applicable open-source license obligations from the original project where required.

Please see:

- [LICENSE](LICENSE)

---

## Final Note

Ethoculus is early.

That means small improvements matter.

If you make the installation clearer, fix a confusing step, add a better example, or help one more person run local AI successfully, that is a meaningful contribution.
