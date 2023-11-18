-- add any tools you want to have installed belowrightreturn
return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "luacheck",
      "flake8",
      "nxls",
      "tailwindcss-language-server",
      "typescript-language-server",
      "css-lsp",
    },
  },
}
