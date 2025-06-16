
if vim.g.vscode then
    -- VSCode extension
else
    -- ordinary Neovim
    --
    require("settings")
    require("packer-config")
    require("colors-config.nightfox")
    -- require("colors-config.sonokai")
    require("keymap-config")
    -- require("zen-mode-config")
    
    require("nvim-tree-config")
    require("lualine-config")
    require("barbar-config")
    require("shade-config")
    require("indent-blankline-config")
    require("toggleterm-config")
    
    require("colorizer-config")
    require("color-converter-config")
    require("comment-nvim-config")
    -- require("autopairs-config")
    -- require("markdown-preview-config")
    -- require("nvim-lastplace")
    --
    require("telescope-config")
    
    -- require("lsp-config.language-servers")
    require("lsp-config.mason-language-servers")
    require("lsp-config.nvim-cmp")
    -- require("lsp-config.null-ls")
    require("lsp-config.toggle-lsp-diagnostics")
    
    require("wilder-config")
    
    --> tree-sitter and tree-sitter plugins
    require("treesitter-config")
    
    require("vimtex-config")
end
