
M = {}


M.lib = {

  matrix = {
    Pmenu = { fg = 'black', bg = 'LightGreen' },
    PmenuSel = { fg = 'white', bg = 'LightGreen' },
    NormalFloat = { fg = 'LightGreen', bg = 'none' },
    FloatBorder = { fg = 'LightGreen', bg = 'none' },
    NonText = { fg = 'cyan', bg = 'none' },
    CursorLine = { fg = 'none', bg = 'none' },
    LineNr = { fg = 'LightGreen', bg = 'none' },
    CursorLineNr = { bold = true, fg = 'LightGreen' },
    VertSplit = { fg = 'LightGreen', bg = 'none' },



    Identifier = { fg = 'LightGreen' },
    String = { fg = 'Yellow4', bold = false, },
    Constant = { fg = 'LightGreen', bold = false },
    Comment = { fg = 'Yellow4', bold = false, italic = true  },
    Number = { fg = 'LightGreen', bold = false },
    Function = { fg = 'LightGreen', },

    PreProc = { fg = 'LightGreen', },

    -- Nvim Tree
    NvimTreeFolderIcon = { fg = 'cyan', bg = 'none' },

  },

}

M.highlighter = function(colorscheme)
  local function set_hl(hl_group, highlights)
    vim.api.nvim_set_hl(0, hl_group, highlights)
  end

  local theme = M.lib[colorscheme]

  for group, val in pairs(M.lib[colorscheme]) do
    set_hl(group, val)
  end 
end

return M
