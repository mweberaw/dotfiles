return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "vimdoc",
        "html",
        "json",
        "lua",
        -- "markdown",
        -- "markdown_inline",
        "python",
        "query",
        "regex",
        "vim",
        "yaml",
        "go",
        "terraform",
      },
      highlight = {
        disable = function(lang)
          if lang == "pandoc" then
            return true
          end
        end,
      },
    },
  },
}
