local lsp_status, lsp = pcall(require, "lsp-zero")
if not lsp_status then
	return
end

lsp.preset("recommended")

lsp.ensure_installed({
	"html",
	"cssls",
	"eslint",
	"tsserver",
})

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<C-p>"] = cmp.mapping.select_prev_item(cmp_select), -- previous suggestion
	["<C-n>"] = cmp.mapping.select_next_item(cmp_select), -- next suggestion
	["<C-y>"] = cmp.mapping.confirm({ select = true }),
	["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
	["<C-e>"] = cmp.mapping.abort(), -- close completion window
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings,
})

lsp.set_preferences({
	suggest_lsp_servers = true,
	sign_icons = {
		error = "",
		warn = "",
		hint = "ﯧ",
		info = "",
	},
})

vim.diagnostic.config({
	virtual_text = true,
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	if client.name == "eslint" then
		vim.cmd.LspStop("eslint")
		return
	end

	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
	vim.keymap.set("n", "go", vim.lsp.buf.type_definition, opts)
	vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
	vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
	vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, opts)
	vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, opts)
end)

lsp.setup_nvim_cmp({
	sources = {
		{ name = "path" },
		{ name = "nvim_lsp", keyword_length = 3 },
		{ name = "buffer", keyword_length = 3 },
	},
})

lsp.setup()
