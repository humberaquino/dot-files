require("telescope").setup({
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			".git",
			"_build",
			"deps",
		},
	},
})
