local vim = vim

-- vim.g.nvim_tree_quit_on_open = 1            -- 0 by default, closes the tree when you open a file
-- vim.g.nvim_tree_indent_markers = 1          -- 0 by default, this option shows indent markers when folders are open
-- vim.g.nvim_tree_git_hl = 1                  -- 0 by default, will enable file highlight for git attributes (can be used without the icons).
-- vim.g.nvim_tree_highlight_opened_files = 1  -- 0 by default, will enable folder and file icon highlight for opened files/directories.
-- vim.g.nvim_tree_root_folder_modifier = ':~' -- This is the default. See :help filename-modifiers for more options
-- vim.g.nvim_tree_add_trailing = 1            -- 0 by default, append a trailing slash to folder names
-- vim.g.nvim_tree_group_empty = 1             -- 0 by default, compact folders that only contain a single folder into one node in the file tree
-- vim.g.nvim_tree_disable_window_picker = 1   -- 0 by default, will disable the window picker.
-- vim.g.nvim_tree_icon_padding = ' '          -- one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
-- vim.g.nvim_tree_symlink_arrow = ' >> '      --  defaults to ' ➛ '. used as a separator between symlinks' source and target.
-- vim.g.nvim_tree_respect_buf_cwd = 1         -- 0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
-- vim.g.nvim_tree_create_in_closed_folder = 0 -- 1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
-- vim.g.nvim_tree_refresh_wait = 500          -- 1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
--
-- vim.g.nvim_tree_window_picker_exclude = {
--   filetype = {
--     'notify',
--     'packer',
--     'qf'
--   },
--   buftype = {
--     'terminal'
--   }
-- }
-- -- Dictionary of buffer option names mapped to a list of option values that
-- -- indicates to the window picker that the buffer's window should not be
-- -- selectable.
--
-- vim.g.nvim_tree_special_files = { README.md = 1, Makefile = 1, MAKEFILE = 1 } -- List of filenames that gets highlighted with NvimTreeSpecialFile
vim.g.nvim_tree_special_files = {}
vim.g.nvim_tree_special_files['README.md'] = 1
vim.g.nvim_tree_special_files['Makefile'] = 1
vim.g.nvim_tree_special_files['MAKEFILE'] = 1

-- vim.g.nvim_tree_show_icons = {
--     git = 1,
--     folders = 0,
--     files = 0,
--     folder_arrows = 0,
--     }
-- "If 0, do not show the icons for one of 'git' 'folder' and 'files'
-- "1 by default, notice that if 'files' is 1, it will only display
-- "if nvim-web-devicons is installed and on your runtimepath.
-- "if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
-- "but this will not work when you set indent_markers (because of UI conflict)
--
-- default will show icon by default if no icon is provided
-- default shows no icon by default
vim.g.nvim_tree_icons = {
  default = '',
  symlink = '',
  git = {
    -- untracked = "",
    -- unstaged = "✗",
    -- staged = "✓",

    untracked = "✗",
    unstaged = "",
    staged = "",

    unmerged = "",
    renamed = "➜",
    deleted = "",
    ignored = "◌"
  },
  folder = {
    arrow_open = "",
    arrow_closed = "",
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
    symlink_open = "",
  }
}




-- a list of groups can be found at `:help nvim_tree_highlight`
-- vim.cmd[[ set termguicolors ]]
vim.cmd[[ highlight NvimTreeFolderIcon ctermfg=blue guifg=blue ]]
vim.cmd[[ highlight NvimTreeGitNew ctermfg=red guifg=red ]]
vim.cmd[[ highlight NvimTreeGitDirty ctermfg=DarkGreen guifg=LightGreen ]]
vim.cmd[[ highlight NvimTreeGitStaged ctermfg=DarkGreen guifg=LightGreen ]]


local tree_cb = require'nvim-tree.config'.nvim_tree_callback
local list = {
  { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
  { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },
  { key = "s",                            cb = tree_cb("vsplit") },
  { key = "i",                            cb = tree_cb("split") },
  { key = "t",                            cb = tree_cb("tabnew") },
  { key = "<",                            cb = tree_cb("prev_sibling") },
  { key = ">",                            cb = tree_cb("next_sibling") },
  { key = "P",                            cb = tree_cb("parent_node") },
  { key = "<BS>",                         cb = tree_cb("close_node") },
  { key = "<S-CR>",                       cb = tree_cb("close_node") },
  { key = "<Tab>",                        cb = tree_cb("preview") },
  { key = "K",                            cb = tree_cb("first_sibling") },
  { key = "J",                            cb = tree_cb("last_sibling") },
  { key = "I",                            cb = tree_cb("toggle_ignored") },
  { key = "H",                            cb = tree_cb("toggle_dotfiles") },
  { key = "r",                            cb = tree_cb("refresh") },
  { key = "R",                            cb = tree_cb("rename") },
  { key = "a",                            cb = tree_cb("create") },
  { key = "d",                            cb = tree_cb("remove") },
  { key = "D",                            cb = tree_cb("trash") },
  { key = "<C-r>",                        cb = tree_cb("full_rename") },
  { key = "x",                            cb = tree_cb("cut") },
  { key = "c",                            cb = tree_cb("copy") },
  { key = "p",                            cb = tree_cb("paste") },
  { key = "y",                            cb = tree_cb("copy_name") },
  { key = "Y",                            cb = tree_cb("copy_path") },
  { key = "gy",                           cb = tree_cb("copy_absolute_path") },
  { key = "[c",                           cb = tree_cb("prev_git_item") },
  { key = "]c",                           cb = tree_cb("next_git_item") },
  { key = "-",                            cb = tree_cb("dir_up") },
  { key = "S",                            cb = tree_cb("system_open") },
  { key = "q",                            cb = tree_cb("close") },
  { key = "g?",                           cb = tree_cb("toggle_help") },
}




require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  -- auto_close          = true, -- getting error message that this does not work
  open_on_tab         = true,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = list
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  actions = {
    open_file = {
      quit_on_open = false,
      resize_window = true,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}



-- to ensure easy navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-r>', ':mod<CR>', { noremap = true, silent = true })


