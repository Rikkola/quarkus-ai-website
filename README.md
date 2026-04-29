# Quarkus AI Site

Discovery and onboarding hub for Java developers building AI applications with Quarkus.

See `CLAUDE.md` for site purpose, content conventions, and the link to the Quarkus AI Initiative.

## Run locally

    bundle install
    bundle exec rake snippets:fetch
    bundle exec jekyll serve --livereload

Open <http://localhost:4000>.

## Build

    bundle exec jekyll build

Output is in `_site/`.

## Tests

    bundle exec rake test

## Deploy

Push to `main`. GitHub Actions builds and deploys to GitHub Pages.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).
