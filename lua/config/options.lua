-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options

-- General settings
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.wrap = false -- No line wrapping (better for coding)
vim.opt.scrolloff = 8 -- Keep 8 lines visible when scrolling
vim.opt.tabstop = 4 -- Tab width
vim.opt.shiftwidth = 4 -- Indent width
vim.opt.expandtab = true -- Use spaces instead of tabs

-- Set up auto commands
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "go" },
  callback = function()
    -- Use tabs for Go files (Go convention)
    vim.opt_local.expandtab = false
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
  end,
})

-- File type specific settings for your favorite languages
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python" },
  callback = function()
    -- Python settings
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "javascript", "typescript", "svelte", "astro", "html", "css" },
  callback = function()
    -- Frontend settings
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})
vim.g.cmp_fuzzy_implementation = "lua"
