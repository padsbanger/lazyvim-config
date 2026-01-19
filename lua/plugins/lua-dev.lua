-- lua/plugins/lua-dev.lua
return {

  -- 1. Must-have: already included in LazyVim since ~2024/2025
  -- { "folke/lazydev.nvim", ft = "lua" }   -- you already have this!

  -- 2. Optional but very strongly recommended
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        -- optional neovim runtime types
        { path = "lazy/neoconf.nvim/types" },
      },
    },
  },

  -- 3. Better Lua signature help & hover (very useful!)
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      table.insert(opts.sources, {
        name = "lazydev",
        group_index = 0, -- set group index to 0 to skip loading LuaLS completions
      })
    end,
  },

  -- 4. Awesome live Lua scratchpad / REPL (highly recommended!)
  {
    "rafcamlet/nvim-luapad",
    cmd = "Luapad",
    keys = {
      { "<leader>lp", "<cmd>Luapad<CR>", desc = "Lua Pad (scratch)" },
    },
    opts = {
      count_limit = 150000,
      error_indicator = true,
      on_init = function()
        vim.bo.modifiable = true
      end,
    },
  },

  -- 5. Very nice pretty quick & dirty Lua runner
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    init = function()
      vim.g.molten_output_win_max_height = 0.4
      vim.g.molten_virt_text_output = true
      vim.g.molten_auto_open_output = false
    end,
    keys = {
      { "<leader>mi", "<cmd>MoltenInit<CR>",           desc = "Molten Init" },
      { "<leader>ml", "<cmd>MoltenEvaluateLine<CR>",   desc = "Eval line" },
      { "<leader>mo", "<cmd>MoltenShowOutput<CR>",     desc = "Show output" },
    },
  },

  -- 6. Optional: nice Lua code snippets
  {
    "honza/vim-snippets", -- or any other snippet collection
    lazy = true,
  },

  -- 7. Bonus: very useful for debugging your config/plugins
  {
    "folke/which-key.nvim",
    optional = true,
    opts = {
      plugins = {
        spelling = { enabled = true },
        presets = {
          operators = false,
          motions = false,
          text_objects = false,
          windows = true,
          nav = true,
          z = true,
          g = true,
        },
      },
      -- show lua function help when you type e.g. vim.api.nvim_...
      show_help = true,
      show_keys = true,
    },
  },
}