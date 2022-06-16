local material = require('material')

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
  }
})


-- vim.cmd[[ highlight NvimTreeFolderIcon ctermfg=blue guifg=blue ]]
-- vim.cmd[[ highlight NvimTreeGitNew ctermfg=blue guifg=blue ]]
-- vim.cmd[[ highlight NvimTreeGitDirty ctermfg=red guifg=red ]]
-- vim.cmd[[ highlight NvimTreeGitStaged ctermfg=DarkGreen guifg=LightGreen ]]


