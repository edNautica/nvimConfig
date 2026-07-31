return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		open_mapping = [[<c-\>]], -- Ctrl+\ toggles the terminal
		direction = "float",
	},
	config = function(_, opts)
		require("toggleterm").setup(opts)
		-- quick escape back to normal mode from inside the terminal
		vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
	end,
}
