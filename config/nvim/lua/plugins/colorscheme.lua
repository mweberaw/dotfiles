return {
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("material").setup({
        lualine_style = "stealth",
        styles = {
          comments = { italic = true },
        },
      })
      vim.cmd("colorscheme material")
    end,
  },
}
