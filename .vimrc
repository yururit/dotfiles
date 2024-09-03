" vim-jetpack
packadd vim-jetpack
call jetpack#begin()
call jetpack#add('tani/vim-jetpack', {'opt': 1}) "bootstrap
call jetpack#add('Shougo/neosnippet.vim')
call jetpack#add('Shougo/neosnippet-snippets')
call jetpack#add('Shougo/neocomplete')
call jetpack#add('Shougo/unite.vim')
call jetpack#add('thinca/vim-quickrun')
call jetpack#add('itchyny/lightline.vim')
call jetpack#add('scrooloose/nerdtree')
call jetpack#add('vim-ruby/vim-ruby')
call jetpack#add('tpope/vim-rails')
call jetpack#add('tpope/vim-bundler')
call jetpack#add('tpope/vim-rake')
call jetpack#add('slim-template/vim-slim')
call jetpack#add('posva/vim-vue')
call jetpack#add('ConradIrwin/vim-bracketed-paste')
call jetpack#add('croaker/mustang-vim') " colorscheme
call jetpack#end()

for name in jetpack#names()
  if !jetpack#tap(name)
    call jetpack#sync()
    break
  endif
endfor

" plugin
" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" neosnippet
let g:neosnippet#snippets_directory='~/.vim/custom_snippets'
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

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
set pastetoggle=<F2>

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
