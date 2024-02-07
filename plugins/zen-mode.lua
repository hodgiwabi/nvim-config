return {
  "folke/zen-mode.nvim",
  lazy = true,
  opts = {
    window = {
      backdrop = 1,
      width = 0.67,
      options = {
        number = false,
        relativenumber = false,
        foldcolumn = "0",
        cursorline = false,
        signcolumn = "no",
      },
    },
    plugins = {
      options = {
        enabled = false,
      },
      kitty = {
        enabled = true,
        font = "+8",
      },
      gitsigns = {
        enabled = false,
      },
    },
  },
}
