call plug#begin('~/.config/nvim/plugged')

" utils
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'

" visual
Plug 'ayu-theme/ayu-vim'
" Plug 'NLKNguyen/papercolor-theme'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" auto complete
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" python
Plug 'ryanolsonx/vim-lsp-python'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'psf/black'
Plug 'integralist/vim-mypy'

" other languages
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

filetype plugin indent on
set nocompatible

" Theme
set termguicolors
let ayucolor="dark"
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
set colorcolumn=81
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

" ctags
" nnoremap <C-k> <C-t>

" tagbar
" nmap <C-m> :TagbarToggle<CR>

" ag
nnoremap <C-k> :Ag <C-R><C-W><Cr>
nnoremap <C-j> :LspPeekDefinition<Cr>
nnoremap <C-k> :LspDefinition<Cr>

" theme
let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }

" lightline
let g:lightline = { 'colorscheme': 'PaperColor' }

" asyncomplete
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

" python language server
if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

" coc
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" deoplete
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_ignore_case = 1
" inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" neomake
" call neomake#configure#automake('w')
" let g:neomake_python_enabled_makers = ['flake8']

" kite
" let g:kite_auto_complete=1
" let g:kite_tab_complete=1

" black
let g:black_linelength = 80

" vim-test
" function! EchoStrategy(cmd)
"     let $FLASK_ENV = 'test'
"     echo 'Run test with environment ${FLASK_ENV}: ' . a:cmd
" endfunction
" let g:test#custom_strategies = {'echo': function('EchoStrategy')}
" let g:test#strategy = 'echo'
