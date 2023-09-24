lua << EOF

local status, lualinne = pcall(require, 'gruvbox-material')

if(not status) then return end

lualine.setup {
  options = { theme  = 'gruvbox-material' },
}

EOF
