":Mason - opens a graphical status window
":MasonUpdate - updates all managed registries
":MasonInstall <package> ... - installs/re-installs the provided packages
":MasonUninstall <package> ... - uninstalls the provided packages
":MasonUninstallAll - uninstalls all packages
":MasonLog - opens the mason.nvim log file in a new tab window

lua << EOF
-- 
-- local status, mason = pcall(require, 'mason')
-- 
-- if(not status) then return end
-- 
-- local status1, lspconfig = pcall(require, 'mason-lspconfig')
-- 
-- if(not status1) then return end
-- 
-- mason.setup({
-- })
-- 
-- lspconfig.setup {
    -- ensure_installed = { "lua_ls", "tailwindcss" },
-- }
-- 
EOF
