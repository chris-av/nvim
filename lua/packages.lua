local fn = vim.fn
local packer = require('packer')

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
  -- vim.cmd 'packadd packer.nvim'
end

packer.startup(function()
  local use = packer.use
  use 'wbthomason/packer.nvim'

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'nvim-treesitter/nvim-treesitter'
  use 'mfussenegger/nvim-jdtls'
  use 'ziglang/zig.vim'

  -- interface
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'SmiteshP/nvim-navic',
    requires = 'neovim/nvim-lspconfig'
  }
  use 'tpope/vim-fugitive'
  use 'mhinz/vim-signify'
  use {
    'akinsho/bufferline.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      'moll/vim-bbye'
    }
  }
  use 'voldikss/vim-floaterm'
  use 'rcarriga/nvim-notify'

  -- completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  use 'numToStr/Comment.nvim'

  -- colorschemes
  use 'marko-cerovac/material.nvim'
  use 'projekt0n/github-nvim-theme'
  use({
    "catppuccin/nvim",
    as = "catppuccin"
  })
  use({
    "embark-theme/vim",
    as = 'embark',
    branch = 'main'
  })


  -- debugger
  use 'mfussenegger/nvim-dap'
  use 'nvim-telescope/telescope-dap.nvim'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'mfussenegger/nvim-dap-python'
  -- appears that dapinsall is archived, to be replaced by dap-buddy.nvim, keep eye out on new repo
  -- use {
  --   'Pocco81/DAPInstall.nvim',
  --   module = 'dap-install'
  -- }
  use {
    'rcarriga/nvim-dap-ui',
    requires = {
      'mfussenegger/nvim-dap'
    }
  }


  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'BurntSushi/ripgrep' },
      { 'sharkdp/fd' }
    }
  }

  -- nvim tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons'
    }
  }

  -- non neovim plugins
  use 'maxmellon/vim-jsx-pretty'
  use 'ryanoasis/vim-devicons'

  if packer_bootstrap then
    require('packer').sync()
  end

end)
