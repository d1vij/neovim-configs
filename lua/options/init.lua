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

-- Width of tabs in spaces
vim.opt.tabstop = 2
-- Manual indent spaces
vim.opt.shiftwidth = 2
--
-- Converts tabs to spaces
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Search configuration
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.gdefault = true

vim.opt.termguicolors = true

-- Change cd to opened file's directory
vim.opt.autochdir = true;


-- Allows for stuff like :e filename rather than :e full/path/to/filename
vim.opt.cmdheight = 0
-- Show tildes at end of buffer
vim.o.fillchars = "eob:~"

-- VertSplit-ted buffer opens on the right side
vim.opt.splitright = true
-- Show ~ in number line
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.cmd [[ highlight EndOfBuffer guifg=#555555 ]]
  end,
})

