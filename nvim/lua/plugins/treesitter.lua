return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = { enable = true },
      -- ensure these language parsers are installed
      ensure_installed = {
	"cpp",
	"c",
	"python",
        "json",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "markdown",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
