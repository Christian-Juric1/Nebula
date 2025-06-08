-- lua/lsp/mason.lua

require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "eslint",
    "jsonls",
    "lua_ls",
  },
  automatic_installation = true,
})
