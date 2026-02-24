if vim.g.neovide == true then
	vim.g.gui_font_face = "JetBrainsMono Nerd Font Mono"

	local change_scale_factor = function(delta)
		vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
	end
	vim.keymap.set("n", "<C-=>", function()
		change_scale_factor(1.25)
	end)
	vim.keymap.set("n", "<C-->", function()
		change_scale_factor(1 / 1.25)
	end)

	vim.g.neovide_cursor_animation_length = 0.05

	vim.g.neovide_fullscreen = true
	vim.api.nvim_set_keymap("n", "<F11>", ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
	vim.g.neovide_padding_top = 0
	vim.g.neovide_padding_bottom = 0
	vim.g.neovide_padding_right = 0
	vim.g.neovide_padding_left = 0

	-- Animations
	vim.g.neovide_position_animation_length = 0.05 -- default 0.15
	vim.g.neovide_scroll_animation_length = 0.075 --default 0.3
	vim.g.neovide_scroll_animation_far_lines = 1 --default 1
	vim.g.neovide_cursor_animation_length = 0.03 --default 0.150
	vim.g.neovide_cursor_short_animation_length = 0.01 --default 0.04
	vim.g.neovide_cursor_trail_size = 0.3 --default 1.0
	vim.g.neovide_cursor_animate_in_insert_mode = true --default true
	vim.g.neovide_cursor_smooth_blink = false -- default false
	vim.g.neovide_cursor_unfocused_outline_width = 0 --default 0.125
	vim.g.neovide_cursor_animate_command_line = true --default true
end
