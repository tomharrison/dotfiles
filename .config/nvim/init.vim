let g:mapleader=','

set backspace=indent,eol,start
set encoding=utf-8 nobomb
set modeline modelines=4
set exrc secure
set number relativenumber numberwidth=3
set cursorline
set novisualbell errorbells
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set hlsearch ignorecase incsearch
set mouse=a
set nostartofline
set ruler
set shortmess=atI
set showmode
set title
set showcmd
set scrolloff=3
set fillchars+=diff:⣿
set fillchars+=vert:│
set fillchars+=fold:-
set list
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
set background=dark

call plug#begin('~/.local/share/nvim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  \ | Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NERDTreeToggle' }
  \ | Plug 'xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
  \ | Plug 'jistr/vim-nerdtree-tabs'
Plug 'neomake/neomake'
Plug 'benjie/neomake-local-eslint.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'isRuslan/vim-es6'
Plug 'mxw/vim-jsx'
Plug 'chriskempson/base16-vim'
Plug 'rakr/vim-two-firewatch'
Plug 'atelierbram/Base2Tone-vim'
Plug 'rakr/vim-one'

call plug#end()

if (has("termguicolors"))
  set termguicolors
endif

filetype plugin indent on
syntax enable
set background=dark
colorscheme one
let g:jsx_ext_required = 0
