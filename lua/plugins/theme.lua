    return {
      {
        "folke/tokyonight.nvim",
        lazy = false, -- Set to false to ensure it loads at startup
        priority = 1000, -- Ensure it loads before other plugins
        opts = {
          style = "night", -- Or "moon", "day", "storm"
          transparent = false, -- Set to true for a transparent background
          -- Add other options here as needed, e.g.,
          -- term_colors = true,
          -- colors = {},
          -- on_colors = function(colors) end,
          -- on_highlights = function(highlights, colors) end,
        },
        config = function(_, opts)
          require("tokyonight").setup(opts)
          vim.cmd.colorscheme("tokyonight")
        end,
      },
    }
