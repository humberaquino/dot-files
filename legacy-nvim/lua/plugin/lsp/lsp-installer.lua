-- local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
-- if not status_ok then
--   return
-- end
--
-- -- Include the servers you want to have installed by default below
-- local servers = {
--   "bashls",
--   "pyright",
--   "elixirls",
--   "yamlls",
--   "lua_ls",
--   "jsonls",
--   "emmet_ls"
-- }
--
-- for _, name in pairs(servers) do
--   local server_is_found, server = lsp_installer.get_server(name)
--   if server_is_found and not server:is_installed() then
--     print("Installing " .. name)
--     server:install()
--   end
-- end
--
-- -- Register a handler that will be called for all installed servers.
-- -- Alternatively, you may also register handlers on specific server instances instead (see example below).
-- lsp_installer.on_server_ready(function(server)
--   local opts = {
--     on_attach = require("plugin.lsp.handlers").on_attach,
--     capabilities = require("plugin.lsp.handlers").capabilities,
--   }
--
--   -- if server.name == "jsonls" then
--   -- 	local jsonls_opts = require("plugin.lsp.settings.jsonls")
--   -- 	opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
--
--   -- if server.name == "elixirls" then
--   -- 	local elixir_opts= require("plugin.lsp.settings.elixirls")
--   -- 	opts = vim.tbl_deep_extend("force", elixir_opts, opts)
--   -- end
--
--   -- if server.name == "sumneko_lua" then
--   -- 	local sumneko_opts = require("plugin.lsp.settings.sumneko_lua")
--   -- 	opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
--   -- end
--
--   -- This setup() function is exactly the same as lspconfig's setup function.
--   -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
--   server:setup(opts)
-- end)
require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
