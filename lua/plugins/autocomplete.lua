-- ~/.config/nvim/lua/plugins/manual-completion.lua
return {
  "hrsh7th/nvim-cmp",
  enabled = true,
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },
  config = function()
    local cmp = require("cmp")

    cmp.setup({
      completion = {
        autocomplete = false, -- No automatic popup!
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(), -- Manual trigger
        ["<Tab>"] = cmp.mapping.select_next_item(), -- Navigate when menu is open
        ["<S-Tab>"] = cmp.mapping.select_prev_item(), -- Navigate up
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept
        ["<Esc>"] = cmp.mapping.abort(), -- Close menu
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
      }, {
        { name = "buffer" },
        { name = "path" },
      }),
    })
  end,
}
