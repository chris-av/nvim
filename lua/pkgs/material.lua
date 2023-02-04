local status_ok, material = pcall(require, 'material')
local notifications = require('utils.notifications')
if not status_ok then
  notifications.plugin_error('material')
  return
end


vim.g.material_style = 'deep ocean'

material.setup({
  disable = {
    colored_cursor = true,
  },
  custom_highlights = {
    NvimTreeFolderIcon = { fg = 'LightBlue' },
    NvimTreeGitNew = { fg = 'red' },
    NvimTreeGitDirty = { fg = 'LightGreen' },
    NvimTreeGitStaged = { fg = 'LightGreen' },
    GitSignsAdd = { fg = 'LightGreen', bg = 'none' },
    GitSignsChange = { fg = 'blue', bg = 'none' },
    GitSignsDelete = { fg = 'red', bg = 'none' },
  }
})


-- vim.cmd[[ highlight NvimTreeFolderIcon ctermfg=blue guifg=blue ]]
-- vim.cmd[[ highlight NvimTreeGitNew ctermfg=blue guifg=blue ]]
-- vim.cmd[[ highlight NvimTreeGitDirty ctermfg=red guifg=red ]]
-- vim.cmd[[ highlight NvimTreeGitStaged ctermfg=DarkGreen guifg=LightGreen ]]


