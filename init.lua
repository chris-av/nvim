-- highlight groups, options, etc
require('configs')



-- vim.api.nvim_create_augroup('skeletons')
vim.api.nvim_create_autocmd('BufNewFile', {
  pattern = { 'index.html' },
  command = "silent! execute '0r ~/.config/nvim/templates/index.'.expand('<afile>:e')"
})

vim.api.nvim_create_autocmd('BufNewFile', {
  pattern = { '*.sh' },
  command = "silent! execute '0r ~/.config/nvim/templates/script.'.expand('<afile>:e') | 3"
})

vim.api.nvim_create_autocmd('BufNewFile', {
  pattern = { 'jsconfig.json' },
  command = "silent! execute '0r ~/.config/nvim/templates/jsconfig.'.expand('<afile>:e')"
})

require('diagnostics')
require('packages')
require('lsp')
require('debuggers')
require('pkgs')




