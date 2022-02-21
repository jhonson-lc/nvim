# Neovim

Neovim es un editor de texto basado en Vim diseñado para la extensibilidad y usabilidad,
para fomentar nuevas aplicaciones y contribuciones.

## Instalación

### Prerequisitos

#### Python, Pip y Pipenv

```bash
$ sudo apt-get install python3-pip
$ pip3 install pipenv
```

#### Git

```bash
$ sudo apt-get install git
```

#### Node.js

```bash
$ sudo apt-get install npm
```

- Puede utilizar [nvm](https://github.com/nvm-sh/nvm), para usar diferentes versiones de node.
- Para poder visualizar los iconos en la terminal es necesaria una [nerdfont](https://www.nerdfonts.com/font-downloads)

# Configuración

### Estructura de directorios

```bash
📁$HOME/.config/nvim/
├── 📁after
│   └── plugin
├── 📁colors
├── 📁general
├── 📁plug
├── 📁plugin
├── 📁utils
├── 📄init.vim
└── 📄maps.vim
```

> - After/plugin: Configuraciones de los plugins instalados.
> - colors: Colores del tema
> - general: Configuraciones globales de vim
> - plug: Plugins que serán instalados con [vim-plug](https://github.com/junegunn/vim-plug)
> - plugin: Maps de los plugins
> - utils: Documentos que no tienen sentido
> - init: Ejecutar los archivos
> - maps: Mappings

# Archivos Principales

### general/settings.vim

```Vim
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
set shiftwidth=4
set smartcase
set softtabstop=4
set tabstop=4
set termguicolors
set updatetime=300
set t_Co=256

" Theme
set background=dark
runtime ./colors/gruvbox.vim
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1

" Python virtual environment detection in linux
let g:loaded_python_provider = 0
" Ruta donde se creó python
let g:python3_host_prog = '/usr/bin/python3'

```

### plug/plugins.vim

Algunos plugins básicos

```Vim
call plug#begin('~/.vim/plugged')
" Basic {{{
Plug 'editorconfig/editorconfig-vim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'easymotion/vim-easymotion'
" }}}

" Theme {{{
Plug 'nvim-lualine/lualine.nvim'
Plug 'morhetz/gruvbox'
" }}}

" Filer {{{
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
Plug 'kyazdani42/nvim-web-devicons'
" }}}

" Lsp {{{
" }}}

" Git{{{
Plug 'tpope/vim-fugitive'
" }}}

" Telescope {{{
Plug 'nvim-telescope/telescope.nvim'
" }}}

" Treesitter {{{
Plug 'nvim-treesitter/nvim-treesitter',{'do':':TSUpdate'}
Plug 'nvim-treesitter/playground'
" }}}

" Others {{{
Plug 'folke/which-key.nvim'
Plug 'windwp/nvim-ts-autotag'
Plug 'windwp/nvim-autopairs'
" }}}
call plug#end()

```

### nvim/init.vim

```Vim
runtime ./general/settings.vim
runtime ./plug/plugins.vim
runtime ./maps.vim
```

### nvim/maps.vim

```Vim
" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
nmap ww :w<Return>
nmap wq :wq<Return>
nmap qq :q!<Return>
" Move window
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
```

# Cualquier recomendación es importante
