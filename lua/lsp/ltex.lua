local on_attach = require('lsp.on_attach')
local nvim_lsp = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)


nvim_lsp['ltex'].setup({
  cmd = { 'ltex-ls' },
  filetypes = { 'bib', 'org', 'plaintex', 'rst', 'rnoweb', 'tex' },
})


