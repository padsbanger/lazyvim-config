-- Show dotfiles / hidden files by default in neo-tree
-- (you can still toggle them with `H`)
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- shows the count of hidden items at the bottom
        show_hidden_count = true,
        hide_dotfiles = false, -- ← this is the key line: false = show dotfiles
        hide_gitignored = true, -- keep ignoring .gitignore'd files (recommended)
        hide_by_name = {
          -- optionally always hide these regardless
          -- ".git",
          -- ".DS_Store",
        },
        never_show = {
          -- never show these even when visible = true
          -- ".git",
        },
      },
    },
  },
}
