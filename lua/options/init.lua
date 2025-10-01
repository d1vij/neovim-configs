vim.opt.hlsearch = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
-- vim.opt.showmode = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.cursorline = true
vim.opt.signcolumn = 'yes'
vim.opt.wrap = false
vim.opt.title = true                       -- set the title of window to the value of the titlestring
vim.opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to:q:
-- Persist undo
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"
vim.opt.undofile = true
-- scroll a bit extra horizontally and vertically when at the end/bottomvim.opt.sidescrolloff = 8
vim.opt.scrolloff = 8

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
-- Search configuration
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.gdefault = true
vim.lsp.inlay_hint.enable()

vim.opt.termguicolors = true
-- Change cd to opened file's directory
-- Allows for stuff like :e filename rather than :e full/path/to/filename
vim.opt.autochdir = true
vim.opt.cmdheight = 0
