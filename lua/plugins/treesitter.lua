return {
	"nvim-treesitter/nvim-treesitter",
    branch = "master",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			-- added c/cpp/cmake for ESP-IDF work, kept your original list
			ensure_installed = {
				"javascript",
				"typescript",
				"c",
				"cpp",
				"cmake",
				"lua",
				"rust",
			},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		})
	end,
}
