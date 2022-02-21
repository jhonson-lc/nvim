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
$HOME/.config/nvim/
├── after
│   └── plugin
├── colors
├── general
├── plug
├── plugin
└── utils
```

> - After/plugin: Configuraciones de los plugins instalados.
> - colors: Colores del tema
> - general: Configuraciones globales de vim
> - plug: Plugins que serán instalados con [vim-plug](https://github.com/junegunn/vim-plug)
> - plugin: Maps de los plugins
> - utils: Documentos que no tienen sentido

# Archivos Principales

### general/settings.vim

```Vim
syntax enable

set guicursor=                                     " Disable blinking for the n-v-c modes
set termguicolors
set guioptions-=T                                   " No Tool bar

set cursorline                                     " Highlight the current line

set hidden                                         " When on a buffer becomes hidden when it is abandoned
set path+=**
set nowrap
set encoding=UTF-8

set number relativenumber

set smartindent
set smarttab
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartcase
set incsearch
set nohlsearch
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set noswapfile
set nobackup
set undofile
execute 'set undodir=' . g:nvim_data_root . '/undodir'

" Python virtual environment detection in linux
let g:loaded_python_provider = 0
" Ruta donde se creó python
let g:python3_host_prog = '/home/{usuario}/.local/share/bin/python'
```
