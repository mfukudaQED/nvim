-- mason-language-servers.lua

local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

local servers = {
    "pyright",
    "bashls",
    "ts_ls",
    "lua_ls",
    "clangd",
    "fortls",
    "ltex",
    "emmet_ls",
    "eslint",
}

-- Setup mason
mason.setup()

-- Ensure these servers are installed
mason_lspconfig.setup {
    ensure_installed = servers,
    automatic_installation = true,
}

-- Capabilities from cmp_nvim_lsp
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Your custom on_attach function
local on_attach = function(client, bufnr)
    local opts = { noremap=true, silent=true }
    local map = vim.api.nvim_buf_set_keymap

    map(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    map(bufnr, "n", "<leader>lh", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    map(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    map(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
    map(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
    map(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    map(bufnr, "n", "<leader>ld", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
    map(bufnr, "n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
    map(bufnr, "n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
    map(bufnr, "n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
    map(bufnr, "n", "<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end

-- Setup servers with default handler
--mason_lspconfig.setup_handlers {
--    function(server_name)
--        lspconfig[server_name].setup {
--            on_attach = on_attach,
--            capabilities = capabilities,
--        }
--    end,
--}
--

-- Setup each server manually
for _, server in ipairs(servers) do
    lspconfig[server].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end
