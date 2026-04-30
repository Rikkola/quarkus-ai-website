---
slug: amazon-services
name: Quarkus Amazon Services
summary: AWS integrations for Quarkus, including AI-shaped extensions for Bedrock (foundation models), Rekognition (vision), and Textract (OCR).
maturity: stable
tags: [Models, Documents]
pairs_with: [langchain4j]
---

## Summary

Quarkus Amazon Services is the umbrella of Quarkus extensions for AWS — most of it (S3, DynamoDB, SQS, Lambda, etc.) is general cloud plumbing rather than AI. The reason it appears here is that the umbrella also ships first-class extensions for AWS's AI services:

- **Bedrock** and **Bedrock Runtime** — foundation models for chat, embeddings, and image generation, usable directly or through LangChain4j as a model provider.
- **Rekognition** — image and video analysis (labels, faces, moderation).
- **Textract** — document OCR and structured extraction, useful on the ingestion side of RAG pipelines.

Because every extension in this umbrella shares one consistent Quarkus integration story (CDI client beans, dev services, native compilation), reaching for the AI ones brings the rest of AWS within easy reach if you need it.

## Status

| | |
|---|---|
| Maturity | Stable |
| Repository | [quarkiverse/quarkus-amazon-services](https://github.com/quarkiverse/quarkus-amazon-services) |
| Documentation | [docs.quarkiverse.io/quarkus-amazon-services/dev](https://docs.quarkiverse.io/quarkus-amazon-services/dev/index.html) |
| Extensions | [Browse on quarkus.io →](https://quarkus.io/extensions/?categories=AI&search-regex=Amazon) |

## What you can build with it

- **Bedrock-backed AI services** — wire Bedrock models behind a LangChain4j `@RegisterAiService` and get chat, RAG, and tool-calling on top of AWS-hosted foundation models.
- **Embedding pipelines on AWS** — use Bedrock's embedding models to populate a vector store for retrieval.
- **Image classification and moderation** — call Rekognition from a Quarkus service for vision tasks, including content moderation pipelines.
- **Document ingestion with OCR** — extract text and tables from scanned PDFs and images via Textract, then feed the output into a RAG pipeline.

## Quickstart

See the [Quarkus Amazon Services documentation](https://docs.quarkiverse.io/quarkus-amazon-services/dev/index.html) for per-service setup. The [Browse on quarkus.io →](https://quarkus.io/extensions/?categories=AI&search-regex=Amazon) link above lists every AI-tagged extension in the family.

## Where to go next

- [Documentation](https://docs.quarkiverse.io/quarkus-amazon-services/dev/index.html)
- [Source on GitHub](https://github.com/quarkiverse/quarkus-amazon-services)
- [LangChain4j Bedrock model provider](https://docs.quarkiverse.io/quarkus-langchain4j/dev/) — combine the two for declarative AI services on Bedrock
