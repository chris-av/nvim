local status_ok, nvim_tree = pcall(require, 'nvim-tree')
local notifications = require('utils.notifications')
if not status_ok then
  notifications.plugin_error('nvim-tree')
  return
end

local vim = vim


-- a list of groups can be found at `:help nvim_tree_highlight`
vim.cmd[[ highlight NvimTreeFolderIcon ctermfg=blue guifg=blue ]]
vim.cmd[[ highlight NvimTreeGitNew ctermfg=red guifg=red ]]
vim.cmd[[ highlight NvimTreeGitDirty ctermfg=DarkGreen guifg=LightGreen ]]
vim.cmd[[ highlight NvimTreeGitStaged ctermfg=DarkGreen guifg=LightGreen ]]


local tree_cb = require('nvim-tree.config').nvim_tree_callback
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




nvim_tree.setup ({
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  open_on_tab         = true,
  hijack_cursor       = false,
  update_cwd          = false,
  diagnostics = {
    enable = false,
    icons = {
      hint = "???",
      info = "???",
      warning = "???",
      error = "???",
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
    mappings = {
      custom_only = false,
      list = list
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  renderer = {
    icons = {
      glyphs = {
        default = '???',
        symlink = '???',
        git = {
          -- untracked = "???",
          -- unstaged = "???",
          -- staged = "???",

          untracked = "???",
          unstaged = "???",
          staged = "???",

          unmerged = "???",
          renamed = "???",
          deleted = "???",
          ignored = "???"
        },
        folder = {
          arrow_open = "???",
          arrow_closed = "???",
          default = "???",
          open = "???",
          empty = "???",
          empty_open = "???",
          symlink = "???",
          symlink_open = "???",
        }
      },
    },
    special_files=  { "README.md", "Makefile", "MAKEFILE" }
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
})



-- to ensure easy navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-r>', ':mod<CR>', { noremap = true, silent = true })


-- auto close
vim.api.nvim_create_autocmd('BufEnter', {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match('NvimTree_') ~= nil then
      vim.cmd([[ quit ]])
    end
  end
})




