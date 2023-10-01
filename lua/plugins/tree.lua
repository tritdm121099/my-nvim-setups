
local status, tree = pcall(require, 'nvim-tree')
if(not status) then return end

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
tree.setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<C-b>', '<Cmd>NvimTreeToggle<CR>', { desc = "File Explorer" })
vim.keymap.set('i', '<C-b>', '<Cmd>NvimTreeToggle<CR>', { desc = "File Explorer" })

