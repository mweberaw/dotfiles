return {
  {
    "HakonHarnes/img-clip.nvim",
    event = "BufEnter",
    opts = {
      filetypes = {
        pandoc = {
          url_encode_path = true,
          template = "![$CURSOR]($FILE_PATH)",

          drag_and_drop = {
            download_images = false,
          },
        },
      },
    },
    keys = {
      -- suggested keymap
      { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste clipboard image" },
    },
  },
  {
    "bullets-vim/bullets.vim",
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
