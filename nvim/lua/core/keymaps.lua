-- Shorten function name
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--Remap space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Move to previous/next
map("n", "<S-h>", "<cmd>BufferPrevious<cr>", opts)
map("n", "<S-l>", "<cmd>BufferNext<cr>", opts)

-- Hop
map("n", "f", "<cmd>HopChar2<cr>", opts)

-- Window
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Move
map("n", "<A-j>", ":MoveLine(1)<CR>", { noremap = true, silent = true })
map("n", "<A-k>", ":MoveLine(-1)<CR>", { noremap = true, silent = true })
map("v", "<A-j>", ":MoveBlock(1)<CR>", { noremap = true, silent = true })
map("v", "<A-k>", ":MoveBlock(-1)<CR>", { noremap = true, silent = true })
map("n", "<A-l>", ":MoveHChar(1)<CR>", { noremap = true, silent = true })
map("n", "<A-h>", ":MoveHChar(-1)<CR>", { noremap = true, silent = true })
map("v", "<A-l>", ":MoveHBlock(1)<CR>", { noremap = true, silent = true })
map("v", "<A-h>", ":MoveHBlock(-1)<CR>", { noremap = true, silent = true })
