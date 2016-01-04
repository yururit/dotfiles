#!/bin/sh

# anyenv
git clone https://github.com/riywo/anyenv ~/.anyenv

mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
git clone https://github.com/znz/anyenv-git.git $(anyenv root)/plugins/anyenv-git

# Perl
anyenv install plenv

# Ruby
anyenv install rbenv

# Node.js
anyenv install ndenv
