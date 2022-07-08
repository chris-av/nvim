local status_ok, telescope = pcall(require, 'telescope')
local notifications = require('utils.notifications') 
if not status_ok then
  notifications.plugin_error('telescope')
  return
end


telescope.setup()

