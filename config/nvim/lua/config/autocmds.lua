-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead", "BufFilePost" }, {
--   pattern = { "*.md" },
--   command = "setlocal syntax=pandoc",
-- })
vim.api.nvim_create_autocmd("filetype", {
  -- group = augroup("wrap_spell"),
  pattern = { "pandoc" },
  command = "setlocal syntax=pandoc",
})

-- wrap and check for spell in text filetypes
-- added to disable spelling
vim.api.nvim_create_autocmd("FileType", {
  -- group = augroup("wrap_spell"),
  pattern = { "gitcommit", "markdown", "pandoc" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = false
  end,
})

vim.api.nvim_create_autocmd("filetype", {
  -- group = augroup("wrap_spell"),
  pattern = { "gitcommit", "markdown", "pandoc" },
  command = "set nospell",
})
