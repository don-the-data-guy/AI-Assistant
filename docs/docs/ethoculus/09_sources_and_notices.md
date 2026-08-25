---
title: "Sources, Licenses, and Notices"
slug: "ethoculus-sources-licenses-notices"
excerpt: "Sources, acknowledgments, and license notes for Ethoculus documentation."
---

# Sources, Licenses, and Notices

Ethoculus is a new starter project. It is not LAION Open Assistant, Open WebUI, or Ollama.

Ethoculus is inspired by the open-access purpose of projects like LAION Open Assistant, but the first Ethoculus release is intentionally simpler: local install, local model runner, browser UI, and a path to document-based RAG.

## Project acknowledgments

1. LAION Open Assistant helped popularize the idea that powerful conversational AI should be open, participatory, and broadly accessible.
2. Ollama makes local model running practical for ordinary users and developers.
3. Open WebUI provides the self-hosted browser interface and RAG/document workflow used in the starter Ethoculus stack.
4. Docker Compose makes the first install simpler by packaging services into a repeatable local setup.

## License notes

The LAION Open Assistant FAQ states that all Open Assistant code is licensed under Apache-2.0 and that Open Assistant data is also released under Apache-2.0. The same FAQ notes that Open Assistant models follow the licenses of their respective base models.

The Open Assistant GitHub repository also identifies Apache-2.0 as its license and says the project has concluded.

Apache-2.0 generally permits broad use, but if you copy source files or documentation from an Apache-2.0 project, include the appropriate license and notice files.

Do not assume every model has the same license. Model licenses vary.

## Practical redistribution guidance

Before publishing Ethoculus, include:

1. `LICENSE` for Ethoculus itself.
2. `NOTICE` if required by copied or modified Apache-2.0 material.
3. Acknowledgments for Open WebUI, Ollama, and LAION Open Assistant.
4. A model license warning in the README.
5. A statement that model weights are downloaded separately and are governed by their own licenses.

## Recommended Ethoculus disclaimer

Ethoculus is an experimental local AI starter platform. It may produce inaccurate, incomplete, biased, or harmful outputs. Verify important claims against reliable sources. Do not use Ethoculus as a substitute for professional judgment in legal, medical, financial, engineering, employment, or safety-critical decisions.

## Sources

[1] LAION Open Assistant website, describing Open Assistant as a conversational assistant with retrieval and developer-building-block goals: https://projects.laion.ai/Open-Assistant/

[2] LAION Open Assistant FAQ, license and local-install discussion: https://projects.laion.ai/Open-Assistant/docs/faq

[3] LAION Open Assistant GitHub repository, project conclusion notice and Apache-2.0 license metadata: https://github.com/LAION-AI/Open-Assistant

[4] Apache License, Version 2.0, official text and application guidance: https://www.apache.org/licenses/LICENSE-2.0

[5] Ollama GitHub repository and Docker information: https://github.com/ollama/ollama

[6] Open WebUI documentation, self-hosted platform, local/offline operation, provider support, and quick start: https://docs.openwebui.com/

[7] Open WebUI RAG documentation, embedding and re-indexing guidance: https://docs.openwebui.com/features/chat-conversations/rag/

[8] Open WebUI features page, Knowledge and RAG summary: https://docs.openwebui.com/features/
