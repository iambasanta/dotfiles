local mark_status, mark = pcall(require, "harpoon.mark")
if not mark_status then
	return
end

local ui_status, ui = pcall(require, "harpoon.ui")
if not ui_status then
	return
end

vim.keymap.set("n", "<Leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function()
	ui.nav_file(1)
end)

vim.keymap.set("n", "<C-t>", function()
	ui.nav_file(2)
end)

vim.keymap.set("n", "<C-n>", function()
	ui.nav_file(3)
end)
