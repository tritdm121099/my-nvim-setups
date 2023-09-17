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

" {{ File browser }}
Plug 'nvim-telescope/telescope.nvim'				" File Finder
Plug 'nvim-lua/plenary.nvim'						" Required dependencies telescope
Plug 'nvim-telescope/telescope-file-browser.nvim'	" telescope extension
Plug 'ryanoasis/vim-devicons'                 " Icon

" {{ code }}
Plug 'windwp/nvim-ts-autotag'				" auto close tag html
Plug 'windwp/nvim-autopairs'				" auto close brackets
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }		" multi tags

"{{ status line }}
Plug 'nvim-lualine/lualine.nvim'		

" {{ Language service protocol config }}
Plug 'neovim/nvim-lspconfig'	" lsg 
Plug 'onsails/lspkind-nvim'		" autocomplete lsg

set encoding=UTF-8

call plug#end()

" Other setting
for setting_file in split(glob(stdpath('config').'/setting-plugins/*.vim'))
  execute 'source' setting_file
endfor

