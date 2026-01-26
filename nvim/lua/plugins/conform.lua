return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = { "biome", "prettier", stop_after_first = true },
      typescript = { "biome", "prettier", stop_after_first = true },
    },
  },
}
