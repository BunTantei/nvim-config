return {
  -- LazyDocker integration
  {
    "mgierada/lazydocker.nvim",
    dependencies = {
      "akinsho/toggleterm.nvim",
    },
    config = function()
      require("lazydocker").setup({
        -- Optional settings
        path_to_lazydocker = "lazydocker", -- Path to lazydocker
        redis_key = "n", -- Key to see redis info
        compose_key = "c", -- Key to see docker-compose info
        docker_key = "d", -- Key to toggle to docker mode
      })

      -- Set up keybinding to open LazyDocker
      vim.keymap.set("n", "<leader>ld", function()
        require("lazydocker").open()
      end, { desc = "Open LazyDocker" })
    end,
  },
}
