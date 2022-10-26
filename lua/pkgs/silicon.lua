local status_ok, silicon = pcall(require, 'silicon')
local notifications = require('utils.notifications')
if not status_ok then
  notifications.plugin_error('silicon')
  return
end


silicon.setup({
  -- The following key is required if you want to save image to file instead of clipboard
  -- output = string.format(
  --   "SILICON_%s-%s-%s.png",
  --   os.date("%Y"),
  --   os.date("%m"),
  --   os.date("%d")
  -- ),
  output = "testfile.png",
  -- The following keys are all optional
  -- with default values
  font = 'Hack=20',
  theme = 'Dracula',
  background = '#0AA6F3',
  shadow = {
    blur_radius = 0.0,
    offset_x = 0,
    offset_y = 0,
    color = '#555'
  },
  pad_horiz = 100,
  pad_vert = 80,
  line_number = false,
  line_pad = 2,
  line_offset = 1,
  tab_width = 4,
  round_corner = true,
  window_controls = true,
})


