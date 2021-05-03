#!/usr/bin/env bash

# https://www.kahlillechelt.com/blog/volta/
# https://docs.volta.sh/guide/
# https://docs.volta.sh/guide/getting-started

curl https://get.volta.sh | bash
volta install node@latest
volta install yarn@latest

bundle binstubs bundler --force
rails  webpacker:install

