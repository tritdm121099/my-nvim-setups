require("config.lazy")

local os = vim.loop.os_uname().sysname

if os == "Darwin" then
  vim.opt.clipboard:append { 'unnamedplus' }
elseif os == "Linux" then
  vim.opt.clipboard:append { 'unnamedplus' }
elseif os == "Windows_NT" then
  vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }
else
  error("Unknown OS")
end
