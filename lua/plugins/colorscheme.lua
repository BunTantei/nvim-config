return {
  -- Disable the default colorscheme
  { "LazyVim/LazyVim", opts = { colorscheme = "gruvbox" } },

  -- Add catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Make sure it loads first
    opts = {
      flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
      background = { light = "latte", dark = "mocha" },
      transparent_background = false,
      term_colors = true,
      dim_inactive = {
        enabled = false,
      },
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
    },
  },

  -- Add Gruvbox Retro theme family
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    name = "gruvbox",
    opts = {
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = false,
    },
  },

  -- Enhanced Kanagawa theme with all variants
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    opts = {
      compile = false, -- enable compilation
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false, -- do not set background color
      dimInactive = false, -- dim inactive window
      terminalColors = true, -- set terminal colors
      colors = { -- add/modify theme colors
        palette = {},
        theme = {
          wave = {},
          lotus = {},
          dragon = {},
          all = {},
        },
      },
      overrides = function(colors) -- add custom overrides
        return {}
      end,
      theme = "wave", -- Load "wave" theme when 'background' option is not set
      background = { -- set theme based on background
        dark = "wave", -- wave, lotus, dragon
        light = "lotus",
      },
    },
  },

  -- Enhanced Rose Pine with Dawn variant
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    opts = {
      variant = "auto", -- 'auto' | 'main' | 'moon' | 'dawn'
      dark_variant = "main", -- 'main' | 'moon'
      dim_inactive_windows = false,
      extend_background_behind_borders = true,
      styles = {
        bold = true,
        italic = true,
        transparency = false,
      },
      highlight_groups = {
        -- Custom highlight group colors
        Comment = { fg = "muted", italic = true },
      },
    },
  },

  -- Other themes you might want to try
  { "folke/tokyonight.nvim", priority = 1000 },
  { "EdenEast/nightfox.nvim", priority = 1000 },
  { "projekt0n/github-nvim-theme", priority = 1000 },
}
