vim.cmd([[ hi clear ]])
vim.cmd([[ syntax reset ]])
vim.opt.termguicolors = true



-- basic syntax
vim.api.nvim_set_hl(0, 'Normal', { fg = 'white' })
vim.api.nvim_set_hl(0, 'Comment', { fg = 'grey', bold = true })
vim.api.nvim_set_hl(0, 'Constant', { fg = '#FF5EFF' })
vim.api.nvim_set_hl(0, 'Statement', { fg = 'white' })
vim.api.nvim_set_hl(0, 'Conditional', { fg = 'white' })
vim.api.nvim_set_hl(0, 'Identifier', { fg = '#40ffff' })
vim.api.nvim_set_hl(0, 'Include', { fg = 'lightgreen' })
vim.api.nvim_set_hl(0, 'Function', { fg = 'white' })
vim.api.nvim_set_hl(0, 'Keyword', { fg = 'lightgreen' })
vim.api.nvim_set_hl(0, 'Error', { bg = 'red' })
vim.api.nvim_set_hl(0, 'Directory', { fg = 'cyan' })
vim.api.nvim_set_hl(0, 'NonText', { fg = 'none' })
vim.api.nvim_set_hl(0, 'IncSearch', { bold = true, bg = 'yellow', fg = 'black' })
vim.api.nvim_set_hl(0, 'Search', { bold = true, fg = 'black', bg = 'yellow' })
vim.api.nvim_set_hl(0, 'Visual', { bg = 'darkgrey' })
vim.api.nvim_set_hl(0, 'VisualNOS', { bold = true })
vim.api.nvim_set_hl(0, 'Operator', { fg = 'white' })
vim.api.nvim_set_hl(0, 'Statement', { fg = 'lightgreen' })


-- primitives
vim.api.nvim_set_hl(0, 'Boolean', { fg = 'yellow' })
vim.api.nvim_set_hl(0, 'Number', { fg = 'yellow' })
vim.api.nvim_set_hl(0, 'String', { fg = '#FF5EFF' })




-- splits, borders and cursor
vim.api.nvim_set_hl(0, 'VertSplit', { fg = 'None', bg = 'None' } )
vim.api.nvim_set_hl(0, 'FloatBoarder', { fg = 'None' })
vim.api.nvim_set_hl(0, 'WinSeparator', { bg = 'None' })



-- tabline
vim.api.nvim_set_hl(0, 'TabLine', { bg = 'darkgrey' })
vim.api.nvim_set_hl(0, 'TabLineSel', { bold = true })
vim.api.nvim_set_hl(0, 'TabLineFill', { reverse = true })
vim.api.nvim_set_hl(0, 'ToolbarLine', { bg = 'grey50' })
vim.api.nvim_set_hl(0, 'ToolbarButton', { bg = 'lightgrey' })



-- visual, selections, line numbers
vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'None' })
vim.api.nvim_set_hl(0, 'PmenuSel', { bg = 'darkgrey' })
vim.api.nvim_set_hl(0, 'PmenuSbar', { bg = 'grey' })
vim.api.nvim_set_hl(0, 'PmenuThumb', { bg = 'black' })
vim.api.nvim_set_hl(0, 'NormalFloat', { fg = 'None', bg = 'None' })
vim.api.nvim_set_hl(0, 'NormalFloat', { fg = 'None', bg = 'None' })
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#00EA8C' })
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = 'None', bg = 'None' })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = 'None', bg = 'None' })
vim.api.nvim_set_hl(0, 'CursorLine', { fg = 'None', bg = 'None' })
vim.api.nvim_set_hl(0, 'CursorColumn', { bg = 'grey40' })
vim.api.nvim_set_hl(0, 'CursorLineNr', { bold = true, fg = 'lightgreen' })




-- status line
vim.api.nvim_set_hl(0, 'StatusLineTerm', { bg = 'lightgreen' })
vim.api.nvim_set_hl(0, 'StatusLineTermNC', { bg = 'lightgreen' })
vim.api.nvim_set_hl(0, 'StatusLine', { bold = true })
vim.api.nvim_set_hl(0, 'StatusLineNC', { reverse = true })


-- spelling?
-- what is gui=undercurl?
vim.api.nvim_set_hl(0, 'SpellBad', { sp = 'red' })
vim.api.nvim_set_hl(0, 'SpellCap', { sp = 'blue' })
vim.api.nvim_set_hl(0, 'SpellRare', { sp = 'magenta' })
vim.api.nvim_set_hl(0, 'SpellLocal', { sp = 'cyan' })




-- special
vim.api.nvim_set_hl(0, 'SpecialKey', { fg = 'cyan' })
vim.api.nvim_set_hl(0, 'ErrorMsg', { fg = 'red' })
vim.api.nvim_set_hl(0, 'MoreMsg', { fg = 'seagreen' })
vim.api.nvim_set_hl(0, 'ModeMsg', { bold = true })
vim.api.nvim_set_hl(0, 'Question', { fg = 'green' })
vim.api.nvim_set_hl(0, 'Title', { fg = 'magenta' })
vim.api.nvim_set_hl(0, 'WarningMsg', { fg = 'red' })
vim.api.nvim_set_hl(0, 'WildMenu', { fg = 'yellow' })
vim.api.nvim_set_hl(0, 'Folded', { bg = 'darkgrey' })
vim.api.nvim_set_hl(0, 'FoldColumn', { bg = 'grey' })
vim.api.nvim_set_hl(0, 'DiffAdd', { bg = 'darkblue' })
vim.api.nvim_set_hl(0, 'DiffChange', { bg = 'darkmagenta' })
vim.api.nvim_set_hl(0, 'DiffDelete', { bg = 'darkcyan' })
vim.api.nvim_set_hl(0, 'DiffText', { bg = 'red' })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'grey' })
vim.api.nvim_set_hl(0, 'Conceal', { bg = 'darkgrey' })
vim.api.nvim_set_hl(0, 'ColorColumn', { fg = '' })
vim.api.nvim_set_hl(0, 'MatchParen', { fg = '' })
vim.api.nvim_set_hl(0, 'Special', { fg = 'white' })
vim.api.nvim_set_hl(0, 'PreProc', { fg = '#ff80ff' })
vim.api.nvim_set_hl(0, 'Type', { fg = '#60ff60' })
vim.api.nvim_set_hl(0, 'Underlined', { fg = '#80a0ff' })
vim.api.nvim_set_hl(0, 'Ignore', { fg = '' })
vim.api.nvim_set_hl(0, 'Todo', { bg = 'yellow' })


-- use TS highlights
vim.api.nvim_set_hl(0, 'TSKeyWordFunction', { bold = true, fg = '#00ffff' })
vim.api.nvim_set_hl(0, 'TSMethod', { bold = true, fg = 'skyblue1' })
vim.api.nvim_set_hl(0, 'TSConstructor', { bold = true, fg = 'skyblue1' })
-- vim.api.nvim_set_hl(0, 'TSException', { fg = '' }) guifg=lightgreen
vim.api.nvim_set_hl(0, 'TSConditional', { bold = false, fg = 'lightgreen' })
vim.api.nvim_set_hl(0, 'TSRepeat', { bold = false, fg = 'lightgreen' })





-- Nvim Tree highlights
vim.api.nvim_set_hl(0, 'NvimTreeFolderIcon', { fg = 'cyan' })
vim.api.nvim_set_hl(0, 'NvimTreeExecFile', { bold = true, fg = 'lightgreen' })


-- git signs
vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'None' })
vim.api.nvim_set_hl(0, 'DiffAdd', { bg = 'None', fg = 'lightgreen' })
vim.api.nvim_set_hl(0, 'DiffChange', { bg = 'None', fg = 'lightblue' })
vim.api.nvim_set_hl(0, 'DiffDelete', { bg = 'None', fg = 'red' })



-- bufferline
vim.api.nvim_set_hl(0, 'BufferLineBackground', { bg = 'None', fg = 'grey' })
vim.api.nvim_set_hl(0, 'BufferLineCloseButton', { bg = 'None', fg = 'grey' })
vim.api.nvim_set_hl(0, 'BufferLineCloseButtonSelected', { bg = 'None', fg = 'white' })
vim.api.nvim_set_hl(0, 'BufferLineModified', { bg = 'None', fg = 'grey' })
vim.api.nvim_set_hl(0, 'BufferLineModifiedSelected', { bg = 'None', fg = 'white' })
vim.api.nvim_set_hl(0, 'BufferLineModifiedVisible', { bg = 'None', fg = 'grey' })





