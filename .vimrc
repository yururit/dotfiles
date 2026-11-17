" plugin
" プラグインは ~/.vim/pack/plugins/start/ に置く（mise run setup:vim:plugins で取得）
" nerdtree
nnoremap <Right> :NERDTreeToggle<CR>
nnoremap <Left> :NERDTreeToggle<CR>

" autocmd
autocmd!
autocmd FileType * set comments=    " コメント行の次行を自動でコメント行にさせないため
autocmd QuickFixCmdPost *grep* cwindow

" option
set ambiwidth=double
set autoindent
set background=dark
set backspace=eol,indent,start
set cindent
set cinoptions=g0   " C++でpublic/privateをindentしないように
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set incsearch
set showmatch
set showmode
set smartcase
set splitright
set number
set list
set listchars=tab:>\ ,trail:-

" encoding
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,cp932
set fileformats=unix,dos,mac
set encoding=utf-8

" statusline
set statusline=%<%f\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%4v\ %l/%L
set laststatus=2

" colorscheme
colorscheme mustang

" highlight
highlight ZenkakuSpace cterm=underline ctermfg=lightcyan
match ZenkakuSpace /　/

" format
filetype plugin indent on
syntax enable
