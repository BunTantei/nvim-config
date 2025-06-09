return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth", -- Run auth when installing/updating
    event = { "InsertEnter", "LspAttach" }, -- Load during these events
    config = function()
      -- Use a more recent Node.js version or system default Node
      -- vim.g.copilot_node_command = "node" -- Use system Node.js
      -- Or if you want to continue using NVM, use a more recent version
      vim.g.copilot_node_command = "~/.nvm/versions/node/v18.18.2/bin/node" -- Replace with your current LTS Node.js version

      -- Remove insecure TLS settings
      -- vim.fn.setenv("NODE_EXTRA_CA_CERTS", "")
      -- vim.fn.setenv("NODE_TLS_REJECT_UNAUTHORIZED", "0")

      require("copilot").setup({
        server_opts_overrides = {
          trace = "verbose",
          settings = {
            advanced = {
              listCount = 10,
              inlineSuggestCount = 3,
            },
          },
        },
        panel = {
          enabled = true,
          auto_refresh = true,
          keymap = {
            jump_next = "<c-j>",
            jump_prev = "<c-k>",
            accept = "<c-y>", -- Changed from <c-a> to avoid key conflict
            refresh = "r",
            open = "<M-CR>",
          },
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<c-a>", -- Changed from <c-a> to avoid key conflict
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
    "CopilotC-Nvim/CopilotChat.nvim", -- Check for more up-to-date repositories if needed
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
