vim.opt.completeopt = {
    "menu",
    "menuone",
    "noselect",
    "noinsert"
}
-- Setup nvim-cmp.
 local cmp = require'cmp'
 local lspkind = require('lspkind')
 
 cmp.setup({
     snippet = {
         -- REQUIRED - you must specify a snippet engine
         expand = function(args)
             require('luasnip').lsp_expand(args.body)
         end,
     },

     mapping = cmp.mapping.preset.insert({
         ['<C-b>'] = cmp.mapping.scroll_docs(-4),
         ['<C-f>'] = cmp.mapping.scroll_docs(4),
         ['<C-Space>'] = cmp.mapping.complete(),
         ['<C-e>'] = cmp.mapping.abort(),
         ['<CR>'] = cmp.mapping.confirm({ select = true }), 
     }),

     sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
     }),

     formatting = {
         format = lspkind.cmp_format({
             mode = 'symbol',
             maxwidth = 50, 
         })
     }
 })
