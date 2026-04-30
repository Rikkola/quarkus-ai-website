---
slug: flow
name: Quarkus Flow
summary: Orchestrate AI tasks with stateful, event-driven workflows based on the CNCF Serverless Workflow specification.
maturity: preview
tags: [Workflows, Agents, Orchestration]
pairs_with: [langchain4j]
---

## Summary

Quarkus Flow brings the [CNCF Serverless Workflow specification](https://serverlessworkflow.io/) into Quarkus. Workflows are defined in YAML or Java and run as stateful, multi-step processes — useful when steps must wait on human input, external events, or AI model responses.

For AI workloads, Flow handles the orchestration layer: sequencing LangChain4j calls, routing on model output, waiting for human approval, and recovering from partial failures.

## Status

| | |
|---|---|
| Maturity | Preview |
| Repository | [quarkiverse/quarkus-flow](https://github.com/quarkiverse/quarkus-flow) |
| Documentation | [docs.quarkiverse.io/quarkus-flow/dev](https://docs.quarkiverse.io/quarkus-flow/dev/) |
| Specification | [CNCF Serverless Workflow](https://serverlessworkflow.io/) |
| Extensions | [Browse on quarkus.io →](https://quarkus.io/extensions/?categories=AI&search-regex=Flow) |

## What you can build with it

- **Sequential AI pipelines** — chain multiple model calls where each step depends on the previous result.
- **Human-in-the-loop workflows** — pause execution, surface a decision to a human, resume on approval.
- **Event-driven orchestration** — trigger workflow steps from Kafka, HTTP, or CloudEvents.
- **Agentic workflows** — combine tool-calling with branching logic and retries.
- **Stateful long-running processes** — workflows survive restarts; state is persisted.

## Quickstart

See the [getting started guide](https://docs.quarkiverse.io/quarkus-flow/dev/getting-started.html) for a full walkthrough.

## Where to go next

- [Documentation](https://docs.quarkiverse.io/quarkus-flow/dev/)
- [Examples](https://github.com/quarkiverse/quarkus-flow/tree/main/examples)
- [Quarkus Flow Workshop](https://docs.quarkiverse.io/quarkus-flow/dev/wk-index.html)
