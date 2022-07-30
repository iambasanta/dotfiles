local lsp = require("lspconfig")

local Remap = require("keymaps")
local nnoremap = Remap.nnoremap

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, bufnr)
        nnoremap("K",vim.lsp.buf.hover)
        nnoremap("gd",vim.lsp.buf.definition)
        nnoremap("gt",vim.lsp.buf.type_definition)
        nnoremap("gi",vim.lsp.buf.implementation)
        nnoremap("<leader>dn",vim.diagnostic.goto_next)
        nnoremap("<leader>dp",vim.diagnostic.goto_prev)
        nnoremap("<leader>dl","<cmd>Telescope diagnostics<CR>")
        nnoremap("<leader>r",vim.lsp.buf.rename)
        nnoremap("<leader>ca",vim.lsp.buf.rename)
end

local language_servers = {
    "html",
    "cssls",
    "tsserver",
    "intelephense"
}

for _, server in ipairs(language_servers)do
    lsp[server].setup{
        on_attach = on_attach,
        capabilities = capabilities
    }
end
