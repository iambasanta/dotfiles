local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

telescope.setup({
	defaults = {
		{ file_ignore_patterns = { "node_modules" } },
		mappings = {
			i = {
				["<C-p>"] = actions.move_selection_previous,
				["<C-n>"] = actions.move_selection_next,
				["<C-q>"] = actions.close,
			},
		},
	},
})

-- keymaps for fuzzy finding
vim.keymap.set("n", "<C-s>", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<C-p>", "<cmd>Telescope git_files<CR>")
vim.keymap.set("n", "<Leader>fg", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<Leader>fs", "<cmd>Telescope grep_string<CR>")
