-- execute code in options.lua
--
-- nvim loads init.lua, init.lua loads options (searches in runtimepath)
-- and our configuration directory (.config) is in rtp

-- set up lazy.nvim
--
--
-- install lazyvim into the stdpath("data").."/lazy/" directory
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- take lazypath and check the existance of that path with
-- (vim.uv or vim.loop).fs_stat(lazypath), create the path if doesn't exist
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })

	-- checks if the last command had error, if had, executes this code
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)
-- same as vim.opt.rtp.prepend(vim.opt.rtp, lazypath)
-- syntactic sugar

-- load custom options
require("options")

-- load custom remaps
require("remaps")

-- load autocmds
require("autocmds")

-- load keymaps
require("keymaps")

-- run setup function from lazy to setup lazy
-- by providing a list
-- of urls to different plugins
-- that we'd like to install
--
-- we don't need the prefix 'https://github.com/' because
-- lazy assumes that the urls come from github
--
-- merge and return the plugins
require("lazy").setup({
	{ import = "plugins" },
})
