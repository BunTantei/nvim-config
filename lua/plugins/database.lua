return {
  -- Database UI and tools
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      "tpope/vim-dadbod",
      "kristijanhusak/vim-dadbod-completion",
    },
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
    init = function()
      -- Database connection settings
      vim.g.db_ui_save_location = vim.fn.stdpath("data") .. "/db_ui"
      vim.g.db_ui_use_nerd_fonts = 1

      -- Set up keybinding
      vim.keymap.set("n", "<leader>db", ":DBUIToggle<CR>", { desc = "Toggle DB UI" })

      -- Example connections (you'll want to update these with your actual credentials)
      vim.g.dbs = {
        dev_postgres = "postgresql://user:password@localhost:5432/dev_db",
        cockroach = "postgresql://user:password@localhost:26257/cockroach_db?sslmode=disable",
        sqlite = "sqlite:/path/to/your/database.sqlite",
      }
    end,
  },
}
