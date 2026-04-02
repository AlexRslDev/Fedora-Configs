return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
    config = function()
      vim.g.oxocarbon_background = "dark" -- wave | dragon | lotus --
      vim.g.oxocarbon_enable_italic = 0
      vim.g.oxocarbon_transparent_background = 0
    end,
  },
}
