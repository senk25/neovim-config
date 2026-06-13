return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",
	opts = {
		ensure_installed = { "lua", "markdown", "markdown_inline", "vimdoc", "python", "javascript", "rust", "matlab", "yaml", "bash"},
	},
	config = function(_, opts)
		local configs = require("nvim-treesitter")
		configs.setup(opts)

		vim.api.nvim_create_autocmd("FileType", {
			pattern = opts.ensure_installed, 
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
