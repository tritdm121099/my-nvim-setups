local status, autopairs = pcall(require, 'nvim-autopairs')
if (not status) then return end

autopairs.setup({
  disable_filetype = { "TelescopePrompt" },
})

--if not vim.g.autopairs_enabled then autopairs.disable() end

local cmp_status_ok, cmp = pcall(require, "cmp")
if cmp_status_ok then
  cmp.event:on("confirm_done", require("nvim-autopairs.completion.cmp").on_confirm_done { tex = false })
end
