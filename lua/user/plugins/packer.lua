local ok, packer = pcall(require, 'packer')

if not ok then
  vim.cmd('echom "plugin error: packer is missing"')
  return
end

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- use {'sonph/onehalf', rtp = 'vim'}
  use 'junegunn/goyo.vim'
  -- use 'itchyny/lightline.vim'
  use 'nvim-lualine/lualine.nvim'
  use 'ericbn/vim-relativize'
  use 'mattn/emmet-vim'
  -- use 'SirVer/ultisnips'
  use 'L3MON4D3/LuaSnip'
  use { 'sonph/onehalf', rtp = 'vim/' }
  -- use 'preservim/nerdtree'
  use 'scrooloose/nerdcommenter'
  use 'junegunn/fzf'
  -- use 'junegunn/fzf.vim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/playground'
  use 'neovim/nvim-lspconfig'
  -- use 'glepnir/lspsaga.nvim'
  use 'tami5/lspsaga.nvim'
  use 'airblade/vim-rooter'
  use 'sharkdp/bat'
  use 'pangloss/vim-javascript'
  use 'maxmellon/vim-jsx-pretty'
  use 'cakebaker/scss-syntax.vim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'jose-elias-alvarez/nvim-lsp-ts-utils'
  use 'onsails/lspkind-nvim'
  use 'ojroques/nvim-lspfuzzy'
  use 'tpope/vim-fugitive'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'ThePrimeagen/harpoon'
  -- use 'quangnguyen30192/cmp-nvim-ultisnips'
  use 'williamboman/nvim-lsp-installer'
  use 'nvim-lua/plenary.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use 'easymotion/vim-easymotion'
  use 'glepnir/dashboard-nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'nvim-treesitter/nvim-treesitter-context'

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope-fzf-native.nvim'} }
  }
end)
