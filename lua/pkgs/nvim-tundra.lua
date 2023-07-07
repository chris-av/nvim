require('nvim-tundra').setup({
  transparent_background = false,
  dim_inactive_windows = {
    enabled = false,
    color = nil,
  },
  sidebars = {
    enabled = true,
    color = nil,
  },
  editor = {
    search = {},
    substitute = {},
  },
  syntax = {
    booleans = { bold = true, italic = true },
    comments = { bold = true, italic = true },
    conditionals = {},
    constants = { bold = true },
    fields = {},
    functions = {},
    keywords = {},
    loops = {},
    numbers = { bold = true },
    operators = { bold = true },
    punctuation = {},
    strings = {},
    types = { italic = true },
  },
  diagnostics = {
    errors = {},
    warnings = {},
    information = {},
    hints = {},
  },
  plugins = {
    lsp = true,
    semantic_tokens = true,
    treesitter = true,
    telescope = true,
    nvimtree = true,
    cmp = true,
    context = true,
    dbui = true,
    gitsigns = true,
    neogit = true,
    textfsm = true,
  },
  overwrite = {
    colors = {},
    highlights = {},
  },
})


-- -- I usually don't have to call these for other colorschemes;
-- -- Ideally, would like to :colorscheme tundra manually without breaking
-- -- for some reason, package still breaks my config, even if I uncomment the below
-- vim.opt.background = 'dark'
-- vim.cmd('colorscheme tundra')
