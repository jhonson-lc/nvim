call plug#begin('~/.vim/plugged') 
" Basic {{{
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'editorconfig/editorconfig-vim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'easymotion/vim-easymotion'
Plug 'stephenway/postcss.vim'
Plug 'preservim/nerdcommenter'
" }}}

" Support {{{
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'airblade/vim-rooter'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'mattn/emmet-vim'
" }}}

" Theme {{{
Plug 'joshdick/onedark.vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'morhetz/gruvbox'
" }}}

" Format {{{
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
" }}}

" Filer {{{
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
" }}}

" Lsp {{{
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'folke/lsp-colors.nvim'
Plug 'onsails/lspkind-nvim'
" }}}

" Git{{{
Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim'
Plug 'junegunn/gv.vim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'rhysd/conflict-marker.vim'
" }}}

" Telescope {{{
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-github.nvim'
" }}}

" Treesitter {{{
Plug 'nvim-treesitter/nvim-treesitter',{'do':':TSUpdate'}
Plug 'nvim-treesitter/playground'
" }}}

" Snippets {{{
Plug 'rafamadriz/friendly-snippets'
" }}}
" Others {{{
Plug 'folke/which-key.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'windwp/nvim-ts-autotag'
Plug 'windwp/nvim-autopairs'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" }}}
call plug#end()
