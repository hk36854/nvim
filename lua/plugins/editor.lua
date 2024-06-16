return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require("neo-tree").setup({
        filesystem = {
          filtered_items = {
            show_hidden_count = true,
            hide_dotfiles = false,
            hide_gitignored = false,
            never_show = {
              ".DS_Store",
            },
          },
        },
      })
    end,
  },
}
