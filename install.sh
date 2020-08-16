#!/bin/bash

if ! [[ "$HOME" -ef "../" ]]; then
  echo "$HOME must be the parent directory of the dotfiles repo"
  exit 1
fi

if ! command -v stow &>/dev/null; then
  if ! command -v brew &>/dev/null; then
    echo "You must install brew first: https://brew.sh/"
    exit 1
  else
    brew install stow
  fi
fi

for D in */; do
  echo "Installing ${D}"
  stow "${D}"
done

