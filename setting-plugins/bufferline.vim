" In your init.lua or init.vim
set termguicolors
lua << EOF
require("bufferline").setup({
	options = {
		offsets = {
			{
				filetype = "NvimTree",
				text = function()
					return vim.fn.getcwd()
				end,
				highlight = "Directory",
				text_align = "left"
			}
		}
	},
	diagnostics_indicator = function(count, level, diagnostics_dict, context)
		local s = " "
		for e, n in pairs(diagnostics_dict) do
			local sym = e == "error" and " "
				or (e == "warning" and " " or "" )
			s = s .. n .. sym
		end
		return s
	end
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
EOF
