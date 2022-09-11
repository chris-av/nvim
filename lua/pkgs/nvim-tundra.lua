local status_ok, tundra = pcall(require, 'tundra')
local notifications = require('utils.notifications') 
if not status_ok then
  notifications.plugin_error('tundra')
  return
end


vim.opt.background('dark')

tundra.setup({
  transparent_background = true,
})

