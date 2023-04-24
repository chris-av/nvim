local status_ok, silicon = pcall(require, 'silicon')
local notifications = require('utils.notifications')
if not status_ok then
  notifications.plugin_error('silicon')
  return
end

local home = os.getenv("HOME")
local save_location = home .. "/Desktop/"

silicon.setup({
  font = 'Hack Nerd Font=26',
  background = '#87f',
  theme = 'Dracula',
  line_number = true,
  pad_vert = 80,
  pad_horiz = 50,
  output = {
    clipboard = false,
    format = "silicon-[year][month][day].png",
    path = "/Users/chrisvalenzuela/Documents/Screen Recordings/",
  },
  watermark = {
    text = ' @chris-av',
  },
  window_title = function()
    return vim.fn.fnamemodify(vim.fn.bufname(vim.fn.bufnr()), ':~:.')
  end,
})


vim.api.nvim_set_keymap('n', '<leader>ss', ':Silicon!<CR>', { noremap = true, silent = true })

