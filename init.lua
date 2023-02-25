-- highlight groups, options, etc
require('configs')



local group_skeleton = vim.api.nvim_create_augroup('skeleton', { clear = true })

vim.api.nvim_create_autocmd('BufNewFile', {
  pattern = { 'index.html' },
  command = "silent! execute '0r ~/.config/nvim/templates/index.'.expand('<afile>:e')",
  group = group_skeleton
})

vim.api.nvim_create_autocmd('BufNewFile', {
  pattern = { '*.sh' },
  command = "silent! execute '0r ~/.config/nvim/templates/script.'.expand('<afile>:e') | 3",
  group = group_skeleton
})

vim.api.nvim_create_autocmd('BufNewFile', {
  pattern = { 'jsconfig.json' },
  command = "silent! execute '0r ~/.config/nvim/templates/jsconfig.'.expand('<afile>:e')",
  group = group_skeleton
})

require('diagnostics')
require('packages')
require('lsp')
require('debuggers')
require('pkgs')


local iterm_prof = os.getenv('ITERM_PROFILE')

if (iterm_prof == nil) then
  return
end


if (iterm_prof == 'Material Deep Ocean') then
  vim.cmd([[ colorscheme material ]])
elseif (string.match(iterm_prof, 'Catppuccin')) then
  vim.cmd([[ colorscheme catppuccin ]])
elseif (iterm_prof == 'Embark') then
  vim.cmd([[ colorscheme embark ]])
elseif (iterm_prof == 'Dark') then
  vim.cmd([[ colorscheme dark ]])
elseif (iterm_prof == 'Coal') then
  vim.cmd([[ colorscheme coal ]])
elseif (iterm_prof == 'Matrix Theme') then
  vim.cmd([[ colorscheme matrix ]])
end



