return {
  { "echasnovski/mini.comment", enabled = false }, -- disable default

  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    opts = {
      opleader = {
        line = "gc", -- line comment (same as mini.comment)
        block = "gb", -- ← block comment ← what most people want!
      },
      toggler = {
        line = "gcc",
        block = "gbc",
      },
    },
  },
}
