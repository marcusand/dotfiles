return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter",
      ["<C-l>"] = {
        function(cmp)
          cmp.show()
        end,
      },
      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
    },
    completion = {
      accept = {
        auto_brackets = {
          enabled = false,
        },
      },
    },
    sources = {
      providers = {
        copilot = {
          score_offset = 0,
        },
      },
    },
  },
}
