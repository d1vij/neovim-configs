-- LAZYVIM Setup
-- Set the path where lazy.nvim is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Automatically clone lazy.nvim if it doesn't exist
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

-- Prepend lazy.nvim to runtime path
vim.opt.rtp:prepend(lazypath)

-- Load plugins via lazy
require("lazy").setup({
    spec = {
        {import = "plugins.spec"}
    }
})
