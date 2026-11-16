dotfiles
====

## Description
* 開発環境のdotfile達
* 言語・CLI ツールは mise（mise/config.toml）、それ以外は Homebrew（Brewfile）で管理する

## Install
* git clone https://github.com/yururit/dotfiles
* cd ./dotfiles
* ./setup.sh

## Update
* mise run setup:link など、個別の手順は mise.toml のタスクとして実行できる（一覧は mise tasks）
* mise で管理するツールの更新は mise upgrade
