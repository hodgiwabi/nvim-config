return {
  "folke/zen-mode.nvim",
  lazy = false,
  opts = {
    window = {
      backdrop = 1,
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
        enabled = false,
        font = "+8",
      },
      gitsigns = {
        enabled = false,
      },
    },
  },
}
