local lsp_installer = require("nvim-lsp-installer")

-- Autoinstall these servers
local servers = {
	"bashls",
	"pyright",
	"tsserver",
	"emmet_ls",
	"sumneko_lua",
	"elixirls",
}

for _, name in pairs(servers) do
	local server_is_found, server = lsp_installer.get_server(name)
	if server_is_found then
		if not server:is_installed() then
			print("Installing " .. name)
			server:install()
		end
	end
end

-- Custom enhancement

local enhance_server_opts = {
	-- Provide settings that should only apply to the "eslintls" server
	["sumneko_lua"] = function(opts)
		opts.settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" },
				},
			},
		}
	end,
}

-- Setup
lsp_installer.on_server_ready(function(server)
	-- Specify the default options which we'll use to setup all servers
	local opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}

	if enhance_server_opts[server.name] then
		-- Enhance the default opts with the server-specific ones
		enhance_server_opts[server.name](opts)
	end

	server:setup(opts)
end)
