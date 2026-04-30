---
slug: langchain4j
name: Quarkus LangChain4j
summary: Declarative AI services, RAG, tool-calling, and MCP client integration built on the LangChain4j library.
maturity: preview
tags: [RAG, Agents, MCP, Tool-calling]
pairs_with: [flow, mcp-server, mcp-servers, docling]
---

## Summary

Quarkus LangChain4j brings the LangChain4j Java library into the Quarkus ecosystem. AI services are defined as annotated interfaces — Quarkus handles the model connection, prompt injection, response parsing, and CDI lifecycle.

The extension covers the full range of LangChain4j capabilities: retrieval-augmented generation, tool-calling, structured outputs, MCP client integration, and agentic loops — all wired into Quarkus dev services, live reload, and observability.

## Status

| | |
|---|---|
| Maturity | Preview |
| Repository | [quarkiverse/quarkus-langchain4j](https://github.com/quarkiverse/quarkus-langchain4j) |
| Documentation | [docs.quarkiverse.io/quarkus-langchain4j/dev](https://docs.quarkiverse.io/quarkus-langchain4j/dev/) |
| Upstream library | [langchain4j/langchain4j](https://github.com/langchain4j/langchain4j) |
| Extensions | [Browse on quarkus.io →](https://quarkus.io/extensions/?categories=AI&search-regex=LangChain4j) |

## What you can build with it

- **Declarative AI services** — define a Java interface, annotate it with `@RegisterAiService`, inject it like any CDI bean.
- **RAG pipelines** — ingest documents into a vector store; retrieve relevant chunks at query time.
- **Tool-calling** — expose Java methods as tools the model can invoke; Quarkus handles serialization and execution.
- **MCP client integration** — connect to any MCP server and expose its tools to your AI service.
- **Agentic loops** — combine tool-calling with memory and retrieval for multi-step reasoning.

## Quickstart

{% include code-snippet.html id="project-langchain4j-quickstart" %}

[Full quickstart guide →](https://docs.quarkiverse.io/quarkus-langchain4j/dev/quickstart.html)

## Where to go next

- [Documentation](https://docs.quarkiverse.io/quarkus-langchain4j/dev/)
- [Sample applications](https://github.com/quarkiverse/quarkus-langchain4j/tree/main/samples)
- [LangChain4j Workshop](https://quarkus.io/quarkus-workshop-langchain4j/)
