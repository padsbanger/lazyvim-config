return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                -- Add any globals you use often (Love2D, vim, etc.)
                globals = { "vim", "love", "awesome", "hs" }, -- add more as needed
              },
            },
          },
        },
      },
    },
  },
}
