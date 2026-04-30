---
slug: mcp-servers
name: Quarkus MCP Servers
summary: A collection of pre-built MCP servers (JDBC, Kubernetes, filesystem, JFR, JVM insight, WildFly) runnable via JBang.
maturity: preview
tags: [MCP, Tool-calling]
pairs_with: [langchain4j, mcp-server]
---

## Summary

Quarkus MCP Servers is a collection of ready-to-use MCP servers built with Quarkus and distributed via [JBang](https://www.jbang.dev/). No code is required — download and run a server, point your MCP client at it.

> If you want to build your own MCP server in Quarkus, see [Quarkus MCP Server](/ecosystem/mcp-server/) instead.

## Status

| | |
|---|---|
| Maturity | Preview |
| Repository | [quarkiverse/quarkus-mcp-servers](https://github.com/quarkiverse/quarkus-mcp-servers) |
| Distribution | JBang |

## What you can build with it

- **Database queries via natural language** — point Claude Desktop or another MCP client at the JDBC server.
- **Cluster inspection** — query pods, deployments, and logs through the Kubernetes server.
- **Filesystem access for AI agents** — bounded read/write to a local directory.
- **JVM observability for AI** — expose flight recorder data, thread dumps, and JFR insights as tools.

## Quickstart

```bash
jbang mcp-server-jdbc@quarkiverse/quarkus-mcp-servers \
  --db-url=jdbc:postgresql://localhost/mydb \
  --db-user=myuser \
  --db-password=mypassword
```

Point Claude Desktop, VS Code Copilot, or the LangChain4j MCP client at the running server.

## Where to go next

- [Repository and full server list](https://github.com/quarkiverse/quarkus-mcp-servers)
- [Quarkus MCP Server](/ecosystem/mcp-server/) — build your own
- [Quarkus LangChain4j](/ecosystem/langchain4j/) — consume MCP servers from a Quarkus AI service
