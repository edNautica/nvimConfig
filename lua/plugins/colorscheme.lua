return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000, -- load before other plugins so it's ready as the startup colorscheme
	config = function()
		require("rose-pine").setup({
			styles = { transparency = true },
		})
		vim.cmd.colorscheme("rose-pine")
	end,
}
