vim.lsp.enable({
    "lua_ls",
    "clangd",
    "gleam",
    "gopls",
    "hls",
    "neocmake",
    "rust_analyzer",
    "zls",

    "pyright",
    "ruff",

    "ts_ls",
    "biome",
    "oxlint",
})

-- Neovim
vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            }
        }
    }
})

-- TODO: native completion
-- vim.api.nvim_create_autocmd("LspAttach", {
--     callback = function(ev)
--         local client = vim.lsp.get_client_by_id(ev.data.client_id)
--         if client:supports_method("textDocument/completion") then
--             vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
--         end
--     end,
-- })
--
-- vim.opt.completeopt = "menu,popup,fuzzy,noselect"
