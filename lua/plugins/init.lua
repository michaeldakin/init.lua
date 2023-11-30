return {
    { 'nvim-treesitter/nvim-treesitter',          build = ':TSUpdate' },
    'nvim-treesitter/nvim-treesitter-context',
    'nvim-treesitter/playground',
    { 'nvim-telescope/telescope.nvim',            branch = '0.1.x',                                dependencies = { 'nvim-lua/plenary.nvim' } },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    { 'rose-pine/neovim',                         name = 'rose-pine' },                               --opts = { icons = false }
    { 'folke/trouble.nvim',                       dependencies = { 'nvim-tree/nvim-web-devicons' } }, -- opts = { icons = false }
    'ThePrimeagen/harpoon',
    'ThePrimeagen/refactoring.nvim',
    'ThePrimeagen/vim-be-good',
    'mbbill/undotree',
    'tpope/vim-commentary',
    'tpope/vim-fugitive',
    'fatih/vim-go',
    {
        "ray-x/go.nvim",
        dependencies = { -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
            'mfussenegger/nvim-dap',
            'rcarriga/nvim-dap-ui',
            'theHamsta/nvim-dap-virtual-text',
        },
        config = function()
            require("go").setup()
        end,
        event = { "CmdlineEnter" },
        ft = { "go", 'gomod' },
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    },
    { 'akinsho/toggleterm.nvim',  version = '*',                             config = true },
    { 'windwp/nvim-autopairs',    event = 'InsertEnter' },
    { 'folke/todo-comments.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'hrsh7th/nvim-cmp', -- Autocompletion
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'L3MON4D3/LuaSnip', -- Snippets
            'rafamadriz/friendly-snippets',
            'folke/neodev.nvim',
        }
    },
}
