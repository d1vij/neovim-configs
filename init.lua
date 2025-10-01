-- Loading options
require("options")

-- Loading plugins
require("plugins")
-- Toggle file explorer with Ctrl+n
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

