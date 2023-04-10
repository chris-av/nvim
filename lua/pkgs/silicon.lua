local status_ok, silicon = pcall(require, 'silicon')
local notifications = require('utils.notifications')
if not status_ok then
  notifications.plugin_error('silicon')
  return
end

local home = os.getenv("HOME")
local save_location = home .. "/Desktop/"

silicon.setup({
  font = 'FantasqueSansMono Nerd Font=26',
  background = '#87f',
  theme = 'Monokai Extended',
  line_number = true,
  pad_vert = 80,
  pad_horiz = 50,
  output = {
    path = "/Users/chrisvalenzuela/Desktop/"
  },
  watermark = {
    text = ' @chris-av',
  },
  window_title = function()
    return vim.fn.fnamemodify(vim.fn.bufname(vim.fn.bufnr()), ':~:.')
  end,
})


