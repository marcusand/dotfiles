return {
  "Saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter",
      ["<C-j>"] = {
        function(cmp)
          cmp.show()
        end,
      },
    },
  },
}
