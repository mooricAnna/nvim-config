return {
    "williamboman/mason-lspconfig.nvim",
    enabled = true,
    opts = {
        ensure_installed = { 'pylsp', 'lua_ls', 'rust_analyzer' },
    }
}
