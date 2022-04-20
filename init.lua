-- highlight groups, options, etc
require('configs')


-- use template html file
-- vim.cmd([[
-- augroup skeletons
--   au!
--   autocmd BufNewFile *.* silent! execute '0r ~/.config/nvim/templates/index.'.expand("<afile>:e")
-- augroup END
-- ]])

-- vim.api.nvim_create_augroup('skeletons')
-- vim.api.nvim_create_autocmd('BufNewFile', {
--   pattern = { 'index.html' },
--   command = "silent! execute '0r ~/.config/nvim/templates/index.'.expand('<afile>:e')"
-- })


require('diagnostics')
require('packages')
require('lsp')
require('debuggers')
require('pkgs')




