-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.spelllang = "en,de"
vim.opt.spellsuggest = "fast,9"
vim.g.root_spec = { "cwd", { ".git", "lua" }, "lsp" }
vim.o.relativenumber = false
