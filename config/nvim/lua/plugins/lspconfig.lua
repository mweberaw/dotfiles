return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        bashls = {},
        yamlls = {},
        gopls = {},
        marksman = {},
        terraformls = {},
        helm_ls = {},
      },
    },
  },
}
