return {
    {
    "Mofiqul/vscode.nvim",
    lazy = false,       -- Load immediately (not lazily)
    priority = 1000,     -- High priority so it loads before other theme plugins
    config = function()
      -- Optional settings *before* applying the colorscheme
      -- For example, you can disable italics or override colors:
       vim.g.vscode_disable_nvimtree_bg = true
       vim.g.vscode_color_overrides = { vscLineNumber = "#FF0000" }

      vim.cmd("colorscheme vscode")
    end,
  }
}
