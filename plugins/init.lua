return {
  ["goolord/alpha-nvim"] = { disable = false },
  ["max397574/better-escape.nvim"] = { disable = false },
  ["andymass/vim-matchup"] = { after = "nvim-treesitter" },
  ["arsham/indent-tools.nvim"] = {
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "indent-tools.nvim") end,
    requires = { "arsham/arshlib.nvim", module = "arshlib" },
    config = function() require "user.plugins.indent-tools" end,
  },
  ["danymat/neogen"] = {
    requires = "nvim-treesitter/nvim-treesitter",
    module = "neogen",
    cmd = "Neogen",
    config = function() require "user.plugins.neogen" end,
  },
  ["EdenEast/nightfox.nvim"] = { module = "nightfox", config = function() require "user.plugins.nightfox" end },
  ["ethanholz/nvim-lastplace"] = {
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "nvim-lastplace") end,
    config = function() require "user.plugins.nvim-lastplace" end,
  },
  ["hrsh7th/cmp-calc"] = { after = "nvim-cmp", config = function() require "user.plugins.cmp-calc" end },
  ["hrsh7th/cmp-emoji"] = { after = "nvim-cmp", config = function() require "user.plugins.cmp-emoji" end },
  ["jose-elias-alvarez/typescript.nvim"] = {
    after = "mason-lspconfig.nvim",
    config = function() require "user.plugins.typescript" end,
  },
  ["junegunn/vim-easy-align"] = {
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "vim-easy-align") end,
  },
  ["machakann/vim-sandwich"] = {
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "vim-sandwich") end,
  },
  ["mxsdev/nvim-dap-vscode-js"] = {
    after = "mason-nvim-dap.nvim",
    config = function() require "user.plugins.nvim-dap-vscode-js" end,
  },
  ["nanotee/sqls.nvim"] = { module = "sqls" },
  ["nvim-telescope/telescope-file-browser.nvim"] = {
    after = "telescope.nvim",
    config = function() require "user.plugins.telescope-file-browser" end,
  },
  ["nvim-telescope/telescope-hop.nvim"] = {
    after = "telescope.nvim",
    config = function() require "user.plugins.telescope-hop" end,
  },
  ["nvim-telescope/telescope-media-files.nvim"] = {
    after = "telescope.nvim",
    config = function() require "user.plugins.telescope-media-files" end,
  },
  ["nvim-telescope/telescope-project.nvim"] = {
    after = "telescope.nvim",
    config = function() require "user.plugins.telescope-project" end,
  },
  ["nvim-treesitter/nvim-treesitter-textobjects"] = {
    after = "nvim-treesitter",
    config = function() require "user.plugins.nvim-treesitter-textobjects" end,
  },
  ["lvimuser/lsp-inlayhints.nvim"] = {
    module = "lsp-inlayhints",
    config = function() require "user.plugins.lsp-inlayhints" end,
  },
  ["sindrets/diffview.nvim"] = {
    opt = true,
    setup = function() table.insert(astronvim.git_plugins, "diffview.nvim") end,
    config = function() require "user.plugins.diffview" end,
  },
  ["theHamsta/nvim-dap-virtual-text"] = {
    after = "nvim-dap",
    config = function() require "user.plugins.nvim-dap-virtual-text" end,
  },
  ["ziontee113/syntax-tree-surfer"] = {
    module = "syntax-tree-surfer",
    config = function() require "user.plugins.syntax-tree-surfer" end,
  },
  ["s1n7ax/nvim-search-and-replace"] = {
    config = function() require("nvim-search-and-replace").setup() end,
  },
  ["phaazon/hop.nvim"] = require "user.plugins.hop",
  ["nvim-lua/plenary.nvim"] = {
    disable = false,
  },
  ["ThePrimeagen/harpoon"] = {
    requires = "nvim-lua/plenary.nvim",
    config = function() require "user.plugins.harpoon" end,
  },
  ["yriveiro/dap-go.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("dap-go").setup {
        dap = {
          configurations = {
            {
              type = "go",
              name = "Debug",
              request = "launch",
              program = "${file}",
            },
            {
              type = "go",
              name = "Attach",
              mode = "local",
              request = "attach",
              processId = require("dap.utils").pick_process,
            },
          },
        },
      }
    end,
  },
}
