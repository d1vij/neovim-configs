-- LAZYVIM Setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- Load plugins
require("lazy").setup({
    spec = {
        { import = "plugins.spec" }
    }
})

-- Telescope setup
require("telescope").setup({
  defaults = {
    prompt_prefix = "🔍 ",
    selection_caret = " ",
    path_display = { "smart" },
  },
})

-- ===============================
-- Modern Neovim 0.11+ LSP setup
-- for Python with BasedPyright
-- ===============================

-- Function to detect Python project root
local function get_python_root(fname)
    local markers = {
        "basedpyrightconfig.json",
        "pyrightconfig.json",
        "pyproject.toml",
        ".git"
    }
    local found = vim.fs.find(markers, { upward = true, path = vim.fs.dirname(fname) })
    if found[1] then
        return vim.fs.dirname(found[1])
    end
    return nil
end

-- Optional: on_attach function to add LSP keymaps
local function on_attach(client, bufnr)
    local opts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    print("BasedPyright attached to " .. vim.api.nvim_buf_get_name(bufnr))
end

-- Function to start BasedPyright if filetype is python
local function setup_basedpyright()
    local bufnr = vim.api.nvim_get_current_buf()
    local ft = vim.api.nvim_buf_get_option(bufnr, "filetype")
    if ft ~= "python" then return end

    -- Check if server is already attached
    for _, client in ipairs(vim.lsp.get_clients({bufnr=bufnr})) do
        if client.name == "basedpyright" then
            return
        end
    end

    -- Start the server
    vim.lsp.start({
        name = "basedpyright",
        cmd = { "basedpyright-langserver", "--stdio" },
        filetypes = { "python" },
        root_dir = get_python_root,
        settings = {
            basedpyright = {
                typeCheckingMode = "basic",
                reportUnknownVariableType = false,
                reportMissingImports = true,
                analysis = {
                    autoSearchPaths = true,
                    diagnosticMode = "workspace",
                    useLibraryCodeForTypes = true,
                },
            },
        },
        on_attach = on_attach,
    })
end

-- Auto-start BasedPyright when opening Python files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = setup_basedpyright,
})

