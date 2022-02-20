-- Shorten function name
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--Remap space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Nvim tree
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

---- Barbar
-- Move to previous/next
map("n", "<S-h>", ":BufferPrevious<CR>", opts)
map("n", "<S-l>", ":BufferNext<CR>", opts)
-- Goto buffer in position...
--map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
--map('n', '<A-0>', ':BufferLast<CR>', opts)
-- Close buffer
map("n", "<leader>tc", ":BufferClose<CR>", opts)
map("n", "<leader>ac", ":BufferCloseAllButCurrent<CR>", opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
map("n", "<leader>bb", ":BufferPick<CR>", opts)
-- Sort automatically by...
map("n", "<leader>bd", ":BufferOrderByDirectory<CR>", opts)

map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)

-- Reload
map("n", "<leader>rf", ":luafile %<CR>", opts)
map("n", "<leader>pi", ":PackerInstall<CR>", opts)

-- Hop
-- map("n", "<S-f>", ":HopWord<CR>", opts)
map("n", "f", ":HopWord<CR>", opts)

-- Trouble
map("n", "<S-T>", ":TroubleToggle document_diagnostics<CR>", opts)
map("n", "<leader>xx", ":Trouble<CR>", opts)
map("n", "<leader>xw", ":Trouble workspace_diagnostics<CR>", opts)
map("n", "<leader>xd", ":Trouble document_diagnostics<CR>", opts)
map("n", "<leader>xl", ":Trouble loclist<CR>", opts)
map("n", "<leader>xq", ":Trouble quickfix<CR>", opts)
map("n", "gR", ":Trouble lsp_references<CR>", opts)

-- Windows and Focus
map("n", "<leader>wh", ":FocusSplitLeft<CR>", opts)
map("n", "<leader>wj", ":FocusSplitDown<CR>", opts)
map("n", "<leader>wk", ":FocusSplitUp<CR>", opts)
map("n", "<leader>wl", ":FocusSplitRight<CR>", opts)

map("n", "<S-q>", ":q<CR>", opts)
map("n", "<leader>wc", ":q<CR>", opts)
