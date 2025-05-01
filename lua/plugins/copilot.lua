local prefix = "<Leader>a"
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

  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = true,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      -- add any opts here
      mappings = {
        ask = prefix .. "<CR>",
        edit = prefix .. "e",
        refresh = prefix .. "r",
        focus = prefix .. "f",
        toggle = {
          default = prefix .. "t",
          debug = prefix .. "d",
          hint = prefix .. "h",
          suggestion = prefix .. "s",
          repomap = prefix .. "R",
        },
        diff = {
          next = "]c",
          prev = "[c",
        },
        files = {
          add_current = prefix .. ".",
        },
      },
      behaviour = {
        auto_suggestions = false,
      },
      provider = "copilot",
      copilot = {
        model = "claude-3.7-sonnet",
        temperature = 0,
        max_tokens = 8192,
      },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    -- dynamically build it, taken from astronvim
    build = vim.fn.has("win32") == 1 and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
      or "make",
    dependencies = {
      -- "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = {
          -- make sure rendering happens even without opening a markdown file first
          "yetone/avante.nvim",
        },
        opts = function(_, opts)
          opts.file_types = opts.file_types or { "markdown", "norg", "rmd", "org" }
          vim.list_extend(opts.file_types, { "Avante" })
        end,
      },
    },
  },
}
