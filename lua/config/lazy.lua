-- Bootstrap lazy.nvim (self-installs on first run, no manual clone needed)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
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

require("lazy").setup({
	-- Every file in lua/plugins/ that returns a plugin spec gets picked up automatically.
	-- To add a plugin: drop a new file in lua/plugins/, no need to edit this file.
	spec = {
		{ import = "plugins" },
	},
	install = { colorscheme = { "rose-pine" } },
	checker = { enabled = true, notify = false }, -- silently checks for plugin updates
})
