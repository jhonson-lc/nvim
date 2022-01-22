let mapleader = " "

autocmd!
scriptencoding utf-8
if !1 | finish | endif

syntax enable
set clipboard=unnamed
set cursorline
set cmdheight=2
set encoding=UTF-8
set expandtab
set fileencodings=utf-8,sjis,euc-jp,latin
set hidden
set hlsearch
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set laststatus=2
set mouse=a
set number
set numberwidth=3
set noswapfile
set nowrap
set showcmd
set showtabline=2
set nobackup
set ruler
set relativenumber
set signcolumn=number
set scrolloff=10
set showmatch
set splitbelow
set splitright
set smartindent
set autoindent
set shiftwidth=2
set smartcase                   
set softtabstop=2
set tabstop=2
set termguicolors
set updatetime=300
set t_Co=256

" Ignore Files {{{
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*
" }}}
filetype plugin indent on

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif

autocmd VimEnter * if isdirectory(expand(printf('#%s:p', expand('<abuf>')))) | Defx | endif
autocmd VimEnter * set statusline+=%{get(b:,'gitsigns_status','')}
autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
"
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript

"Theme
syntax enable
set background=dark
" let g:neosolarized_termtrans=1
runtime ./colors/gruvbox.vim
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 1
let g:loaded_netrwPlugin=1

let g:loaded_python_provider = 0
let g:user_emmet_leader_key='\'
let g:python3_host_prog = '/usr/bin/python3'

hi CursorLine		guibg=#323d3e
highlight CursorLineNr guifg=Orange
autocmd InsertEnter * highlight  CursorLine guibg=#323D3E
autocmd InsertEnter * highlight  Cursor guibg=#00AAFF;
autocmd InsertLeave * highlight  CursorLine guibg=#323D3E
autocmd InsertLeave * highlight  Cursor guibg=#A6E22E;




