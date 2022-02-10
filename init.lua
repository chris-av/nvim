-- highlight groups, options, etc
require('configs')


-- use template html file
vim.cmd([[
augroup skeletons
  au!
  autocmd BufNewFile *.* silent! execute '0r ~/.config/nvim/templates/index.'.expand("<afile>:e")
augroup END
]])



require('completions')
require('diagnostics')
require('packages')
require('lsp')
require('debuggers')
require('pkgs')




