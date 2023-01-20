require("nvim-treesitter.configs").setup {
  textobjects = {
    lsp_interop = {
      enable = true,
      border = "rounded",
      peek_definition_code = {
        ["<leader>lo"] = "@function.outer",
        ["<leader>lp"] = "@class.outer",
      },
    },
  },
}
