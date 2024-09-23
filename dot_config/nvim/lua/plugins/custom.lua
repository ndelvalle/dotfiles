-- https://patorjk.com/software/taag/#p=display&h=3&f=Modular&t=neovim
local logo = [[

███    ██ ███████  ██████  ██    ██ ██ ███    ███ 
████   ██ ██      ██    ██ ██    ██ ██ ████  ████ 
██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██ 
██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██ 
██   ████ ███████  ██████    ████   ██ ██      ██ 

]]

logo = string.rep("\n", 8) .. logo .. "\n\n"

return {

  {
    "nvimdev/dashboard-nvim",
    opts = {
      config = {
        header = vim.split(logo, "\n"),
      },
    },
  },

  -- Color schemes.
  -- { "ellisonleao/gruvbox.nvim" },
  { "navarasu/onedark.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      colorscheme = "onedark",
    },
  },

  {
    "f-person/git-blame.nvim",
    opts = {
      -- https://github.com/f-person/git-blame.nvim#visual-delay-for-displaying-the-blame-info
      delay = 200,
    },
  },

  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
    },
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      scope = {
        enabled = true,
      },
    },
  },

  -- Find and replace (<leader>sr).
  {
    "nvim-pack/nvim-spectre",
  },

  -- Disable
  {
    "folke/todo-comments.nvim",
    enabled = false,
  },

  {
    -- Disable tabs.
    "bufferline.nvim",
    enabled = false,
  },
}
