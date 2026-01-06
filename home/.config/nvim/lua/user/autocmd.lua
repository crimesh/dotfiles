-- Add automatic commands here

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({
            timeout = 50,
        })
    end,
})

-- Delete excess whitespace
vim.api.nvim_create_autocmd("BufWritePre", {
    command = [[%s/\s\+$//e]],
})
