#!/bin/bash

if [ ! \( -f .git/hooks/pre-commit \) ]; then
  pre-commit install
fi

sudo chown "$USER" .pre-commit-cache
sudo chown "$USER" .npm
sudo chown "$USER" node_modules

npm ci
