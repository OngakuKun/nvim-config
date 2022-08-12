-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
   -- Packer can manage itself
   use 'wbthomason/packer.nvim'
   use 'projekt0n/github-nvim-theme'
   use {'lewis6991/gitsigns.nvim', config = function() require('gitsigns').setup() end}
   use {'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = {{'nvim-lua/plenary.nvim'}}}
end)