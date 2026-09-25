-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- File: lua/config/autocmds.lua

-- Intercetta l'apertura di qualsiasi file .pdf
vim.api.nvim_create_autocmd("BufReadCmd", {
  pattern = "*.pdf",
  callback = function(opts)
    -- Inserisci qui il percorso corretto di SumatraPDF
    local sumatra_path = "C:\\Users\\feder\\AppData\\Local\\SumatraPDF\\SumatraPDF.exe"

    -- Avvia Sumatra in modo indipendente (detach = true) passando il percorso del PDF
    vim.fn.jobstart({ sumatra_path, opts.match }, { detach = true })

    -- Chiude il buffer di testo illeggibile che Neovim aveva provato ad aprire
    vim.api.nvim_buf_delete(opts.buf, { force = true })
  end,
})
