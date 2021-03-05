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
Plug 'benmills/vimux'

" visual
Plug 'ayu-theme/ayu-vim'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" auto-complete
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'wookayin/vim-autoimport'

" py
Plug 'ryanolsonx/vim-lsp-python'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'psf/black'
Plug 'flebel/vim-mypy', { 'for': 'python', 'branch': 'bugfix/fast_parser_is_default_and_only_parser' }
Plug 'fisadev/vim-isort'
Plug 'mitsuhiko/vim-jinja'

" web
Plug 'ryanolsonx/vim-lsp-typescript'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'herringtondarkholme/yats'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" others
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

filetype plugin indent on
set nocompatible
set noswapfile

" Theme
set termguicolors
let ayucolor="mirage"
colorscheme ayu
"set background=dark

" Visual
syntax enable
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
autocmd Filetype go setlocal ts=8 sts=8 sw=8 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype jsx setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype tsx setlocal ts=2 sts=2 sw=2 expandtab
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

" vim-lsp
nnoremap <C-j> :vsp<Cr>:LspDefinition<Cr>
nnoremap <C-u> :sp<Cr>:LspDefinition<Cr>
nnoremap <C-k> :LspReferences<Cr>
nnoremap <C-l> :LspHover<Cr>
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_highlights_insert_mode_enabled = 0
let g:lsp_highlight_references_enabled = 1

" asyncomplete
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

" vim test
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>

function! TestENVStrategy(cmd)
    let abc = 'FLASK_ENV=test ' . a:cmd
    call VimuxRunCommand(abc)
endfunction

let g:test#custom_strategies = {'testenv': function('TestENVStrategy')}
let test#strategy = "testenv"

" vimux
let g:VimuxOrientation = "h"
let g:VimuxHeight = "40"

" black
let g:black_linelength = 100
let g:black_skip_string_normalization = 1
