local status_ok, ufo = pcall(require, 'ufo')
local notifications = require('utils.notifications')
if not status_ok then
  notifications.plugin_error('nvim-ufo')
  return
end


vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true


vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)



ufo.setup({
  provider_selector = function(bufnr, filetype, buftype)
    return { 'treesitter', 'indent' }
  end
})







