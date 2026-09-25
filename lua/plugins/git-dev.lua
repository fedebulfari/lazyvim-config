return {
  "moyiz/git-dev.nvim",
  event = "VeryLazy",
  opts = {
    ephemeral = true, -- Automatically clean up when you close Neovim
  },
  keys = {
    {
      "<leader>go",
      function()
        local repo = vim.fn.input("GitHub Repo (e.g. neovim/neovim): ")
        if repo ~= "" then
          require("git-dev").open(repo)
        end
      end,
      desc = "Open ephemeral GitHub repo",
    },
  },
}
