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

-- Install your plugins here
return packer.startup(function(use)
  -- Have packer manage itself. latest commit as of 14/12/2022
  use { "wbthomason/packer.nvim", commit = "6afb67460283f0e990d35d229fd38fdc04063e0a" }
  use { "kyazdani42/nvim-tree.lua", commit = "7282f7de8aedf861fe0162a559fc2b214383c51c" }


  -- Color schemes
  use { "lunarvim/darkplus.nvim", commit = "13ef9daad28d3cf6c5e793acfc16ddbf456e1c83" }
  use { "folke/tokyonight.nvim", commit = "66bfc2e8f754869c7b651f3f47a2ee56ae557764" }

  -- Telescope
	use { "nvim-telescope/telescope.nvim", commit = "76ea9a898d3307244dce3573392dcf2cc38f340f" }

	-- Treesitter
	use {
		"nvim-treesitter/nvim-treesitter",
		commit = "8e763332b7bf7b3a426fd8707b7f5aa85823a5ac",
	}

	-- Git
	use { "lewis6991/gitsigns.nvim", commit = "2c6f96dda47e55fa07052ce2e2141e8367cbaaf2" }

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
