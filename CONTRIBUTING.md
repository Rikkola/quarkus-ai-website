# Contributing

Contributions of all kinds are welcome: typo fixes, broken-link reports, new tutorial listings, improved descriptions, and new ecosystem project entries.

## Adding an ecosystem project

1. Add an entry to `_data/ecosystem.yml` with: `slug`, `name`, `summary`, `layer`, `tags`, `maturity`, `repo`, `docs`.
2. Create `_ecosystem/<slug>.md` with frontmatter and the body sections (Summary, What you can build with it, How it fits, Quickstart).
3. If a fitting upstream sample exists, add an entry to `_data/snippets.yml` with `source: upstream` pinned to a specific commit SHA. Otherwise add a `source: local` snippet under `_includes/snippets/local/`.
4. Run `bundle exec rake snippets:fetch` and `bundle exec jekyll build` to verify.

## Adding a learn entry

Append to `_data/learn.yml` with: `type` (workshop/tutorial/community), `source` (official/community), `title`, `url`, `duration`, `description`.

## Content guidelines

- Direct, technical, factual tone. No marketing language.
- Verify external links before submitting.
- Code snippets must compile or run as shown. Prefer pinning upstream snippets by SHA over copying.
- Honest about maturity (preview means preview).

## Reporting issues

Open a GitHub Issue for broken links, outdated content, or suggestions.
