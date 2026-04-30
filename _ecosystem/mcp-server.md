---
slug: mcp-server
name: Quarkus MCP Server
summary: Build Model Context Protocol servers as Quarkus applications.
maturity: preview
tags: [MCP, Tool-calling]
pairs_with: [langchain4j, mcp-servers]
---

## Summary

Quarkus MCP Server is a Quarkus extension for **building** [Model Context Protocol](https://modelcontextprotocol.io/) servers. It is not a collection of pre-built servers — it is the framework you use to write your own.

An MCP server exposes tools, resources, and prompts to MCP-compatible clients: Claude Desktop, VS Code Copilot, and the LangChain4j MCP client integration. Quarkus handles the protocol, transport, and CDI lifecycle.

> If you are looking for ready-to-use MCP servers (JDBC, Kubernetes, filesystem, etc.), see [Quarkus MCP Servers](/ecosystem/mcp-servers/) instead. This extension is for building new ones.

## Status

| | |
|---|---|
| Maturity | Preview |
| Repository | [quarkiverse/quarkus-mcp-server](https://github.com/quarkiverse/quarkus-mcp-server) |
| Documentation | [docs.quarkiverse.io/quarkus-mcp-server/dev](https://docs.quarkiverse.io/quarkus-mcp-server/dev/index.html) |

## What you can build with it

- **Domain-specific tools** — expose existing Java business logic as model-callable tools.
- **Resource endpoints** — let models read structured data from your application.
- **Custom prompts** — define reusable prompt templates registered with the MCP protocol.
- **Stdio and SSE servers** — supports both transport modes.

## Quickstart

{% include code-snippet.html id="project-mcp-server-quickstart" %}

[Full documentation →](https://docs.quarkiverse.io/quarkus-mcp-server/dev/index.html)

## Where to go next

- [Documentation](https://docs.quarkiverse.io/quarkus-mcp-server/dev/index.html)
- [Source and examples](https://github.com/quarkiverse/quarkus-mcp-server)
