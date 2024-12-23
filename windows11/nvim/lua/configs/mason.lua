dofile(vim.g.base46_cache .. "mason")

return {
  PATH = "skip",
  -- PATH = "append",

  ui = {
    icons = {
      package_pending = " ",
      package_installed = " ",
      package_uninstalled = " ",
    },
  },

  max_concurrent_installers = 10,

  ensure_installed = {
    -- lsp
    "lua-language-server",
    "html-lsp",
    "css-lsp",
    "eslint-lsp",
    "intelephense",
    "rust-analyzer",
    "pyright",
    "clangd",

    -- dap
    "codelldb",

    -- linter
    "phpcs",
    "luacheck",

    -- formatter
    "stylua",
    "prettier",
    "php-cs-fixer",
    "blade-formatter",
    "black",
    "isort",
    "clang-format",
  },
}
