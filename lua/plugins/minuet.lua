vim.env.OLLAMA_API_KEY = "TERM"

return {
  {
    "milanglacier/minuet-ai.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      request_timeout = 7000,
      notify = false,

      -- AUMENTA IL CONTESTO: Quante porzioni del tuo file vengono inviate a Ollama
      context_window = 2048,

      provider = "openai_fim_compatible",
      provider_options = {
        openai_fim_compatible = {
          api_key = "OLLAMA_API_KEY",
          name = "Ollama",
          end_point = "http://127.0.0.1:11434/v1/completions",

          -- CAMBIA IL MODELLO QUI (se hai scaricato la versione 3b o 7b)
          model = "qwen2.5-coder:3b-base",
          stream = false,
          optional = {
            -- AUMENTA I TOKEN: Permette a Ollama di scrivere blocchi di codice più lunghi
            max_tokens = 512,
            top_p = 0.1,
          },
        },
      },
    },
  },

  {
    "saghen/blink.cmp",
    optional = true,
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      opts.sources.default = opts.sources.default or { "lsp", "path", "snippets", "buffer" }

      if not vim.tbl_contains(opts.sources.default, "minuet") then
        table.insert(opts.sources.default, "minuet")
      end

      opts.sources.providers = opts.sources.providers or {}
      opts.sources.providers.minuet = {
        name = "minuet",
        module = "minuet.blink",
        score_offset = 100,
        async = true,
      }

      opts.completion = opts.completion or {}
      opts.completion.ghost_text = {
        enabled = true,
      }
    end,
  },
}
