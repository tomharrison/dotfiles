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

call plug#begin('~/.local/share/nvim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  \ | Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NERDTreeToggle' }
  \ | Plug 'xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
  \ | Plug 'jistr/vim-nerdtree-tabs'
Plug 'mhartington/oceanic-next'
Plug 'neomake/neomake'
Plug 'benjie/neomake-local-eslint.vim'
Plug 'chriskempson/base16-vim'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

if (has("termguicolors"))
  set termguicolors
endif

filetype plugin indent on
syntax enable
colorscheme base16-default-dark
