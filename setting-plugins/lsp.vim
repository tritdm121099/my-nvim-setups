lua << EOF

local status1, lsp_zero = pcall(require, "lsp-zero")
if(not status1) then return end

local status2, cmp = pcall(require, 'cmp')
if(not status2) then return end
local cmp_action = lsp_zero.cmp_action()

local status3, lsp_config = pcall(require, 'lspconfig')
if(not status3) then return end

local status4, mason = pcall(require, 'mason')
if(not status4) then return end

local status5, mason_config = pcall(require, 'mason-lspconfig')
if(not status5) then return end

lsp_zero.preset("recommended")

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
		['<C-y>'] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.complete()
	}),
})

lsp_zero.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({buffer = bufnr})
  
	local opts = {buffer = bufnr, remap = false}
  
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

mason.setup({
	ui = {
		icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

mason_config.setup({
  ensure_installed = {'tsserver', 'rust_analyzer'},
  handlers = {
    lsp_zero.default_setup,
    tsserver = function()
      require('lspconfig').tsserver.setup({
        settings = {
          completions = {
            completeFunctionCalls = true
          }
        }
      })
    end,
  },
})

vim.diagnostic.config{
    virtual_text = true
}

EOF
