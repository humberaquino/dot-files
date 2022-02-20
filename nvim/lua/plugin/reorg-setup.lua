local status_ok, reorg = pcall(require, "reorg")
if not status_ok then
	return
end

neorg.setup({
	-- Tell Neorg what modules to load
	load = {
		["core.defaults"] = {}, -- Load all the default modules
		["core.norg.concealer"] = {}, -- Allows for use of icons
		["core.norg.dirman"] = { -- Manage your directories with Neorg
			config = {
				workspaces = {
					my_workspace = "~/neorg",
				},
			},
		},
	},
})
