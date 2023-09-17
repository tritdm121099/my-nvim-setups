" In your init.lua or init.vim
set termguicolors
lua << EOF
require("bufferline").setup{}

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
EOF
