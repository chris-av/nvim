local on_attach = require('lsp.on_attach')
local nvim_lsp = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)


nvim_lsp['zls'].setup {
  on_attach = on_attach,
  -- cmd = { 'zls' },
  -- filetypes = { 'zig', 'zir' },
  -- capabilities = capabilities,
  -- root = nvim_lsp.util.root_pattern('zls.json', '.git')
}

