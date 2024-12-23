return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        -- "php",
        "php_only",
        "blade",
        "json",
        "rust",
        "python",
        "cpp",
        "bash",
      },
    },
    config = function(_, opts)
      vim.filetype.add {
        pattern = {
          [".*%.blade%.php"] = "blade",
        },
      }

      require("nvim-treesitter.configs").setup(opts)
      local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      parser_config.blade = {
        install_info = {
          url = "https://github.com/EmranMR/tree-sitter-blade",
          files = { "src/parser.c" },
          branch = "main",
        },
        filetype = "blade",
      }
    end,
  },
}
