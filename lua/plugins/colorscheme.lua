return {
  -- Set default colorscheme (you had gruvbox set as default)
  { "LazyVim/LazyVim", opts = { colorscheme = "everforest" } },

  -- Enhanced Catppuccin with latest features
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = { light = "latte", dark = "mocha" },
      transparent_background = false,
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = true,
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      color_overrides = {},
      custom_highlights = {},
      default_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        -- Add more integrations as needed
      },
    },
  },

  -- Enhanced Gruvbox with material variant
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    name = "gruvbox",
    opts = {
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true,
      contrast = "hard", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = false,
    },
  },

  -- Gruvbox Material (Alternative modern gruvbox)
  {
    "sainnhe/gruvbox-material",
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = "medium" -- 'hard', 'medium', 'soft'
      vim.g.gruvbox_material_foreground = "material" -- 'material', 'mix', 'original'
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_diagnostic_text_highlight = 1
      vim.g.gruvbox_material_diagnostic_line_highlight = 1
      vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
      vim.g.gruvbox_material_current_word = "grey background"
      vim.g.gruvbox_material_better_performance = 1
    end,
  },

  -- Enhanced Kanagawa
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    opts = {
      compile = false,
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,
      dimInactive = false,
      terminalColors = true,
      colors = {
        palette = {},
        theme = {
          wave = {},
          lotus = {},
          dragon = {},
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
      overrides = function(colors)
        local theme = colors.theme
        return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
          -- Dark completion (popup) menu
          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1, blend = vim.o.pumblend },
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = theme.ui.bg_m1 },
          PmenuThumb = { bg = theme.ui.bg_p2 },
        }
      end,
      theme = "wave",
      background = {
        dark = "wave",
        light = "lotus",
      },
    },
  },

  -- Enhanced Rose Pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    opts = {
      variant = "auto", -- auto, main, moon, dawn
      dark_variant = "main",
      dim_inactive_windows = false,
      extend_background_behind_borders = true,
      enable = {
        terminal = true,
        legacy_highlights = true,
        migrations = true,
      },
      styles = {
        bold = true,
        italic = true,
        transparency = false,
      },
      groups = {
        border = "muted",
        link = "iris",
        panel = "surface",
        error = "love",
        hint = "iris",
        info = "foam",
        note = "pine",
        todo = "rose",
        warn = "gold",
        git_add = "foam",
        git_change = "rose",
        git_delete = "love",
        git_dirty = "rose",
        git_ignore = "muted",
        git_merge = "iris",
        git_rename = "pine",
        git_stage = "iris",
        git_text = "rose",
        git_untracked = "subtle",
      },
      highlight_groups = {
        Comment = { fg = "foam", italic = true },
        VertSplit = { fg = "muted", bg = "muted" },
      },
    },
  },

  -- Enhanced Everforest
  {
    "sainnhe/everforest",
    priority = 1000,
    config = function()
      vim.g.everforest_background = "medium" -- 'hard', 'medium', 'soft'
      vim.g.everforest_better_performance = 1
      vim.g.everforest_enable_italic = 1
      vim.g.everforest_disable_italic_comment = 0
      vim.g.everforest_diagnostic_text_highlight = 1
      vim.g.everforest_diagnostic_line_highlight = 1
      vim.g.everforest_diagnostic_virtual_text = "colored"
      vim.g.everforest_current_word = "grey background"
      vim.g.everforest_sign_column_background = "none"
      vim.g.everforest_spell_foreground = "none"
      vim.g.everforest_ui_contrast = "low" -- 'low', 'high'
      vim.g.everforest_show_eob = 1
      vim.g.everforest_float_style = "bright" -- 'bright', 'dim'
    end,
  },

  -- Enhanced Moonfly
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.moonflyCursorColor = true
      vim.g.moonflyItalics = true
      vim.g.moonflyNormalFloat = true
      vim.g.moonflyTerminalColors = true
      vim.g.moonflyUndercurls = true
      vim.g.moonflyUnderlineMatchParen = true
      vim.g.moonflyWinSeparator = 2
      vim.g.moonflyVirtualTextColor = true
    end,
  },

  -- Enhanced Oxocarbon
  {
    "nyoom-engineering/oxocarbon.nvim",
    name = "oxocarbon",
    lazy = false,
    priority = 1000,
  },

  -- Keep your existing popular themes
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      style = "storm", -- storm, moon, night, day
      light_style = "day",
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "dark", -- style for sidebars
        floats = "dark", -- style for floating windows
      },
      sidebars = { "qf", "help" },
      day_brightness = 0.3,
      hide_inactive_statusline = false,
      dim_inactive = false,
      lualine_bold = false,
      on_colors = function(colors) end,
      on_highlights = function(highlights, colors) end,
    },
  },
  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    opts = {
      options = {
        compile_path = vim.fn.stdpath("cache") .. "/nightfox",
        compile_file_suffix = "_compiled",
        transparent = false,
        terminal_colors = true,
        dim_inactive = false,
        module_default = true,
        colorblind = {
          enable = false,
          simulate_only = false,
          severity = {
            protan = 0,
            deutan = 0,
            tritan = 0,
          },
        },
        styles = {
          comments = "italic",
          conditionals = "NONE",
          constants = "NONE",
          functions = "NONE",
          keywords = "NONE",
          numbers = "NONE",
          operators = "NONE",
          strings = "NONE",
          types = "NONE",
          variables = "NONE",
        },
        inverse = {
          match_paren = false,
          visual = false,
          search = false,
        },
      },
      palettes = {},
      specs = {},
      groups = {},
    },
  },
  {
    "projekt0n/github-nvim-theme",
    priority = 1000,
    config = function()
      require("github-theme").setup({
        options = {
          compile_path = vim.fn.stdpath("cache") .. "/github-theme",
          compile_file_suffix = "_compiled",
          hide_end_of_buffer = true,
          hide_nc_statusline = true,
          transparent = false,
          terminal_colors = true,
          dim_inactive = false,
          module_default = true,
          styles = {
            comments = "italic",
            functions = "NONE",
            keywords = "NONE",
            variables = "NONE",
            conditionals = "NONE",
            constants = "NONE",
            numbers = "NONE",
            operators = "NONE",
            strings = "NONE",
            types = "NONE",
          },
          inverse = {
            match_paren = false,
            visual = false,
            search = false,
          },
          darken = {
            floats = false,
            sidebars = {
              enable = true,
              list = {},
            },
          },
        },
        palettes = {},
        specs = {},
        groups = {},
      })
    end,
  },

  -- Cyberdream - A futuristic theme
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
      italic_comments = true,
      hide_fillchars = false,
      borderless_telescope = true,
      terminal_colors = true,
      cache = false,
      theme = {
        variant = "default", -- use "light" for the light variant
        highlights = {
          -- Highlight groups to override, adding new groups is also possible
          -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values

          -- Example:
          Comment = { fg = "#696969", bg = "NONE", italic = true },
        },
        -- Override a highlight group entirely using the color palette
        overrides = function(colors) -- NOTE: This function nullifies the `highlights` option
          -- Example:
          return {
            Comment = { fg = colors.green, bg = "NONE", italic = true },
            ["@property"] = { fg = colors.magenta, bold = true },
          }
        end,
        -- Override a color entirely
        colors = {
          -- For a list of colors see `lua/cyberdream/colours.lua`
          -- Example:
          bg = "#000000",
          green = "#00ff00",
          magenta = "#ff00ff",
        },
      },
      extensions = {
        telescope = true,
        notify = true,
        mini = true,
        -- and many more...
      },
    },
  },

  -- Melange - A warm, cozy theme
  {
    "savq/melange-nvim",
    priority = 1000,
  },

  -- Sonokai - High contrast theme
  {
    "sainnhe/sonokai",
    priority = 1000,
    config = function()
      vim.g.sonokai_style = "default" -- 'default', 'atlantis', 'andromeda', 'shusia', 'maia', 'espresso'
      vim.g.sonokai_enable_italic = 1
      vim.g.sonokai_disable_italic_comment = 0
      vim.g.sonokai_diagnostic_text_highlight = 1
      vim.g.sonokai_diagnostic_line_highlight = 1
      vim.g.sonokai_diagnostic_virtual_text = "colored"
      vim.g.sonokai_current_word = "grey background"
      vim.g.sonokai_better_performance = 1
    end,
  },

  -- Dracula - The classic vampire theme
  {
    "Mofiqul/dracula.nvim",
    priority = 1000,
    opts = {
      colors = {
        bg = "#282A36",
        fg = "#F8F8F2",
        selection = "#44475A",
        comment = "#6272A4",
        red = "#FF5555",
        orange = "#FFB86C",
        yellow = "#F1FA8C",
        green = "#50fa7b",
        purple = "#BD93F9",
        cyan = "#8BE9FD",
        pink = "#FF79C6",
        bright_red = "#FF6E6E",
        bright_green = "#69FF94",
        bright_yellow = "#FFFFA5",
        bright_blue = "#D6ACFF",
        bright_magenta = "#FF92DF",
        bright_cyan = "#A4FFFF",
        bright_white = "#FFFFFF",
        menu = "#21222C",
        visual = "#3E4452",
        gutter_fg = "#4B5263",
        nontext = "#3B4048",
        white = "#ABB2BF",
        black = "#191A21",
      },
      show_end_of_buffer = true,
      transparent_bg = false,
      lualine_bg_color = "#44475a",
      italic_comment = true,
      overrides = {},
    },
  },

  -- Flow - A modern, minimal theme
  {
    "0xstepit/flow.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false, -- Set transparent background.
      fluo_color = "pink", --  Fluo color: pink, yellow, orange, or green.
      mode = "normal", -- Intensity of the palette: normal, bright, desaturate, or dark.
      aggressive_spell = false, -- Display colors for spell check.
    },
  },
}
