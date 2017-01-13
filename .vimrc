" autocmd
autocmd!

filetype plugin indent on
autocmd FileType * set comments=    " コメント行の次行を自動でコメント行にさせないため
autocmd QuickFixCmdPost *grep* cwindow
syntax enable

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
colorscheme elflord

" key mapping
nnoremap <Right> :NERDTreeToggle<CR>
nnoremap <Left> :NERDTreeToggle<CR>

" highlight
highlight ZenkakuSpace cterm=underline ctermfg=lightcyan
match ZenkakuSpace /　/

" plugin
"-------------------
" NeoBundle
"-------------------
" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-rake'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" neosnippet
let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/original_snippets/'
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
