local status_ok, nvimtree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

-- vim.g.nvim_tree_respect_buf_cwd = 1
-- vim.g.nvim_tree_highlight_opened_files = 1
-- vim.g.nvim_tree_git_hl = 1

nvimtree.setup({
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  diagnostics = {
    enable = true,
  },
  renderer = {
    highlight_git = true,
    highlight_opened_files = "icon"
  },
  respect_buf_cwd = true
})
