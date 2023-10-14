-- local status_ok, _ = pcall(require, "lspconfig")
-- if not status_ok then
--   return
-- end
-- --
-- -- require "plugin.lsp.lsp-installer"
-- -- require "plugin.lsp.handlers".setup()
-- -- require "plugin.lsp.null-ls"
-- --
--
--  require("mason").setup {
--      ui = {
--          icons = {
--              package_installed = "✓"
--          }
--      }
--  }
--
--  require("mason-lspconfig").setup {
--      ensure_installed = { "lua_ls", "elixirls" },
--  }
--
--
require('lsp-setup').setup({
    servers = {
        elixirls = {},
        lua_ls = {}
    }
})
