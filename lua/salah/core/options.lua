local opt = vim.opt -- for conciseness

-- keywords
opt.iskeyword:append("-", "_")

-- 42
vim.cmd([[
filetype off
filetype plugin indent on
set smartindent
set tabstop=4
set shiftwidth=4
set noexpandtab
set nocompatible
set modelines=1
set hidden
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

syntax on
set encoding=utf-8
set nu
set rnu
set background=dark
set nowrap

let g:user42 = 'sbouheni'
let g:mail42 = 'sbouheni@student.42mulhouse.fr'

source ~/.config/nvim/lua/salah/plugins/c_formatter_42.vim
]])
