return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "markdown",
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "markdown" },
    },
  },
}
