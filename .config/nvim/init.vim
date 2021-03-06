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

" Javascript
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'
"
" Color systems
Plug 'chriskempson/base16-vim'
Plug 'atelierbram/Base2Tone-vim'

" Color schemes
Plug 'rakr/vim-one'
Plug 'vim-scripts/chlordane.vim'
Plug 'rakr/vim-two-firewatch'
Plug 'junegunn/seoul256.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'w0ng/vim-hybrid'
" phosphor
Plug 'elmindreda/vimcolors'
Plug 'vim-scripts/greenvision'
Plug 'nanotech/jellybeans.vim'
Plug 'tomharrison/vim-gotham'
Plug 'altercation/vim-colors-solarized'

" No words...
Plug 'KeyboardFire/hotdog.vim'

call plug#end()

if (has("termguicolors"))
  set termguicolors
endif

filetype plugin indent on
syntax enable
set background=dark
colorscheme base16-green-screen
let g:jsx_ext_required = 0
