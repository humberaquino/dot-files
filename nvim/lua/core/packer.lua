local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Base plugins
	use("kyazdani42/nvim-web-devicons")
	use("EdenEast/nightfox.nvim")
	use("kyazdani42/nvim-tree.lua")
	use("rcarriga/nvim-notify")
	use("nvim-lualine/lualine.nvim")
	use("romgrk/barbar.nvim")
	use("windwp/nvim-autopairs")
	use("lukas-reineke/indent-blankline.nvim")
	use("numToStr/Comment.nvim") -- Easily comment stuff
	use("folke/which-key.nvim")
	use("phaazon/hop.nvim")
	use("ahmedkhalf/project.nvim")
	use("folke/trouble.nvim")
	use("beauwilliams/focus.nvim")

	use("goolord/alpha-nvim") -- fast and fully customizable greeter for neovim

	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })

	--> LSP plugins
	use("neovim/nvim-lspconfig") -- LSP base
	use("williamboman/nvim-lsp-installer") -- LSP installer
	use("hrsh7th/nvim-cmp") -- Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
	use("onsails/lspkind-nvim")
	use("jose-elias-alvarez/null-ls.nvim")

	-- snippets
	use("L3MON4D3/LuaSnip") --snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	-- Git
	use("lewis6991/gitsigns.nvim")
	use("f-person/git-blame.nvim")

	-- Org
	use("nvim-neorg/neorg")

	-- term
	use("akinsho/toggleterm.nvim")

	-- Git linker
	use({
		"ruifm/gitlinker.nvim",
		requires = "nvim-lua/plenary.nvim",
	})
end)