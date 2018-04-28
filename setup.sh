#!/bin/sh -evx

# change login shell
chsh -s /bin/zsh

# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# anyenv
git clone https://github.com/riywo/anyenv ~/.anyenv

# envsはhttps://github.com/riywo/anyenv/pull/59がマージされるまでの暫定対応
mkdir -p $(anyenv root)/plugins $(anyenv root)/envs
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

# vim (for neocomplete)
brew install lua
brew install vim --with-lua

# Dein
DEIN_INSTALLER=/tmp/dein_install.sh
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > $DEIN_INSTALLER
sh $DEIN_INSTALLER ~/.vim/bundle
rm $DEIN_INSTALLER
