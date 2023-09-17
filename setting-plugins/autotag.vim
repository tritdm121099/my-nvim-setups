lua << EOF

local status, autotags = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

autotags.setup {
	autotag = {
    enable = true,
  }
}

EOF
