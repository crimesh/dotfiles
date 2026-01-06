-- Activate plugins here

vim.pack.add({
    -- Color scheme
    "https://github.com/catppuccin/nvim",

    -- Statusline
    {
        src = "https://github.com/nvim-lualine/lualine.nvim",
        name = "lualine",
    },
    "https://github.com/nvim-tree/nvim-web-devicons",

    -- Finder
    "https://github.com/nvim-telescope/telescope.nvim",
    "https://github.com/nvim-lua/plenary.nvim",

    -- File browser
    "https://github.com/nvim-telescope/telescope-file-browser.nvim",

    -- Treesitter
    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        version = "main",
    },

    -- Sticky headers
    "https://github.com/nvim-treesitter/nvim-treesitter-context",

    -- LSP configuration
    "https://github.com/neovim/nvim-lspconfig",

    -- Git interface
    "https://github.com/NeogitOrg/neogit",

    -- TODO: native completion
    "https://github.com/Saghen/blink.cmp",
})
