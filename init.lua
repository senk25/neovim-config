require("core.options")
require("core.keymaps")
-- Load lazy plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
--@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)
require("lazy").setup({
	{ require("plugins.lsp") },
	{ require("plugins.neo-tree") },
	{ require("plugins.kanagawa") },
	{ require("plugins.bufferline") },
	{ require("plugins.lualine") },
	{ require("plugins.mini") },
	{ require("plugins.treesitter") },
	{ require("plugins.telescope") },
	{ require("plugins.autocomplete") },
	{ require("plugins.autoformat") },
	{ require("plugins.gitsigns") },
	{ require("plugins.which-key") },
	{ require("plugins.autopairs") },
	{ require("plugins.comments") },
	{ require("plugins.indent-blankline") },
})

require("core.neovide")
