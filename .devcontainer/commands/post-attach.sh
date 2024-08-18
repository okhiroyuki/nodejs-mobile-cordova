#!/bin/bash

sudo chown "$USER" .pre-commit-cache
sudo chown "$USER" .npm
sudo chown "$USER" node_modules

if [ ! \( -f .git/hooks/pre-commit \) ]; then
  pre-commit install
fi

npm ci
