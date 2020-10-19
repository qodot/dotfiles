call plug#begin()

" utils
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug '/usr/local/opt/fzf'
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

" auto complete
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" py
Plug 'ryanolsonx/vim-lsp-python'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'psf/black', { 'tag': '19.10b0' }
Plug 'flebel/vim-mypy', { 'for': 'python', 'branch': 'bugfix/fast_parser_is_default_and_only_parser' }

" js
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

" others
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

filetype plugin indent on
set nocompatible

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
let g:fzf_preview_window = 'right:60%'
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

nnoremap <C-h> :Ag <C-R><C-W><Cr>
nnoremap <C-j> :LspDefinition<Cr>
nnoremap <C-k> :LspReferences<Cr>

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
"let test#strategy = "vimux"

" mypy
nnoremap <C-m> :Mypy<Cr>

" python language server
" if executable('pyls')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'pyls',
"         \ 'cmd': {server_info->['pyls']},
"         \ 'whitelist': ['python'],
"         \ })
" endif
