vim.keymap.set("", "<Space>", "<Nop>", { noremap = true, silent = true, desc = "reserve space for leader" })
vim.g.mapleader = " "
vim.g.localmapleader = " "


-- general
vim.keymap.set('n', '<esc><esc>', '<cmd>nohlsearch<CR>', { noremap = true, silent = true, desc = "stop incremental search" })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true, desc = "paginate down and center" })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true, desc = "paginate up and center" })


-- nvim tree key bindings
vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', { noremap = true, silent = true, desc = "toggle nvim tree" })
vim.keymap.set('n', '<leader>r', '<cmd>NvimTreeRefresh<CR>', { noremap = true, silent = true, desc = "refresh nvim tree" })
vim.keymap.set('n', '<leader>n', '<cmd>NvimTreeFindFile<CR>', { noremap = true, silent = true, desc = "find file within nvim tree" })


-- telescope
vim.keymap.set('n', '<leader>km', "<cmd>lua require('telescope.builtin').keymaps()<CR>", { noremap = true, silent = true, desc = "list keymappings" })
vim.keymap.set('n', '<leader>co', "<cmd>lua require('telescope.builtin').colorscheme({ enable_preview = true })<CR>", { noremap = true, silent = true, desc = "list colorschemes" })
vim.keymap.set('n', '<leader>hi', "<cmd>lua require('telescope.builtin').highlights()<CR>", { noremap = true, silent = true, desc = "list highlights" })
vim.keymap.set('n', 'ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true, silent = true, desc = "find files" })
vim.keymap.set('n', '<leader>/', function()
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({
    previewer = false,
  })) end,
  { noremap = true, silent = true, desc = "find in current buffer" }
)
vim.keymap.set('n', 'fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true, silent = true, desc = "live grep" })
vim.keymap.set('n', 'fb', "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true, silent = true, desc = "get buffers" })
vim.keymap.set('n', 'fh', "<cmd>lua require('telescope.builtin').help_tags()<CR>", { noremap = true, silent = true, desc = "help tags" })


-- bufferline
vim.keymap.set('n', '<S-l>', ':bnext<CR>', { noremap = true, silent = true, desc = "next buffer" })
vim.keymap.set('n', '<S-h>', ':bprevious<CR>', { noremap = true, silent = true, desc = "previous buffer" })
vim.keymap.set('n', 'Q', '<cmd>Bdelete!<CR>', { noremap = true, silent = true, desc = "delete buffer" })
vim.keymap.set('n', 'tl', '<cmd>:tabnext<CR>', { noremap = true, silent = true, desc = "next tab" })
vim.keymap.set('n', 'th', '<cmd>:tabprev<CR>', { noremap = true, silent = true, desc = "previous tab" })
vim.keymap.set('n', 'ti', '<cmd>:tabnew<CR>', { noremap = true, silent = true, desc = "new tab" })


-- lazygit
vim.keymap.set('n', '<leader>lg', ':FloatermNew lazygit<CR>', { noremap = true, silent = true, desc = "launch lazy git" })
vim.keymap.set('n', '<leader>gs', ':Telescope git_status<CR>', { noremap = true, silent = true, desc = "git status" })


-- for debugger
vim.keymap.set('n', '<F12>', '<cmd>lua require"dap".step_out()<CR>', { noremap = true, silent = true, desc = "Debugger (DAP) - step out" })
vim.keymap.set('n', '<F11>', '<cmd>lua require"dap".step_into()<CR>', { noremap = true, silent = true, desc = "Debugger (DAP) - step into" })
vim.keymap.set('n', '<F10>', '<cmd>lua require"dap".step_over()<CR>', { noremap = true, silent = true, desc = "Debugger (DAP) - step over" })
vim.keymap.set('n', '<F5>', '<cmd>lua require"dap".continue()<CR>', { noremap = true, silent = true, desc = "Debugger (DAP) - continue" })
vim.keymap.set('n', '<F1>', '<cmd>lua require"dap".toggle_breakpoint()<CR>', { noremap = true, silent = true, desc = "Debugger (DAP) - toggle breakpoint" })
vim.keymap.set('n', '<leader>daa', '<cmd>lua require("debuggers.node").attach()<CR>', { noremap = true, silent = true, desc = "Debugger (DAP) - attach" })
vim.keymap.set('n', '<leader>dar', '<cmd>lua require("debuggers.node").attachToRemote()<CR>', { noremap = true, silent = true, desc = "Debugger (DAP) - attach to remote" })
vim.keymap.set('n', '<F3>', '<cmd>lua require("dap").terminate()<CR>', { noremap = true, silent = true, desc = "Debugger (DAP) - terminate" })

vim.keymap.set('n', '<leader>dsc', '<cmd>lua require"dap.ui.variables".scopes()<CR>', { noremap = true, silent = true, desc = "DAP - variable scopes" })
vim.keymap.set('n', '<leader>dhh', '<cmd>lua require"dap.ui.variables".hover()<CR>', { noremap = true, silent = true, desc = "DAP - variable hover" })
vim.keymap.set('v', '<leader>dhv',
          '<cmd>lua require"dap.ui.variables".visual_hover()<CR>', { noremap = true, silent = true, desc = "DAP - visual hover" })

vim.keymap.set('n', '<leader>duh', '<cmd>lua require"dap.ui.widgets".hover()<CR>', { noremap = true, silent = true, desc = "DAP - widget hover" })
vim.keymap.set('n', '<leader>duf',
          "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>", { noremap = true, silent = true, desc = "DAP - center widgets" })

vim.keymap.set('n', '<leader>dsbr',
          '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', { noremap = true, silent = true, desc = "DAP - set breakpoint condition" })
vim.keymap.set('n', '<leader>dsbm',
          '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', { noremap = true, silent = true, desc = "DAP - log point message" })
vim.keymap.set('n', '<leader>dro', '<cmd>lua require"dap".repl.open()<CR>', { noremap = true, silent = true, desc = "DAP - open repl" })
vim.keymap.set('n', '<leader>drl', '<cmd>lua require"dap".repl.run_last()<CR>', { noremap = true, silent = true, desc = "DAP - repl run last command" })


-- telescope-dap
vim.keymap.set('n', '<leader>dcc',
          '<cmd>lua require"telescope".extensions.dap.commands{}<CR>', { noremap = true, silent = true, desc = "DAP - see commands" })
vim.keymap.set('n', '<leader>dco',
          '<cmd>lua require"telescope".extensions.dap.configurations{}<CR>', { noremap = true, silent = true, desc = "DAP - see configurations" })
vim.keymap.set('n', '<leader>dlb',
          '<cmd>lua require"telescope".extensions.dap.list_breakpoints{}<CR>', { noremap = true, silent = true, desc = "DAP - list breakpoints" })
vim.keymap.set('n', '<leader>dv',
          '<cmd>lua require"telescope".extensions.dap.variables{}<CR>', { noremap = true, silent = true, desc = "DAP - go to variables" })
vim.keymap.set('n', '<leader>df',
          '<cmd>lua require"telescope".extensions.dap.frames{}<CR>', { noremap = true, silent = true, desc = "DAP - open frames" })




-- resource files
vim.keymap.set("n", "<leader><leader>s", ":source $MYVIMRC<CR>", { noremap = true, silent = true, desc = "source the lua config again" })



-- expand window
vim.keymap.set("n", "<Left>", "<cmd>:vertical resize -2<CR>", { noremap = true, silent = true, desc = "Contract buffer horizontally" })
vim.keymap.set("n", "<Right>", "<cmd>:vertical resize +2<CR>", { noremap = true, silent = true, desc = "Expand buffer horizontally" })
vim.keymap.set("n", "<Down>", "<cmd>:resize -2<CR>", { noremap = true, silent = true, desc = "Contract buffer vertically" })
vim.keymap.set("n", "<Up>", "<cmd>:resize +2<CR>", { noremap = true, silent = true, desc = "Expand window vertically" })


