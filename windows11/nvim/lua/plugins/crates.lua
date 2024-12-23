return {
  {
    "saecki/crates.nvim",
    tag = "stable",
    config = function()
      require("crates").setup {
        completion = {
          cpm = {
            enabled = true,
          },
        },
      }
      require("cmp").setup.buffer {
        sources = { { name = "crates" } },
      }
    end,
  },
}
