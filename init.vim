:set number
:set relativenumber
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse=a
:set foldmethod=indent   
:set foldnestmax=10
:set nofoldenable
:set foldlevel=2

call plug#begin('~/AppData/Local/nvim/plugged')

"{{ theme }}
Plug 'folke/tokyonight.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvimdev/dashboard-nvim'" dashboard and icons
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'

" {{ File browser }}
Plug 'nvim-telescope/telescope.nvim'				" File Finder
Plug 'nvim-lua/plenary.nvim'						" Required dependencies telescope
Plug 'nvim-telescope/telescope-file-browser.nvim'	" telescope extension

" {{ code }}
Plug 'windwp/nvim-ts-autotag'				" auto close tag html
Plug 'windwp/nvim-autopairs'				" auto close brackets
Plug 'akinsho/bufferline.nvim'			" multi tabs
Plug 'nvim-tree/nvim-tree.lua'			" A File Explorer

"{{ status line }}
Plug 'nvim-lualine/lualine.nvim'		

" {{ Language service protocol config }}
Plug 'neovim/nvim-lspconfig'	" lsg 
" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'}

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}
" Plug 'onsails/lspkind-nvim'		" autocomplete lsg
Plug 'williamboman/mason.nvim' " manager lsg
Plug 'williamboman/mason-lspconfig.nvim'

" {{ GIT }}
Plug 'lewis6991/gitsigns.nvim' " git change line

" {{ Vim }}
Plug 'gelguy/wilder.nvim' " suggest vim command
Plug 'rcarriga/nvim-notify' " notification manager for NeoVim

set encoding=UTF-8

call plug#end()

lua << EOF
	require('keymap')
EOF

" Other setting
for setting_file in split(glob(stdpath('config').'/setting-plugins/*.vim'))
  execute 'source' setting_file
endfor



