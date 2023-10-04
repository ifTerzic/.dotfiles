-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = function()
            require("telescope").setup({
            })
        end
    }
    use 'Mofiqul/dracula.nvim'
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('theprimeagen/harpoon')
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    },
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    },
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },
    use {
        'folke/todo-comments.nvim',
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    -- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    }),

    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end},
    use {
        "imNel/monorepo.nvim",
        config = function()
            require("monorepo").setup({
                -- Your config here!
            })
        end,
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    },
    use {"nvim-telescope/telescope-project.nvim"}
}
end)
