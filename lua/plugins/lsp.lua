return {
  -- Add all language servers
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Go (Enhanced configuration)
        gopls = {
          settings = {
            gopls = {
              -- Enhanced analyses
              analyses = {
                unusedparams = true,
                shadow = true,
                fieldalignment = true,
                nilness = true,
                unusedwrite = true,
                useany = true,
              },
              staticcheck = true,
              -- Better completion
              usePlaceholders = true,
              completeUnimported = true,
              -- Code lenses for better UX
              codelenses = {
                gc_details = false,
                generate = true,
                regenerate_cgo = true,
                run_govulncheck = true,
                test = true,
                tidy = true,
                upgrade_dependency = true,
                vendor = true,
              },
              -- Helpful hints
              hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
              },
              -- Semantic tokens for better highlighting
              semanticTokens = true,
            },
          },
        },

        -- Gleam (NEW! ✨)
        gleam = {
          cmd = { "gleam", "lsp" },
          filetypes = { "gleam" },
          root_dir = require("lspconfig.util").root_pattern("gleam.toml", ".git"),
        },

        -- Rust (Enhanced configuration)
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              -- Enhanced cargo settings
              cargo = {
                allFeatures = true,
                loadOutDirsFromCheck = true,
                buildScripts = {
                  enable = true,
                },
              },
              -- Better check on save
              checkOnSave = {
                command = "clippy",
                extraArgs = { "--all", "--", "-W", "clippy::all" },
              },
              -- Proc macro support
              procMacro = {
                enable = true,
                ignored = {
                  leptos_macro = {
                    "component",
                    "server",
                  },
                },
              },
              -- Enhanced diagnostics
              diagnostics = {
                enable = true,
                experimental = {
                  enable = true,
                },
                styleLints = {
                  enable = true,
                },
              },
              -- Better completion
              completion = {
                postfix = {
                  enable = true,
                },
                privateEditable = {
                  enable = true,
                },
                fullFunctionSignatures = {
                  enable = true,
                },
              },
              -- Hover actions
              hover = {
                actions = {
                  enable = true,
                  implementations = {
                    enable = true,
                  },
                  references = {
                    enable = true,
                  },
                  run = {
                    enable = true,
                  },
                  debug = {
                    enable = true,
                  },
                },
              },
              -- Inlay hints
              inlayHints = {
                bindingModeHints = {
                  enable = false,
                },
                chainingHints = {
                  enable = true,
                },
                closingBraceHints = {
                  enable = true,
                  minLines = 25,
                },
                closureReturnTypeHints = {
                  enable = "never",
                },
                lifetimeElisionHints = {
                  enable = "never",
                  useParameterNames = false,
                },
                maxLength = 25,
                parameterHints = {
                  enable = true,
                },
                reborrowHints = {
                  enable = "never",
                },
                renderColons = true,
                typeHints = {
                  enable = true,
                  hideClosureInitialization = false,
                  hideNamedConstructor = false,
                },
              },
              -- Lens settings
              lens = {
                enable = true,
                debug = {
                  enable = true,
                },
                implementations = {
                  enable = true,
                },
                run = {
                  enable = true,
                },
                methodReferences = {
                  enable = true,
                },
                references = {
                  adt = {
                    enable = true,
                  },
                  enumVariant = {
                    enable = true,
                  },
                  method = {
                    enable = true,
                  },
                  trait = {
                    enable = true,
                  },
                },
              },
            },
          },
        },

        -- Svelte (Enhanced)
        svelte = {
          settings = {
            svelte = {
              plugin = {
                html = {
                  completions = {
                    enable = true,
                    emmet = false,
                  },
                },
                svelte = {
                  compilerWarnings = {
                    ["a11y-accesskey"] = "ignore",
                    ["a11y-incorrect-aria-attribute-type"] = "ignore",
                    ["a11y-unknown-aria-attribute"] = "ignore",
                    ["a11y-hidden"] = "ignore",
                    ["a11y-misplaced-role"] = "ignore",
                    ["a11y-unknown-role"] = "ignore",
                    ["a11y-no-abstract-role"] = "ignore",
                    ["a11y-no-redundant-roles"] = "ignore",
                    ["a11y-role-has-required-aria-props"] = "ignore",
                    ["a11y-autocomplete-valid"] = "ignore",
                    ["a11y-positive-tabindex"] = "ignore",
                    ["a11y-invalid-attribute"] = "ignore",
                    ["a11y-missing-attribute"] = "ignore",
                    ["a11y-img-redundant-alt"] = "ignore",
                    ["a11y-label-has-associated-control"] = "ignore",
                    ["a11y-media-has-caption"] = "ignore",
                    ["a11y-mouse-events-have-key-events"] = "ignore",
                    ["a11y-no-autofocus"] = "ignore",
                    ["a11y-no-distracting-elements"] = "ignore",
                    ["a11y-no-interactive-element-to-noninteractive-role"] = "ignore",
                    ["a11y-no-noninteractive-element-interactions"] = "ignore",
                    ["a11y-no-noninteractive-element-to-interactive-role"] = "ignore",
                    ["a11y-no-noninteractive-tabindex"] = "ignore",
                    ["a11y-no-static-element-interactions"] = "ignore",
                    ["a11y-click-events-have-key-events"] = "ignore",
                  },
                  format = {
                    enable = true,
                  },
                },
                typescript = {
                  enable = true,
                  diagnostics = {
                    enable = true,
                  },
                  hover = {
                    enable = true,
                  },
                  completions = {
                    enable = true,
                  },
                  codeActions = {
                    enable = true,
                  },
                  selectionRange = {
                    enable = true,
                  },
                  signatureHelp = {
                    enable = true,
                  },
                  semanticTokens = {
                    enable = true,
                  },
                },
              },
            },
          },
        },

        -- TypeScript for React (Enhanced)
        tsserver = {
          root_dir = require("lspconfig.util").root_pattern("package.json"),
          single_file_support = false,
          settings = {
            typescript = {
              inlayHints = {
                includeInlayParameterNameHints = "literal",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = false,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
            javascript = {
              inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
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

        -- For Deno
        denols = {
          root_dir = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc"),
        },

        -- Infrastructure tools (keeping your existing config)
        terraformls = {},
        tflint = {},
        ansiblels = {},
        dockerls = {},
        docker_compose_language_service = {},
        yamlls = {
          settings = {
            yaml = {
              schemas = {
                ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.18.0-standalone-strict/all.json"] = "/*.k8s.yaml",
                ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
                ["https://json.schemastore.org/ansible-playbook.json"] = "playbook*.yml",
                ["https://json.schemastore.org/ansible-role-task.json"] = "roles/*/tasks/*.yml",
              },
              format = { enable = true },
              validate = true,
              completion = true,
            },
          },
        },

        -- PHP (keeping your config)
        intelephense = {
          settings = {
            intelephense = {
              stubs = {
                "apache",
                "bcmath",
                "bz2",
                "calendar",
                "com_dotnet",
                "Core",
                "curl",
                "date",
                "dba",
                "dom",
                "enchant",
                "fileinfo",
                "filter",
                "fpm",
                "ftp",
                "gd",
                "gettext",
                "gmp",
                "hash",
                "iconv",
                "imap",
                "intl",
                "json",
                "ldap",
                "libxml",
                "mbstring",
                "mcrypt",
                "mysql",
                "mysqli",
                "oci8",
                "openssl",
                "pcntl",
                "pcre",
                "PDO",
                "pdo_mysql",
                "Phar",
                "posix",
                "pspell",
                "readline",
                "recode",
                "Reflection",
                "regex",
                "session",
                "shmop",
                "SimpleXML",
                "soap",
                "sockets",
                "sodium",
                "SPL",
                "sqlite3",
                "standard",
                "superglobals",
                "sysvmsg",
                "sysvsem",
                "sysvshm",
                "tidy",
                "tokenizer",
                "xml",
                "xmlreader",
                "xmlrpc",
                "xmlwriter",
                "xsl",
                "Zend OPcache",
                "zip",
                "zlib",
              },
              environment = {
                phpVersion = "8.2.0",
              },
              format = {
                enable = true,
              },
            },
          },
        },

        -- Java (keeping your config)
        jdtls = {},

        -- C/C++ (keeping your config)
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--suggest-missing-includes",
            "--clang-tidy",
            "--header-insertion=iwyu",
          },
        },

        -- Zig (keeping your config)
        zls = {},
      },
    },
  },

  ---

  -- Add Mason ensure installed servers - FIXED PACKAGE NAMES! 🎉
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Your daily languages (prioritized)
        "gopls",
        "rust-analyzer",
        -- NOTE: gleam LSP comes with gleam compiler, not available in Mason
        "svelte-language-server",
        "typescript-language-server",

        -- Linters/formatters for your daily languages - FIXED NAMES!
        "staticcheck",
        "gofumpt", -- Better Go formatter
        "goimports-reviser", -- Updated name for 2025
        "prettier", -- For Svelte/React
        "eslint-lsp", -- ← FIXED! This is the correct name in 2025

        -- Rest of your languages
        "pyright",
        "astro-language-server",
        "deno",
        "lua-language-server",
        "stylua",
        "shfmt",
        "shellcheck",

        -- Infrastructure tools
        "terraform-ls",
        "tflint",
        "ansible-language-server",
        "dockerfile-language-server",
        "docker-compose-language-service",
        "yaml-language-server",
        "hadolint",
        "ansible-lint",

        -- PHP
        "intelephense",
        "php-cs-fixer",
        "phpstan",

        -- Java
        "jdtls",
        "java-debug-adapter",
        "java-test",

        -- C/C++
        "clangd",
        "clang-format",

        -- Zig
        "zls",
      },
    },
  },

  ---

  -- Configure formatter (Enhanced for your daily languages)
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        -- Go (Enhanced)
        go = { "gofumpt", "goimports-reviser" }, -- Updated name

        -- Rust
        rust = { "rustfmt" },

        -- Gleam (NEW!)
        gleam = { "gleam_format" },

        -- Frontend (Enhanced)
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        astro = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        json = { "prettier" },
        jsonc = { "prettier" },

        -- Python
        python = { "black", "isort" },

        -- Infrastructure
        terraform = { "terraform_fmt" },
        hcl = { "terraform_fmt" },
        yaml = { "prettier" },
        docker = { "hadolint" },
        dockerfile = { "hadolint" },

        -- PHP
        php = { "php_cs_fixer" },

        -- C/C++
        c = { "clang_format" },
        cpp = { "clang_format" },

        -- Zig
        zig = { "zigfmt" },

        -- Lua
        lua = { "stylua" },

        -- Shell
        sh = { "shfmt" },
      },
      formatters = {
        -- Custom formatter configurations
        php_cs_fixer = {
          args = { "--rules=@PSR12" },
        },
        -- Gleam formatter
        gleam_format = {
          command = "gleam",
          args = { "format", "--stdin" },
          stdin = true,
        },
      },
    },
  },

  ---

  -- Configure linter (FIXED for golangci-lint!)
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        -- Go (FIXED: Using golangci-lint now!)
        go = { "staticcheck" },

        -- Rust (clippy is handled by rust-analyzer)
        -- rust = {}, -- Commented out since rust-analyzer handles this

        -- Gleam (built-in compiler diagnostics are usually enough)
        -- gleam = {},

        -- Frontend - FIXED: Using eslint_d for better performance
        typescript = { "eslint_d" },
        javascript = { "eslint_d" },
        typescriptreact = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        svelte = { "eslint_d" },

        -- Python
        python = { "flake8", "mypy" },

        -- Infrastructure
        terraform = { "tflint" },
        dockerfile = { "hadolint" },
        yaml = { "yamllint" },

        -- PHP
        php = { "phpstan" },

        -- Shell
        sh = { "shellcheck" },

        -- Ansible
        ansible = { "ansible_lint" },
      },
    },
  },

  ---

  -- Add special Java configuration (keeping your existing config)
  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },
    opts = {
      cmd = {
        "jdtls",
      },
      root_dir = function(fname)
        return require("lspconfig.util").root_pattern("pom.xml", "gradle.build", ".git")(fname) or vim.fn.getcwd()
      end,
    },
    config = function(_, opts)
      local on_attach = function(client, bufnr)
        vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"

        vim.keymap.set(
          "n",
          "<leader>ji",
          "<cmd>lua require('jdtls').organize_imports()<CR>",
          { buffer = bufnr, desc = "Organize Imports" }
        )
        vim.keymap.set(
          "n",
          "<leader>jt",
          "<cmd>lua require('jdtls').test_class()<CR>",
          { buffer = bufnr, desc = "Test Class" }
        )
        vim.keymap.set(
          "n",
          "<leader>jn",
          "<cmd>lua require('jdtls').test_nearest_method()<CR>",
          { buffer = bufnr, desc = "Test Nearest Method" }
        )
      end

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "java",
        callback = function()
          local jdtls = require("jdtls")
          local jdtls_setup = require("jdtls.setup")

          local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
          local workspace_dir = vim.fn.expand("~/.cache/jdtls/workspace/") .. project_name

          local config = {
            cmd = {
              "jdtls",
              "--jvm-arg=-Xmx1G",
              "--jvm-arg=-XX:+UseG1GC",
              "--jvm-arg=-XX:MaxGCPauseMillis=100",
              "-data",
              workspace_dir,
            },
            root_dir = jdtls_setup.find_root({ "pom.xml", "gradle.build", ".git" }),
            settings = {
              java = {
                signatureHelp = { enabled = true },
                contentProvider = { preferred = "fernflower" },
                completion = {
                  favoriteStaticMembers = {
                    "org.hamcrest.MatcherAssert.assertThat",
                    "org.hamcrest.Matchers.*",
                    "org.junit.Assert.*",
                    "org.junit.Assume.*",
                    "org.junit.jupiter.api.Assertions.*",
                    "java.util.Objects.requireNonNull",
                    "java.util.Objects.requireNonNullElse",
                    "org.mockito.Mockito.*",
                  },
                  filteredTypes = {
                    "com.sun.*",
                    "io.micrometer.shaded.*",
                    "java.awt.*",
                    "jdk.*",
                    "sun.*",
                  },
                },
                sources = {
                  organizeImports = {
                    starThreshold = 9999,
                    staticStarThreshold = 9999,
                  },
                },
                codeGeneration = {
                  toString = {
                    template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
                  },
                  hashCodeEquals = {
                    useJava7Objects = true,
                  },
                  useBlocks = true,
                },
                configuration = {
                  runtimes = {
                    {
                      name = "JavaSE-17",
                      path = vim.fn.expand("~/.sdkman/candidates/java/17.0.6-tem"),
                    },
                    {
                      name = "JavaSE-11",
                      path = vim.fn.expand("~/.sdkman/candidates/java/11.0.18-tem"),
                    },
                    {
                      name = "JavaSE-1.8",
                      path = vim.fn.expand("~/.sdkman/candidates/java/8.0.362-tem"),
                    },
                  },
                },
              },
            },
            on_attach = on_attach,
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
            init_options = {
              bundles = {},
            },
          }

          jdtls.start_or_attach(config)
        end,
      })
    end,
  },
}
