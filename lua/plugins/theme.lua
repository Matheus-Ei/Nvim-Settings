return {
  -- Theme
  -- https://github.com/vague2k/vague.nvim
  -- https://github.com/scottmckendry/cyberdream.nvim
  -- https://github.com/folke/tokyonight.nvim
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,

    config = function ()
      vim.cmd[[colorscheme cyberdream]]
    end
  },

  -- To the line of identification of place upper
  -- https://github.com/utilyre/barbecue.nvim
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
      require("barbecue").setup({})
    end
  },

  -- Identation helper plugin
  -- https://github.com/shellRaining/hlchunk.nvim?tab=readme-ov-file
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("hlchunk").setup({
        chunk = {
          enable = true,
        },
        indent = {
          enable = false,
        }
      })
    end
  },

  -- Dashboard
  -- https://github.com/nvimdev/dashboard-nvim
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {}
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'} }
  },

  -- Lualine
  -- https://dotfyle.com/plugins/nvim-lualine/lualine.nvim
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'auto',
          component_separators = { left = '', right = ''},
          section_separators = { left = '', right = ''},
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          }
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {}
      }
    end
  },

  -- Nvim Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,

    config = function ()
      require('nvim-treesitter.config').setup({
        ensure_installed = {
          "bash", "c", "cpp", "html", "javascript", "json", "lua",
          "python", "typescript", "css", "tsx", "yaml", "markdown", "vim"
        },
        highlight = { enable = true, disable = { "vim" } },
        indent = { enable = true },
      })
    end
  },

  -- Whitch key
  -- https://dotfyle.com/plugins/folke/which-key.nvim
  {
    "folke/which-key.nvim",
    event = "VeryLazy",

    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 1000
    end,

    opts = {
      icons = { mappings=false },
      triggers = {
        { "<leader>", mode = { "n", "v" } }
      },

      win = {
        border = "rounded",
      },

    }
  },

  -- Colorizer
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = { -- set to setup table
    },
  },

  -- Cursor line
  -- https://github.com/yamatsum/nvim-cursorline
  {
    "yamatsum/nvim-cursorline",

    config = function()
      require('nvim-cursorline').setup {
        cursorline = {
          enable = false,
          timeout = 3000,
          number = false,
        },
        cursorword = {
          enable = true,
          min_length = 2,
          hl = { underline = true },
        }
      }
    end
  },

  -- Tabs in the top, with navigation
  -- https://github.com/akinsho/bufferline.nvim
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',

    config = function()
      require('bufferline').setup({})
    end
  },

  -- Noice - To cmdline and notify
  -- https://github.com/folke/noice.nvim
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      cmdline = {
        format = {
          cmdline = { pattern = "^:", icon = "", lang = "vim_regex" },
        },
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      {
        "rcarriga/nvim-notify",
        config = function()
          require("notify").setup({
            timeout = 3000,
            max_width = 50,
            render = "compact",
            stages = "fade",
          })
        end,
      }
    }
  }
}
