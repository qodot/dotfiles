" Vim-Plug
call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'neomake/neomake'
Plug 'integralist/vim-mypy'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'junegunn/seoul256.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

filetype plugin indent on

" Theme
syntax enable
if (has("termguicolors"))
    set termguicolors
endif

let g:seoul256_background = 235
colorscheme seoul256

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
set noshowmode

" Format Confing
set list
set listchars=space:·,tab:->,trail:.
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
map <C-p> :Files <CR>
nmap <Leader>w :w<CR>
map <C-c> <Esc>
imap <C-c> <Esc>
vmap <C-c> <Esc>

" nerdtree
" autocmd VimEnter * NERDTree .
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeShowHidden = 1

nnoremap K :Ag <C-R><C-W><CR>

" deoplete
" let g:python3_host_prog = '/Users/qodot/.pyenv/versions/neovim3/bin/python'
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" neomake
call neomake#configure#automake('w')
let g:neomake_python_enabled_makers = ['flake8']
