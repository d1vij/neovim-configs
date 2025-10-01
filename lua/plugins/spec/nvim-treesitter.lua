return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        -- Install parsers for these languages
        ensure_installed = { "lua", "python", "javascript", "c", "cpp", "html", "css" },

        -- Enable syntax highlighting
        highlight = { enable = true },

        -- Enable indentation
        indent = { enable = true },

        -- Optional: enable incremental selection
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
          },
        },
      })
    end
  }
}

