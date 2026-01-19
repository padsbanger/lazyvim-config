-- lua/plugins/love2d.lua
return {
  {
    "S1M0N38/love2d.nvim",
    -- lazy-load only when opening .lua files in a Love2D project (or force-load with event = "VeryLazy")
    ft = "lua",
    version = "*",  -- recommended: always latest stable
    dependencies = {
      "neovim/nvim-lspconfig",  -- already in LazyVim
    },
    opts = {
      -- change if your love executable is not called 'love'
      -- love_cmd = "love",
      -- path to your love game folder (optional – can override per-project)
      -- game_path = vim.fn.getcwd(),
    },
    keys = {
      -- default mappings (you can change them)
      { "<leader>lr", "<cmd>LoveRun<cr>",         desc = "Love Run" },
      { "<leader>lk", "<cmd>LoveKill<cr>",        desc = "Love Kill" },
      { "<leader>ll", "<cmd>LoveRestart<cr>",     desc = "Love Restart" },
    },
  },
}