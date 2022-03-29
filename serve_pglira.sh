#!/usr/bin/env bash

set -eu pipefail

# Install jekyll first: https://jekyllrb.com/docs/installation/ubuntu/

cd /data/repos/pglira.github.io
bundle exec jekyll serve --trace