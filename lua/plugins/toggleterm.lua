local status, toggleTerm = pcall(require, "toggleterm")
-- need update
if status then
	toggleTerm.setup({
		highlights = {
      Normal = { link = "Normal" },
      NormalNC = { link = "NormalNC" },
      NormalFloat = { link = "NormalFloat" },
      FloatBorder = { link = "FloatBorder" },
      StatusLine = { link = "StatusLine" },
      StatusLineNC = { link = "StatusLineNC" },
      WinBar = { link = "WinBar" },
      WinBarNC = { link = "WinBarNC" },
    },
    size = 10,
    open_mapping = [[<c-`>]],
    shading_factor = 2,
    direction = "float",
    float_opts = { border = "rounded" },
		shade_filetypes = { "none", "fzf" },
	})
end
