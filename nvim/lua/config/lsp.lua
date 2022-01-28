local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'

-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- mappings.
  local opts = { noremap=true, silent=true }

  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)

  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)

  buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)

  buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

  buf_set_keymap('n', '<[g>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', '<]g>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  
  buf_set_keymap("n", "<leader>fs", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

  -- formatting
  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end

end

-- set up completion using nvim_cmp with LSP source
local capabilities = require('cmp_nvim_lsp').update_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- emmet
local configs = require'lspconfig/configs'
configs.ls_emmet = {
  default_config = {
    cmd = { 'ls_emmet', '--stdio' };
    filetypes = { 'html', 'css', 'scss' }; -- Add the languages you use, see language support
    root_dir = function(fname)
      return vim.loop.cwd()
    end;
    settings = {};
  };
}
nvim_lsp.ls_emmet.setup{ capabilities = capabilities }

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx","javascript" },
  capabilities = capabilities
}
nvim_lsp.html.setup {
    capabilities = capabilities
}

nvim_lsp.cssls.setup {
    capabilities = capabilities
}

nvim_lsp.clangd.setup {
    on_attach = on_attach,
    cmd = { "clangd", "--background-index" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    capabilities = capabilities
}

nvim_lsp.vuels.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
