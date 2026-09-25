return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
    },
    config = function()
      require("flutter-tools").setup({
        ui = {
          border = "rounded",
        },
        widget_guides = {
          enabled = true,
        },
      })
      -- Custom IDE Keybindings
      vim.keymap.set("n", "<leader>fr", ":FlutterReload<CR>", { desc = "Flutter Hot Reload" })
      vim.keymap.set("n", "<leader>fR", ":FlutterRestart<CR>", { desc = "Flutter Hot Restart" })
      vim.keymap.set("n", "<leader>fq", ":FlutterQuit<CR>", { desc = "Flutter Quit" })
    end,
  },
}
