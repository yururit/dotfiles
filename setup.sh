#!/bin/sh -evx

# change login shell
chsh -s /bin/zsh

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# mise
brew install mise

# 残りのセットアップは mise のタスクで行う（mise.toml を参照）
cd "$(dirname "$0")"
mise trust
mise run setup
