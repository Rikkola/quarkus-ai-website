# CLAUDE.md

Guidance for future Claude Code sessions working in this repo.

## What this is

A Jekyll static site at `quarkus-ai-site` (or your fork). It is a discovery and onboarding hub for Java developers using the Quarkus AI ecosystem — not a coordination hub for the Quarkus AI Initiative (that lives at <https://github.com/mdproctor/quarkus-ai>).

## Tech stack

- Jekyll 4.x, Ruby 3.2+, Bundler
- Custom SCSS (no framework), Open Sans + Roboto Mono
- Vanilla JS (theme toggle, copy buttons)
- Rouge syntax highlighting via Jekyll
- Rake task `snippets:fetch` downloads upstream code snippets at pinned commit SHAs
- GitHub Actions deploys to GitHub Pages on push to `main`

## Architecture

**Data-driven.** All scaling content lives in `_data/*.yml`:

- `layers.yml` — architecture layers (AI Services, Orchestration, Protocol & Tools)
- `ecosystem.yml` — one entry per project; `layer:` field connects to layers
- `combinations.yml` — curated featured cross-project code combos
- `usecases.yml` — use cases mapped to project tags
- `learn.yml` — workshops, tutorials, community examples
- `snippets.yml` — code snippet sources, both upstream (SHA-pinned) and local

To add a new project: append to `ecosystem.yml`, create `_ecosystem/<slug>.md`, optionally add a quickstart entry to `snippets.yml`. The home-page grid, the layered diagram, and any matching use cases update automatically.

## Content rules

- Direct, technical, factual tone. No marketing language, no "supercharge your AI journey".
- Honest about maturity (preview means preview).
- No specific performance numbers about the site — when discussing native compilation, frame as what *Quarkus apps can achieve*.
- No internal Quarkus AI Initiative content (working group, phases, roadmap, distributed tasks). The Initiative repo gets one footer link.
- No Spring AI comparison.
- Code snippets must compile or run as shown. Prefer pinning upstream snippets by SHA over copying.

## Common tasks

**Add a project:**

```bash
# 1. Add entry to _data/ecosystem.yml
# 2. Create _ecosystem/<slug>.md with frontmatter (slug, name, summary, maturity, tags, pairs_with) and body
#    If the project has Quarkus extensions in the catalog, set extension_url in _data/ecosystem.yml
#    using the pattern https://quarkus.io/extensions/?categories=AI&search-regex=<FamilyName>
# 3. Optional: add quickstart snippet entry to _data/snippets.yml
# 4. Run: bundle exec rake snippets:fetch
# 5. Run: bundle exec jekyll serve and verify
# 6. Commit
```

**Update an upstream snippet to a newer commit:**

```bash
# 1. Bump the sha: field in _data/snippets.yml
# 2. Run: bundle exec rake snippets:fetch
# 3. Verify the cached file changed
# 4. Commit both _data/snippets.yml and _includes/snippets/cache/<id>.<ext>
```

**Add a learn entry:**

Append to `_data/learn.yml` with `type: workshop|tutorial|community`.

## Claude Code skills for the Quarkus AI ecosystem

These apply when developing the **underlying Quarkus extensions and AI applications**, not this Jekyll site. Mention by name to invoke explicitly, or rely on their auto-trigger keywords:

- `quarkus-flow-dev` — writing Quarkus Flow workflows: `Flow` subclasses, FuncDSL tasks (function/agent/emit/listen/switchWhen/forEach/http/openapi), YAML workflow definitions, debugging workflow issues.
- `quarkus-flow-testing` — writing or debugging tests for Quarkus Flow workflows (`@QuarkusTest`, REST integration tests, mocking AI agents).
- `quarkus-observability` — configuring logging, tracing, metrics, OpenTelemetry, MDC, structured logging in Quarkus apps.

For this repo (the Jekyll site) none of these apply — site work is just Liquid, SCSS, YAML, and Markdown.

## Run locally

    bundle install
    bundle exec rake snippets:fetch
    bundle exec jekyll serve --livereload

Open <http://localhost:4000>.

## Run tests

    bundle exec rake test

## Commit conventions

Conventional Commits: `feat:`, `chore:`, `docs:`, `ci:`, `fix:`, `test:`.
