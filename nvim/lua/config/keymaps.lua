-- Add any additional keymaps here
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local map = vim.keymap.set

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Move Lines
map("n", "º", "<cmd>m .+1<cr>==", { desc = "Move Down" })
map("n", "∆", "<cmd>m .-2<cr>==", { desc = "Move Up" })
map("i", "º", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "∆", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "º", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
map("v", "∆", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Markdown Preview
map("n", "<leader>mp", ":MarkdownPreview<cr>", { desc = "Open markdown preview" })

-- Git
map("n", "<leader>gB", ":Telescope git_branches<cr>", { desc = "Git list branches" })

map("n", "gl", "`.", { desc = "Go to last change" })

--- Tidal Cycles
map("", "<C-k>", "<C-e>", { desc = "Send inner paragraph to tidal", remap = true })
