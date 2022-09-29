lua require('plugins')
lua require('my_lualine')

set nocompatible
set clipboard=unnamed
set wildmenu
set backspace=indent,eol,start
set ttyfast
set gdefault hlsearch ignorecase incsearch
set encoding=utf-8 nobomb
let mapleader=","
set noeol
set binary
set modeline modelines=4
set exrc
set secure
set number relativenumber numberwidth=3
set cursorline
set mouse=a
set showmode
set title
set nostartofline ruler
set showcmd
set scrolloff=3

" Tabs are four columns wide. Each indentation level is one tab.
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Always show status line
set laststatus=2
" Disable error bells
set noerrorbells
" Don’t show the intro message when starting Vim
set shortmess=atI

set background=dark
colorscheme tokyonight-moon
filetype plugin indent on
syntax enable
" Don't underline/bold/italicize HTML tag contents.
let html_no_rendering=1

" Golang settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" automatically run :PackerCompile whenever plugins.lua is updated
augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
