require("nvim-treesitter").setup({
    install_dir = vim.fn.stdpath("data") .. "/treesitter",
})

require("nvim-treesitter").install("all")

vim.api.nvim_create_autocmd("FileType", {
    callback = function()
        -- Highlights
        local started = pcall(vim.treesitter.start)

        -- Indentation and Folds
        if started then
            vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
            vim.bo.indentexpr = "v:lua.require('nvim-treesitter').indentexpr()"
        end
    end,
})
