export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

## 履歴の保存先
HISTFILE=$HOME/.zsh-history
### メモリに展開する履歴の数
HISTSIZE=100000
### 保存する履歴の数
SAVEHIST=100000
### 補完機能の強化
autoload -U compinit
compinit
### コアダンプサイズを制限
limit coredumpsize 102400
### 出力の文字列末尾に改行コードが無い場合でも表示
unsetopt promptcr
### 色を使う
setopt prompt_subst
### ビープを鳴らさない
setopt nobeep
### 内部コマンド jobs の出力をデフォルトで jobs -l にする
setopt long_list_jobs
### 補完候補一覧でファイルの種別をマーク表示
setopt list_types
### サスペンド中のプロセスと同じコマンド名を実行した場合はリジューム
setopt auto_resume
### 補完候補を一覧表示
setopt auto_list
### 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups
### 同じディレクトリを pushd しない
setopt pushd_ignore_dups
### ファイル名で #, ~, ^ の 3 文字を正規表現として扱う
setopt extended_glob
### TAB で順に補完候補を切り替える
setopt auto_menu
### zsh の開始, 終了時刻をヒストリファイルに書き込む
setopt extended_history
### =command を command のパス名に展開する
setopt equals
### --prefix=/usr などの = 以降も補完
setopt magic_equal_subst
### ヒストリを呼び出してから実行する間に一旦編集
setopt hist_verify
### ヒストリを共有
setopt share_history
### 補完候補のカーソル選択を有効に
zstyle ':completion:*:default' menu select=1
### カッコの対応などを自動的に補完
setopt auto_param_keys
### ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash
### スペルチェック
setopt correct
### ファイル名の展開でディレクトリにマッチした場合末尾に / を付加する
setopt mark_dirs
### history (fc -l) コマンドをヒストリリストから取り除く。
setopt hist_no_store
### 補完候補を詰めて表示
setopt list_packed
### 最後のスラッシュを自動的に削除しない
setopt noautoremoveslash
### ログアウト時にバックグランドジョブをkillしない
setopt no_hup

## term
TERM="xterm-256color"
stty stop undef

## alias
alias vim='/usr/local/bin/vim'
alias vi='vim'
alias view='vim -R'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias ls='ls -ltp'
alias pm='perldoc -m'
alias pl='perldoc -l'

## キーバインド
bindkey -e
bindkey '^?' backward-delete-char

## prompt
setopt prompt_subst
setopt transient_rprompt
PROMPT=$'%{\e[36m%}%n@%m%{\e[33m%}:$(get_branch_name)%{\e[0m%} %(!.#.$)%{\e[0m%} '
RPROMPT=$'%{\e[32m%}[%~] %D %T%{\e[0m%}'
PROMPT2="%_? "
SPROMPT="correst '%R' to '%r' [n/y/a/e]:"

## perldoc
export PERLDOC_PAGER='lv -c'

## function
function get_branch_name {
    echo $(git rev-parse --abbrev-ref HEAD 2> /dev/null)
}
