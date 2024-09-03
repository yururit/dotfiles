#!/bin/sh -evx

# change login shell
chsh -s /bin/zsh

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# anyenv
\rm -rf ~/.anyenv
git clone https://github.com/riywo/anyenv ~/.anyenv

\rm -rf /Users/${USER}/.config/anyenv/anyenv-install
~/.anyenv/bin/anyenv install --init

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
git clone https://github.com/znz/anyenv-git.git $(anyenv root)/plugins/anyenv-git

# plenv
anyenv install plenv

# rbenv
anyenv install rbenv

# ndenv
anyenv install nodenv

# pyenv
anyenv install pyenv

# tmux
brew install tmux
mkdir -p ~/.tmux/plugins && rm -rf ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# vim (for neocomplete)
brew install lua
brew install vim

# peco
brew install peco

# vim-jetpack
curl -fLo ~/.vim/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim

# install dotfiles
$(dirname $0)/install.sh
