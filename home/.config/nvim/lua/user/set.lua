vim.opt.guicursor = ""
vim.opt.winborder = "rounded"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"

-- Global status
vim.opt.laststatus = 3

vim.opt.undodir = vim.env.HOME .. "/.cache/nvim/undo"
vim.opt.undofile = true
vim.opt.swapfile = false

-- Ignore |ins-completion-menu| messages
vim.opt.shortmess:append("c")

-- Put netrw in .cache
vim.g.netrw_home = vim.env.HOME .. "/.cache/nvim/netrw"

-- Map leader key to <Space>
vim.g.mapleader = " "
vim.g.maplocalleader = " "
