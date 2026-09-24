-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Imposta PowerShell come terminale predefinito
vim.opt.shell = "powershell" -- Scrivi "pwsh" al posto di "powershell" se usi PowerShell 7
vim.opt.shellcmdflag =
  "-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""
vim.opt.clipboard = "unnamedplus"
