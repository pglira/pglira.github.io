#!/usr/bin/env bash

set -eu pipefail

# Install jekyll prerequisites first with:
# sudo apt-get install ruby-full build-essential zlib1g-dev

export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
gem install jekyll bundler

cd /data/repos/pglira.github.io
bundle install
bundle exec jekyll serve --trace