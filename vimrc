let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" utils
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
Plug 'vim-test/vim-test'

" git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'

" auto-complete
Plug 'github/copilot.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" python
Plug 'wookayin/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'psf/black'
Plug 'fisadev/vim-isort'
Plug 'mitsuhiko/vim-jinja'

" elixir
Plug 'elixir-editors/vim-elixir'

" web
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }

" colorscheme
Plug 'NLKNguyen/papercolor-theme'

call plug#end()

filetype plugin indent on
set nocompatible
set noswapfile

" Color Scheme
set background=dark
colorscheme PaperColor

" Visual
set number
set title
set ruler
set showcmd
set wildmenu
set wildmode=list:longest,full
set visualbell
set cursorline
set colorcolumn=101
set mouse=a
set guioptions=a
set splitright
set splitbelow
set scrolloff=999
set noshowmode

" Format Confing
set list
set list listchars+=space:• " 빈칸을 • 로 표시
set listchars=tab:├─
set listchars+=trail:⋄ " 뒤 공백을 ⋄ 로
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
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype typescriptreact setlocal ts=2 sts=2 sw=2 expandtab
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

" use ctrl-c to esc
map <C-c> <Esc>
imap <C-c> <Esc>
vmap <C-c> <Esc>

imap <C-j> <C-n>
imap <C-k> <C-p>

" nerdtree
" autocmd VimEnter * NERDTree .
let NERDTreeIgnore = ['\.pyc$', '__pycache__$']
let NERDTreeShowHidden = 1
nnoremap <C-N> :NERDTreeToggle <CR>

" fzf
nnoremap <C-p> :Files<Cr>

" rg
nnoremap <C-h> :Rg <C-R><C-W><Cr>

" vim test
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
let test#python#runner = "pytest"

" python
nmap <silent> <C-k> :Black<CR>
nmap <silent> <C-l> :Isort<CR>

" javascript
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
