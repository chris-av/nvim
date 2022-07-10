local on_attach = require('lsp.on_attach')
local nvim_lsp = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

nvim_lsp['jsonls'].setup {
  on_attach = on_attach,
  cmd = { "vscode-json-language-server", "--stdio" },
  filetypes = { 'json', 'jsonc' },
  capabilities = capabilities,
  root_dir = nvim_lsp.util.find_git_ancestor
}

