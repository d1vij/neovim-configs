return {
 {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- optional icons
    },
    config = function()
      require("nvim-tree").setup()
    end,
  },
}
