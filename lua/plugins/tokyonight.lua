return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000, -- Garante que seja carregado cedo
  config = function()
    require("tokyonight").setup {
      style = "moon",
      transparent = false,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    }
    -- Dark
    vim.cmd.colorscheme "tokyonight"
  end,
}
