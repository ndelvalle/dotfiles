-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
local opt = vim.opt

opt.scrolloff = 10 -- Lines of context
opt.colorcolumn = "80,90,100" -- Line at 80,90,100

-- vim.cmd([[highlight ColorColumn cterm=underline gui=underline]])
