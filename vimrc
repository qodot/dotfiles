" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'git://github.com/klen/python-mode.git'
call vundle#end()

" Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neomake/neomake'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'

Plug 'posva/vim-vue'

Plug 'junegunn/seoul256.vim'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

filetype plugin indent on

" Theme
syntax enable
if (has("termguicolors"))
    set termguicolors
endif

let g:seoul256_background = 235
colorscheme seoul256
" colorscheme OceanicNext

" Visual
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
set listchars=space:·,tab:››,trail:.
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

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype vue setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype go setlocal ts=8 sts=8 sw=8 noexpandtab

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

" Key Bindings
map <C-p> :FZF<cr>
map <C-c> <Esc>
imap <C-c> <Esc>
vmap <C-c> <Esc>

" The-NERD-Tree
autocmd VimEnter * NERDTree .

" Deoplete
call deoplete#enable()
let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Python-Mode
let g:pymode_python = 'python3'
let g:pymode_folding = 0
let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autoimport = 0

" Neomake
autocmd! BufWritePost * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']

" Vim-Airline-Themes
" let g:airline_theme='base16'
