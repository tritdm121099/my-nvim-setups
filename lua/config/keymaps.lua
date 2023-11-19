-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- move lines up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "move lines up" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "move lines down" })

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "te", ":tabedit", { desc = "new tab" })
keymap.set("n", "<tab>", ":tabnext<Return>", { desc = "next tab" })
keymap.set("n", "<s-tab>", ":tabprev<Return>", { desc = "previous tab" })

keymap.set("n", "<leader>mm", "<cmd>Telescope neoclip<cr>", { desc = "Telescope Clipboard" })
