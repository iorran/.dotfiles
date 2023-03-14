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

local opts = {}

local plugins = {
  'ellisonleao/gruvbox.nvim',
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  'nvim-treesitter/nvim-treesitter',
  'nvim-lua/plenary.nvim',
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  },
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  "windwp/nvim-autopairs",
   {
       "windwp/nvim-ts-autotag",
        dependencies = { { "windwp/nvim-autopairs",} }
   },
   'lewis6991/gitsigns.nvim',
   'github/copilot.vim',
   'christoomey/vim-tmux-navigator',
   'numToStr/Comment.nvim',
   -- 'jose-elias-alvarez/null-ls.nvim',
   -- 'jayp0521/mason-null-ls.nvim',
}

require("lazy").setup(plugins, opts)
