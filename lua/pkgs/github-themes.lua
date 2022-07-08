local status_ok, github_theme = pcall(require, 'github-theme')
local notifications = require('utils.notifications')
if not status_ok then
  notifications.plugin_error('github-theme')
  return
end


github_theme.setup()

