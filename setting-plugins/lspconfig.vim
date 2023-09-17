lua << END
local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  -- format on save
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("Format", { clear = true }),
      buffer = bufnr,
      callback = function() vim.lsp.buf.formatting_seq_sync() end
    })
  end
end

-- TypeScript
-- npm i -g typescript-language-server
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}

-- Angular language service
-- npm install -g @angular/language-server
local anuglar_project_library_path = "/path/to/project/lib"
local angular_cmd = {"ngserver", "--stdio", "--tsProbeLocations", angular_project_library_path , "--ngProbeLocations", angular_project_library_path}

nvim_lsp.angularls.setup{
  cmd = angular_cmd,
  on_new_config = function(new_config,new_root_dir)
    new_config.cmd = angular_cmd
  end,
}
END
