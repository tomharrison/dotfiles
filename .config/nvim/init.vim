set nocompatible

lua require('plugins')
lua require('my_lualine')

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

" Force true colour on, since vim can’t detect it within tmux
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors

" Enable italics
set t_ZH=^[[3m
set t_ZR=^[[23m

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

" Key mappings

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Also map ctrl-p to Telescape
nnoremap <C-p> <cmd>Telescope find_files<cr>

" Jump back and forward one page. Keep cursor centered vertically.
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Auto commands

" automatically run :PackerCompile whenever plugins.lua is updated
augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end

set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
autocmd FileType go setlocal shiftwidth=4 tabstop=4 softtabstop=4 noexpandtab
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype make setlocal tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd Filetype typescript setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd FileType javascriptreact setlocal shiftwidth=2 tabstop=2
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=0 expandtab
autocmd Filetype c setlocal tabstop=4 shiftwidth=4 softtabstop=0 expandtab
autocmd Filetype ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd Filetype eruby setlocal expandtab shiftwidth=2 tabstop=2

" Prettify/de-prettify JSON
command Format :%!jq .
command Unformat :%!jq -c .
