#!/bin/sh

# anyenv
git clone https://github.com/riywo/anyenv ~/.anyenv
exec $SHELL -l

mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
git clone https://github.com/znz/anyenv-git.git $(anyenv root)/plugins/anyenv-git

# Perl
anyenv install plenv
exec $SHELL -l

# Ruby
anyenv install rbenv
exec $SHELL -l

# Node.js
anyenv install ndenv
exec $SHELL -l
