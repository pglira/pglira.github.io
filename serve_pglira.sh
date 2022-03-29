#!/usr/bin/env bash
# Currently (2022-03-29) this isn't working because the Gemfile is missing:
# bundle install -> Could not locate Gemfile

set -eu pipefail

# Install jekyll first: https://jekyllrb.com/docs/installation/ubuntu/

cd /data/repos/pglira.github.io
bundle install
bundle exec jekyll serve --trace