return {
  {
    "HakonHarnes/img-clip.nvim",
    event = "VeryLazy",
    opts = {
      default = {
        dir_path = "assets", -- Salverà le immagini in una cartella "assets"
      },
    },
    keys = {
      -- Crea in automatico la scorciatoia Spazio + i
      { "<leader>i", "<cmd>PasteImage<cr>", desc = "Incolla Immagine" },
    },
  },
}
