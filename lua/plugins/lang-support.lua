return {
  -- Mason
  {
    "williamboman/mason.nvim",

    config = function()
      require("mason").setup()

    end
  },

  -- Lsp with mason integration
  {
    "williamboman/mason-lspconfig.nvim",

    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pylsp", "bashls", "ts_ls", "clangd", "html", "cssls", "ast_grep", "tailwindcss", "intelephense" },
      })
    end
  },

  -- Lsp config
  {
    "neovim/nvim-lspconfig",

    config = function()
      local lspconfig = require("lspconfig")

      -- Setup for each language
      lspconfig.lua_ls.setup({})
      lspconfig.pylsp.setup({})
      lspconfig.bashls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.html.setup({})
      lspconfig.cssls.setup({})
      lspconfig.ast_grep.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.intelephense.setup({
        root_dir = lspconfig.util.root_pattern("composer.json", ".git", "index.php"),
        settings = {
          intelephense = {
            files = {
              maxSize = 1000000,
            },
          },
        },
        on_attach = function(client, bufnr)
          print("Intelephense attached to buffer " .. bufnr)
        end,
      })
    end
  },

--[[ 
  -- Null-ls
  -- https://github.com/jose-elias-alvarez/null-ls.nvim
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier.with({
            filetypes = {
              "javascript",
              "typescript",
              "javascriptreact",
              "typescriptreact",
              "css",
              "json",
              "html",
              "php",
            },

            extra_args = {
              "--single-quote",
              "--jsx-single-quote",
              "--tab-width", "2",
              -- "--use-tabs",
              -- "--semi", "false",
              -- "--trailing-comma", "all",
              -- "--print-width", "80",
              -- "--prose-wrap", "always",
            },
          }),
        },

        -- Auto formatting
        on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
            local lsp_formatting_group = vim.api.nvim_create_augroup("LspFormatting", { clear = false })
            vim.api.nvim_clear_autocmds({ group = lsp_formatting_group, buffer = bufnr })

            vim.api.nvim_create_autocmd("BufWritePre", {
              group = lsp_formatting_group,
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format({ async = false })
              end,
            })
          end
        end,
      })
    end,
  },
 ]]

  -- Snippets
  -- https://github.com/L3MON4D3/LuaSnip
  -- https://github.com/rafamadriz/friendly-snippets
  {
    "L3MON4D3/LuaSnip",

    dependencies = { "rafamadriz/friendly-snippets" },

    build = "make install_jsregexp",

    config = function()
      local ls = require("luasnip")
      require("luasnip.loaders.from_vscode").lazy_load()
    end
  },

  -- To Auto-close tags html and jsx
  -- https://github.com/windwp/nvim-ts-autotag
  {
    "windwp/nvim-ts-autotag",

    config = function()
      require("nvim-ts-autotag").setup()
    end,

    event = "InsertEnter",
  },

  -- Pretrier message errors
  -- https://github.com/folke/trouble.nvim
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
      {
        "<leader>xd",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics",
      },
      {
        "<leader>xD",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer diagnostics",
      },
      {
        "<leader>xs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols",
      },
      {
        "<leader>xl",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location list",
      },
      {
        "<leader>xq",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix list",
      },
    },
  },

  -- Copilot
  -- https://github.com/github/copilot.vim
  {
    "github/copilot.vim",
  }
}

