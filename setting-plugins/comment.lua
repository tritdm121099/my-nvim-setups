
local status, comment = pcall(require, "Comment")
if status then 
	comment.setup({
		
	})
	vim.keymap.set(
		'n',
		'<leader>/',
		function()
			comment.toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)
		end,
		{ desc = "Toggle comment line" }
	)
	vim.keymap.set(
		'v',
		'<leader>/',
		"<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
		{ desc = "Toggle comment for selection" }
	)
end

