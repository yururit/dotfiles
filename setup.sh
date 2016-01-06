#!/bin/sh

# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# anyenv
git clone https://github.com/riywo/anyenv ~/.anyenv

mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
git clone https://github.com/znz/anyenv-git.git $(anyenv root)/plugins/anyenv-git

# plenv
anyenv install plenv

# rbenv
anyenv install rbenv

# ndenv
anyenv install ndenv

# tmux
brew install tmux
mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
