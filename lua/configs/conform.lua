local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports", "gofmt" },
    javascript = { { "eslint_d", "prettier", "prettierd" }, { "biome", "biome-check" } },
    typescript = { { "eslint_d", "prettier", "prettierd" }, { "biome", "biome-check" } },
    json = { "prettier", "biome" },
    css = { { "prettier", "prettierd" } },
    html = { { "prettier", "prettierd" } },
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

