-- Remap commands here

-- Native:

-- Package Manager
vim.keymap.set("n", "<leader>u", vim.pack.update)

-- New tab
vim.keymap.set("n", "<leader>t", "<CMD>tabnew<CR>")

-- Write to file
vim.keymap.set("n", "<leader>w", "<CMD>write<CR>")

-- Quit buffer
vim.keymap.set("n", "<leader>q", "<CMD>quit<CR>")

-- Paste without losing register information
vim.keymap.set("x", "<leader>p", "\"_dp")
vim.keymap.set("x", "<leader>P", "\"_dP")

-- Delete without losing register information
vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")

-- Yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set({"n", "v"}, "<leader>Y", "\"+Y")

-- Center cursor for various operations
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Open file explorer
vim.keymap.set("n", "<leader>.", "<CMD>:Explore<CR>")

-- Telescope:

vim.keymap.set("n", "<leader>ff", function()
    require('telescope.builtin').find_files()
end)

vim.keymap.set("n", "<leader>fg", function()
    require('telescope.builtin').live_grep()
end)

vim.keymap.set("n", "<leader>fb", function()
    require('telescope.builtin').buffers()
end)

vim.keymap.set("n", "<leader>fo", function()
    require('telescope.builtin').oldfiles()
end)

-- Telescope file browser:
vim.keymap.set("n", "<leader>f.",
    require('telescope').extensions.file_browser.file_browser
)

-- Neogit:

vim.keymap.set("n", "<leader>g", function()
    require('neogit').open()
end)
