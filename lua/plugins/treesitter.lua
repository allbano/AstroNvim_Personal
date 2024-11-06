-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "python",
      "lua",
      "vim",
      "bash",
      "c",
      "cpp",
      "rust",
      "html",
      "javascript",
      "typescript",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
