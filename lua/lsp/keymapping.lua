local opts = { }
local extend = function (tbl, desc)
  return vim.tbl_extend("error", tbl, desc)
end




vim.keymap.set("", "<Space>", "<Nop>", extend(opts, { desc = "reserve space for leader" }))
vim.g.mapleader = " "
vim.g.localmapleader = " "






-- general
vim.keymap.set('n', '<esc><esc>', '<cmd>nohlsearch<CR>', extend(opts, extend(opts, { desc = "stop incremental search" })))
vim.keymap.set('n', '<C-d>', '<C-d>zz', extend(opts, extend(opts, { desc = "paginate down and center" })))
vim.keymap.set('n', '<C-u>', '<C-u>zz', extend(opts, extend(opts, { desc = "paginate up and center" })))


-- nvim tree key bindings
vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', extend(opts, extend(opts, { desc = "toggle nvim tree" })))
vim.keymap.set('n', '<leader>r', '<cmd>NvimTreeRefresh<CR>', extend(opts, extend(opts, { desc = "refresh nvim tree" })))
vim.keymap.set('n', '<leader>n', '<cmd>NvimTreeFindFile<CR>', extend(opts, extend(opts, { desc = "find file within nvim tree" })))


-- telescope
vim.keymap.set('n', '<leader>km', "<cmd>lua require('telescope.builtin').keymaps()<CR>", extend(opts, { desc = "list keymappings" }))
vim.keymap.set('n', '<leader>co', "<cmd>lua require('telescope.builtin').colorscheme({ enable_preview = true })<CR>", extend(opts, { desc = "list colorschemes" }))
vim.keymap.set('n', '<leader>hi', "<cmd>lua require('telescope.builtin').highlights()<CR>", extend(opts, { desc = "list highlights" }))
vim.keymap.set('n', 'ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", extend(opts, { desc = "find files" }))
vim.keymap.set('n', '<leader>gg', "<cmd>lua require('telescope.builtin').git_commits()<CR>", extend(opts, { desc = "list git commits" }))
vim.keymap.set('n', '<leader>/', function()
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({
    previewer = false,
  })) end,
  extend(opts, { desc = "find in current buffer" })
)
vim.keymap.set('n', 'fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", extend(opts, { desc = "live grep" }))
vim.keymap.set('n', 'fb', "<cmd>lua require('telescope.builtin').buffers()<CR>", extend(opts, { desc = "get buffers" }))
vim.keymap.set('n', 'fh', "<cmd>lua require('telescope.builtin').help_tags()<CR>", extend(opts, { desc = "help tags" }))


-- bufferline
vim.keymap.set('n', '<S-l>', ':bnext<CR>', extend(opts, { desc = "next buffer" }))
vim.keymap.set('n', '<S-h>', ':bprevious<CR>', extend(opts, { desc = "previous buffer" }))
vim.keymap.set('n', 'Q', '<cmd>Bdelete!<CR>', extend(opts, { desc = "delete buffer" }))
vim.keymap.set('n', 'tl', '<cmd>:tabnext<CR>', extend(opts, { desc = "next tab" }))
vim.keymap.set('n', 'th', '<cmd>:tabprev<CR>', extend(opts, { desc = "previous tab" }))
vim.keymap.set('n', 'ti', '<cmd>:tabnew<CR>', extend(opts, { desc = "new tab" }))


-- lazygit
vim.keymap.set('n', '<leader>lg', ':FloatermNew lazygit<CR>', extend(opts, { desc = "launch lazy git" }))
vim.keymap.set('n', '<leader>gs', ':Telescope git_status<CR>', extend(opts, { desc = "git status" }))


-- for debugger
vim.keymap.set('n', '<F12>', '<cmd>lua require"dap".step_out()<CR>', extend(opts, { desc = "Debugger (DAP) - step out" }))
vim.keymap.set('n', '<F11>', '<cmd>lua require"dap".step_into()<CR>', extend(opts, { desc = "Debugger (DAP) - step into" }))
vim.keymap.set('n', '<F10>', '<cmd>lua require"dap".step_over()<CR>', extend(opts, { desc = "Debugger (DAP) - step over" }))
vim.keymap.set('n', '<F5>', '<cmd>lua require"dap".continue()<CR>', extend(opts, { desc = "Debugger (DAP) - continue" }))
vim.keymap.set('n', '<F1>', '<cmd>lua require"dap".toggle_breakpoint()<CR>', extend(opts, { desc = "Debugger (DAP) - toggle breakpoint" }))
vim.keymap.set('n', '<leader>daa', '<cmd>lua require("debuggers.node").attach()<CR>', extend(opts, { desc = "Debugger (DAP) - attach" }))
vim.keymap.set('n', '<leader>dar', '<cmd>lua require("debuggers.node").attachToRemote()<CR>', extend(opts, { desc = "Debugger (DAP) - attach to remote" }))
vim.keymap.set('n', '<F3>', '<cmd>lua require("dap").terminate()<CR>', extend(opts, { desc = "Debugger (DAP) - terminate" }))

vim.keymap.set('n', '<leader>dsc', '<cmd>lua require"dap.ui.variables".scopes()<CR>', extend(opts, { desc = "DAP - variable scopes" }))
vim.keymap.set('n', '<leader>dhh', '<cmd>lua require"dap.ui.variables".hover()<CR>', extend(opts, { desc = "DAP - variable hover" }))
vim.keymap.set('v', '<leader>dhv',
          '<cmd>lua require"dap.ui.variables".visual_hover()<CR>', extend(opts, { desc = "DAP - visual hover" }))

vim.keymap.set('n', '<leader>duh', '<cmd>lua require"dap.ui.widgets".hover()<CR>', extend(opts, { desc = "DAP - widget hover" }))
vim.keymap.set('n', '<leader>duf',
          "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>", extend(opts, { desc = "DAP - center widgets" }))

vim.keymap.set('n', '<leader>dsbr',
          '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', extend(opts, { desc = "DAP - set breakpoint condition" }))
vim.keymap.set('n', '<leader>dsbm',
          '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', extend(opts, { desc = "DAP - log point message" }))
vim.keymap.set('n', '<leader>dro', '<cmd>lua require"dap".repl.open()<CR>', extend(opts, { desc = "DAP - open repl" }))
vim.keymap.set('n', '<leader>drl', '<cmd>lua require"dap".repl.run_last()<CR>', extend(opts, { desc = "DAP - repl run last command" }))


-- telescope-dap
local telescope = require('telescope')
vim.keymap.set('n', '<leader>dcc',
          telescope.extensions.dap.commands,
          extend(opts, extend(opts, { desc = "DAP - see commands" })))
vim.keymap.set('n', '<leader>dco',
          telescope.extensions.dap.configurations,
          extend(opts, extend(opts, { desc = "DAP - see configurations" })))
vim.keymap.set('n', '<leader>dlb',
          telescope.extensions.dap.list_breakpoints,
          extend(opts, extend(opts, { desc = "DAP -  list breakpoints" })))
vim.keymap.set('n', '<leader>dv',
          telescope.extensions.dap.variables,
          extend(opts, extend(opts, { desc = "DAP - go to variables" })))
vim.keymap.set('n', '<leader>df',
          telescope.extensions.dap.frames,
          extend(opts, extend(opts, { desc = "DAP - open frames" })))




local resourceConfig = function()
  local myvimrc = os.getenv("MYVIMRC")
  print("resourcing config at : " .. myvimrc)
  vim.api.nvim_command("source " .. myvimrc)
end

-- resource files
vim.keymap.set("n", "<leader><leader>s",
  resourceConfig,
  extend(opts, { desc = "source the lua config again" }))



-- expand window
vim.keymap.set("n", "<Left>", "<cmd>:vertical resize -2<CR>", extend(opts, { desc = "Contract buffer horizontally" }))
vim.keymap.set("n", "<Right>", "<cmd>:vertical resize +2<CR>", extend(opts, { desc = "Expand buffer horizontally" }))
vim.keymap.set("n", "<Down>", "<cmd>:resize -2<CR>", extend(opts, { desc = "Contract buffer vertically" }))
vim.keymap.set("n", "<Up>", "<cmd>:resize +2<CR>", extend(opts, { desc = "Expand window vertically" }))


