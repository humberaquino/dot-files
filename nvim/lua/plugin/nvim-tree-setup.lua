local status_ok, nvimtree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

vim.g.nvim_tree_respect_buf_cwd = 1
vim.g.nvim_tree_highlight_opened_files = 1

nvimtree.setup({
	auto_close = true,
	update_focused_file = {
		enable = true,
	},
	update_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	diagnostics = {
		enable = true,
	},
})
