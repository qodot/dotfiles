""" Vundle Config
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required

" functional
Plugin 'VundleVim/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'git://github.com/klen/python-mode.git'

" theme
Plugin 'mhartington/oceanic-next'

" syntax
Plugin 'posva/vim-vue'

"Plugin 'tpope/vim-fugitive'
"Plugin 'L9'
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'file:///home/gmarik/path/to/plugin'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

call plug#begin('~/.vim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

filetype plugin indent on    " required


""" Vim Config

" Visual Config
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

if (has("termguicolors"))
 set termguicolors
endif

colorscheme OceanicNext

syntax enable
set number
set title
set ruler
set showcmd
set wildmenu
set wildmode=list:longest,full
set visualbell
set cursorline
set colorcolumn=80
set mouse=a
set guioptions=a
set splitright
set splitbelow
set scrolloff=999

" Format Confing
set list
set listchars=tab:->,trail:.
set formatoptions=cqrt

" Tab Config
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set smartindent

" Key Config
set backspace=indent,eol,start

" Search Config
set hlsearch
set incsearch
set ignorecase
set smartcase

" ETC Config
set autoread
set history=1000
set undolevels=1000
set clipboard=unnamed
set encoding=utf-8
set fileencoding=utf-8


""" Plugin Config

" The-NERD-Tree
autocmd VimEnter * NERDTree .

" CtrlP
set path=$PWD/**
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Python-Mode
let g:pymode_python = 'python3'
let g:pymode_folding = 0

" Vim-Airline
let g:airline_theme='base16'

