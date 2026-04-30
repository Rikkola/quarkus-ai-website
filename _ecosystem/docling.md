---
slug: docling
name: Quarkus Docling
summary: Document processing for AI — parse PDFs, DOCX, HTML, and images (with OCR) into structured text suitable for RAG ingestion.
maturity: experimental
tags: [RAG, Documents]
pairs_with: [langchain4j]
---

## Summary

Quarkus Docling brings the [Docling](https://github.com/DS4SD/docling) document-processing service into Quarkus. The current implementation is a REST client over Docling's Serve API: send a document in, get parsed, structured output back.

The primary use is **RAG ingestion** — turn diverse source formats (PDF, DOCX, XLSX, HTML, images with OCR) into the kind of clean text a vector store can index. Upstream Docling integrates with LangChain, LlamaIndex, and others; the Quarkus extension's roadmap targets unifying its output with the LangChain4j `Document` abstraction so the two compose directly.

## Status

| | |
|---|---|
| Maturity | Experimental |
| Repository | [quarkiverse/quarkus-docling](https://github.com/quarkiverse/quarkus-docling) |
| Documentation | [docs.quarkiverse.io/quarkus-docling/dev](https://docs.quarkiverse.io/quarkus-docling/dev/index.html) |
| Upstream project | [DS4SD/docling](https://github.com/DS4SD/docling) |
| Extensions | [Browse on quarkus.io →](https://quarkus.io/extensions/?categories=AI&search-regex=Docling) |

## What you can build with it

- **RAG ingestion pipelines** — convert a mixed corpus (PDFs, Office docs, HTML pages, scanned images) into clean text chunks for a vector store.
- **PDF understanding services** — handle layout-rich PDFs including tables and figures, not just plain text extraction.
- **OCR-backed document Q&A** — parse scanned documents and feed them into an AI service for question answering.
- **Format-agnostic document APIs** — expose a single endpoint that normalises whatever your users upload.

## Quickstart

See the [Getting Started guide](https://docs.quarkiverse.io/quarkus-docling/dev/index.html) for the full walkthrough.

## Where to go next

- [Documentation](https://docs.quarkiverse.io/quarkus-docling/dev/index.html)
- [Source on GitHub](https://github.com/quarkiverse/quarkus-docling)
- [Upstream Docling project](https://github.com/DS4SD/docling)
