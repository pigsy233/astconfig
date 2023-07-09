-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
        "neocmake",
        "clangd",
        "bashls",
        "cssls",
        "gopls",
        "jsonls",
        "tsserver",
        "html",
        "marksman",
        "pyright",
        "sqlls",
        "rust_analyzer",
        "ruby_ls",
        "vuels",
        "lemminx",
        "yamlls",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "prettier",
        "stylua",
        "cmakelang",
        "cmakelint",
        "cpplint",
        -- "cspell",
        "jsonlint",
        "luacheck",
        "markdownlint",
        "pylint",
        "yamllint",
        "sqlfluff",
        "standardjs",
        "standardrb",
        "textlint",
        "clang-format",
        "fixjson",
        "golines",
        "htmlbeautifier",
        "pyink",
        "rubyfmt",
        "rustywind",
        "shellharden",
        "sql-formatter",
        "ts-standard",
        "xmlformatter",
        "yamlfmt",
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "python",
        "bash-debug-adapter",
        "chrome-debug-adapter",
        "codelldb",
        "cpptools",
        "debugpy",
        "delve",
        "firefox-debug-adapter",
        "go-debug-adapter",
        "js-debug-adapter",
      })
    end,
  },
}
