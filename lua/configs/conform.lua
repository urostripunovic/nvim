local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports", "gofmt" },
    javascript = {
      "eslint_d",
      "prettier",
      "prettierd",
      "biome",
      "biome-check",
      stop_after_first = true,
      lsp_fallback = true,
    },
    typescript = {
      "eslint_d",
      "prettier",
      "prettierd",
      "biome",
      "biome-check",
      stop_after_first = true,
      lsp_fallback = true,
    },
    json = { "prettier", "biome", stop_after_first = true, lsp_fallback = true },
    css = { "prettier", "prettierd", stop_after_first = true, lsp_fallback = true },
    html = { "prettier", "prettierd", stop_after_first = true, lsp_fallback = true },
    ["*"] = { "codespell" },
    ["_"] = { "trim_whitespace" },
    yaml = { "yamlfix", "ansible-lint" },
    java = { "google-java-format" },
    tex = { "latexindent" },
    markdown = { "prettier" },
    sh = { "shfmt" },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
