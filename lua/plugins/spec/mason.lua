return {
    {
        "williamboman/mason.nvim",
        opts = {},
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                },
            })
        end,
    },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "L3MON4D3/LuaSnip" },          -- optional snippet engine
    { "saadparwaiz1/cmp_luasnip" },  -- snippet completions
}

