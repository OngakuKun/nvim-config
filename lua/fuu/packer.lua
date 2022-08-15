vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'projekt0n/github-nvim-theme'
    use 'neovim/nvim-lspconfig'
    --  NVIM LUALINE
    use 
    { 
        'nvim-lualine/lualine.nvim', 
        require = 
        { 
            'kyazdani42/nvim-web-devicons', 
            opt = true 
        }
    }
    --  LEWIS GITSIGNS
    use 
    { 
        'lewis6991/gitsigns.nvim', 
        config = function() require('gitsigns').setup() end
    }
    --  NVIM TELESCOPE
    use 
    { 
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.0', 
        requires = 
        {
            'nvim-treesitter/nvim-treesitter',
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep',
            'sharkdp/fd'
        }
    }
end)
