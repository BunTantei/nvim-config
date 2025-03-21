return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth", -- Run auth when installing/updating
    event = { "InsertEnter", "LspAttach" }, -- Load during these events
    config = function()
      vim.fn.setenv("NODE_EXTRA_CA_CERTS", "")
      require("copilot").setup({
        -- Add this section to specify the auth token path
        copilot_node_command = "node", -- Node.js version used by Copilot
        server_opts_overrides = {
          trace = "verbose",
          settings = {
            advanced = {
              listCount = 10,
              inlineSuggestCount = 3,
            },
          },
        },
        -- Existing configuration...
        panel = {
          enabled = true,
          auto_refresh = true,
          keymap = {
            jump_next = "<c-j>",
            jump_prev = "<c-k>",
            accept = "<c-a>",
            refresh = "r",
            open = "<M-CR>",
          },
          layout = {
            position = "bottom",
            ratio = 0.4,
          },
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<c-a>",
            accept_word = false,
            accept_line = false,
            next = "<c-j>",
            prev = "<c-k>",
            dismiss = "<c-x>",
          },
        },
        filetypes = {
          ["*"] = true,
        },
      })
    end,
  },
  -- Add completion source for nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "zbirenbaum/copilot-cmp",
        config = function()
          require("copilot_cmp").setup()
        end,
      },
    },
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "copilot", group_index = 2 } }))
    end,
  },
  -- Add floating window support for Copilot Chat
  {
    "CopilotC-Nvim/CopilotChat.nvim", -- Correct repository name
    dependencies = {
      "zbirenbaum/copilot.lua",
      "nvim-lua/plenary.nvim", -- Usually needed for async operations
    },
    cmd = "CopilotChat",
    config = function()
      require("CopilotChat").setup({
        window = {
          relative = "editor",
          border = "rounded",
          width = 0.6,
          height = 0.4,
          row = 0.3,
          col = 0.2,
        },
        keymaps = {
          open = "<leader>cc",
          close = "<leader>cq",
        },
      })
    end,
  },
}
