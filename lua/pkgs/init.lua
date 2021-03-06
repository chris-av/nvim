require('pkgs.nvim-notify')
require('pkgs.bufferline')
require('pkgs.github-themes')
require('pkgs.lualine')
require('pkgs.material')
require('pkgs.nvim-tree')
require('pkgs.comment')
require('pkgs.telescope')
require('pkgs.cmp')
require('pkgs.nvim-autopairs')
require('pkgs.treesitter')
require('pkgs.luasnip')
require('pkgs.floaterm')
require('pkgs.catppuccin')


local iterm_prof = os.getenv('ITERM_PROFILE')


if (iterm_prof == 'Material Deep Ocean') then
  vim.cmd([[ colorscheme material ]])
elseif (string.match(iterm_prof, 'Catppuccin')) then
  vim.cmd([[ colorscheme catppuccin ]])
elseif (iterm_prof == 'Embark') then
  vim.cmd([[ colorscheme embark ]])
end


