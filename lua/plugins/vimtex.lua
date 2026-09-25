-- File: lua/plugins/latex.lua
return {
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_view_general_viewer = "C:\\Users\\feder\\AppData\\Local\\SumatraPDF\\SumatraPDF.exe"
      vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          pcall(vim.fn.serverstart, "127.0.0.1:11989")
        end,
      })
    end,
  },
}
