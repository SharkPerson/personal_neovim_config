local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  --'wbthomason/packer.nvim',
  --'ellisonleao/gruvbox.nvim',
  'rebelot/kanagawa.nvim',
  {
    'dracula/vim',
    lazy = false,
  },
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  --'nvim-lualine/lualine.nvim',
  'nvim-treesitter/nvim-treesitter',
  'bluz71/vim-nightfly-colors',
  --'vim-test/vim-test',
  --'lewis6991/gitsigns.nvim',
  --'preservim/vimux',
  --'christoomey/vim-tmux-navigator',
  --'tpope/vim-fugitive',
  --'tpope/vim-commentary',

  -- rust babyyyyyyy
  --'mfussenegger/nvim-dap',
  --'rcarriga/nvim-dap-ui',
  --'simrat39/rust-tools.nvim',

  -- completion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  --'saadparwaiz1/cmp_luasnip',
  --"rafamadriz/friendly-snippets",
  --"github/copilot.vim",
  "williamboman/mason.nvim",
  "neovim/nvim-lspconfig",
  --"williamboman/mason-lspconfig.nvim",
  --"glepnir/lspsaga.nvim",
  {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.0',
      dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  -- Alpha (Dashboard)
  {
      "goolord/alpha-nvim",
      lazy = true,
  }, 
  {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      dependencies = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {'williamboman/mason.nvim'},           -- Optional
          {'williamboman/mason-lspconfig.nvim'}, -- Optional

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},         -- Required
          {'hrsh7th/cmp-nvim-lsp'},     -- Required
          {'hrsh7th/cmp-buffer'},       -- Optional
          {'hrsh7th/cmp-path'},         -- Optional
          {'saadparwaiz1/cmp_luasnip'}, -- Optional
          {'hrsh7th/cmp-nvim-lua'},     -- Optional

          -- Snippets
          {'L3MON4D3/LuaSnip'},             -- Required
          {'rafamadriz/friendly-snippets'}, -- Optional
      }
  },
  -- Which-key
  {
      'folke/which-key.nvim',
      lazy = true,
  },
  -- Hop (Better Navigation)
  {
      "phaazon/hop.nvim",
      lazy = true,
  },

  {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
  }
}

local opts = {}

require("lazy").setup(plugins, opts)
