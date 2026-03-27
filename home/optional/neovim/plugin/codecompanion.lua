require("codecompanion").setup({

  opts = {
    log_level = "DEBUG",
  },

  display = {
    action_palette = {
      width = 95,
      height = 10,
      prompt = "Prompt ",
      provider = "fzf_lua",
      opts = {
        show_preset_actions = true,
        show_preset_prompts = true,
        title = "CodeCompanion actions",
      },
    },
  },

  adapters = {
    http = {
      openai_responses = function()
        return require("codecompanion.adapters").extend("openai_responses", {
          -- REMOVE api_key
          env = {
            -- Leave empty so it triggers login flow
          },

          -- Ensure login-based auth is enabled
          auth = {
            type = "oauth"  -- this enables OpenAI login flow
          },
        })
      end,
    },
  },

  interactions = {
    chat = {
      adapter = "openai_responses",
    },
    inline = {
      adapter = "openai_responses",
    },
  },
})
