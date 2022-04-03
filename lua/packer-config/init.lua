return require("packer").startup(function()
    use 'wbthomason/packer.nvim' --> packer plugin manager

    use 'kyazdani42/nvim-tree.lua' --> file explorer
    use {
      'nvim-telescope/telescope.nvim', --> Find, Filter, Preview, Pick. All lua, all the time.
      requires = { {'nvim-lua/plenary.nvim'} }
    }

--> colorschemes
    use 'EdenEast/nightfox.nvim' --> nightfox colorsceme for neovim


--> visual setting
    use 'rcarriga/nvim-notify'
    use 'nvim-lualine/lualine.nvim' --> a statusline written in lua
    use 'romgrk/barbar.nvim' --> tabs for neovim
    use 'sunjon/shade.nvim' --> dim inactive windows
    use 'lukas-reineke/indent-blankline.nvim' --> indent guides for neovim
    use 'Pocco81/TrueZen.nvim'
    use 'akinsho/toggleterm.nvim'
    use 'kyazdani42/nvim-web-devicons' --> enable icons
    use 'norcalli/nvim-colorizer.lua' --> colorize color codes 
    use 'NTBBloodbath/color-converter.nvim'

--> edit setting
    use 'numToStr/Comment.nvim'	
    use 'jiangmiao/auto-pairs'
    use 'junegunn/vim-easy-align' 
    -- use 'windwp/nvim-autopairs'    
    -- use 'iamcco/markdown-preview.nvim' 
    -- use 'jbyuki/nabla.nvim'
    
    -- use 'nvim-neorg/neorg'

--> treesitter & treesitter modules/plugins
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    } --> treesitter
    use 'nvim-treesitter/nvim-treesitter-textobjects' --> textobjects
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use 'p00f/nvim-ts-rainbow'
    use 'nvim-treesitter/playground'
    use 'JoosepAlviste/nvim-ts-context-commentstring'

--> LSP
    use 'neovim/nvim-lspconfig' --> Collection of configurations for the built-in LSP client
    use 'williamboman/nvim-lsp-installer' --> Companion plugin for lsp-config, allows us to seamlesly install language servers
    use 'hrsh7th/nvim-cmp' --> Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' --> LSP source for nvim-cmp
	use 'saadparwaiz1/cmp_luasnip' --> Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' --> Snippets plugin
	use 'onsails/lspkind-nvim' --> Snippets plugin
    use 'jose-elias-alvarez/null-ls.nvim' --> inject lsp diagnistocs, formattings, code actions, and more ...
	use 'tami5/lspsaga.nvim' --> icons for LSP diagnostics
	use 'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim'

--> latex
    use 'lervag/vimtex'
end)
