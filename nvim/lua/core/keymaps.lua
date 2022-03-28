-- Shorten function name
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--Remap space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Move to previous/next
map("n", "<S-h>", "<cmd>BufferPrevious<cr>", opts)
map("n", "<S-l>", "<cmd>BufferNext<cr>", opts)

-- Move line / block
map("n", "<S-j>", ":move +1<CR>", opts)
map("n", "<S-k>", ":move -2<CR>", opts)

-- Hop
map("n", "f", "<cmd>HopChar2<cr>", opts)

-- Window
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)
