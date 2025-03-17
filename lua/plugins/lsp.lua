return {
  -- Add the languages you mentioned
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Go
        gopls = {
          settings = {
            gopls = {
              analyses = {
                unusedparams = true,
              },
              staticcheck = true,
            },
          },
        },
        -- Python with uv package manager
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "basic",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
              },
            },
          },
        },
        -- For Astro
        astro = {},
        -- For Svelte
        svelte = {},
        -- For Deno
        denols = {
          root_dir = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc"),
        },
        -- For Bun/Node.js
        tsserver = {
          root_dir = require("lspconfig.util").root_pattern("package.json"),
          single_file_support = false,
        },
      },
    },
  },

  -- Add Mason ensure installed servers
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "pyright",
        "astro-language-server",
        "svelte-language-server",
        "deno",
        "typescript-language-server",
        "lua-language-server",
        "stylua",
        "shfmt",
        "shellcheck",
        "prettier",
      },
    },
  },

  -- Configure null-ls for formatters & linters
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}
      table.insert(opts.sources, nls.builtins.formatting.gofumpt)
      table.insert(opts.sources, nls.builtins.formatting.black)
    end,
  },
}
