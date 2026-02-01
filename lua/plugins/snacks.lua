return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      -- This global hidden = true helps some pickers, but files/explorer often need explicit overrides
      hidden = true,
      sources = {
        explorer = {
          hidden = true, -- for the sidebar explorer (<leader>e)
          -- ignored = true,  -- uncomment if you ALSO want git-ignored files visible (e.g. node_modules)
        },
        files = {
          hidden = true, -- for find_files / <leader><space> or <leader>ff
          -- ignored = true,  -- uncomment if you want git-ignored files in search results too
        },
      },
    },
  },
}
