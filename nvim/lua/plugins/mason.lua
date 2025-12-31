return {
  {
    'williamboman/mason.nvim',
    cmd = {
      'Mason',
      'MasonInstall',
      'MasonUninstall',
      'MasonUninstallAll',
      'MasonLog',
      'MasonUpdate',
    },
    config = function()
      require('mason').setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    event = 'VeryLazy',
    config = function()
      require('mason-lspconfig').setup {
        automatic_enable = false,
        ensure_installed = { 'lua_ls', 'rust_analyzer', 'tinymist', }
      }
    end,
  },
  {
    'neovim/nvim-lspconfig',
    event = {'BufReadPre', 'BufNewFile', },
    dependencies = {
      {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
      },
    },
    config = function()
      vim.lsp.enable('lua_ls', {})
      vim.lsp.enable('rust_analyzer', {})
      vim.lsp.config('tinymist', {
        settings = {
          -- tinymist = {
          --     settings = {
                semanticTokens = 'disable',
                formatterMode = 'typstyle',
                exportPdf = 'onSave',
              -- },
          -- },
        },
      })
      vim.lsp.enable('tinymist', {
        -- on_attach = on_attach,
        -- capabilities = capabilities,
        -- offset_encoding = 'utf-8',
        single_file_support = true,
        root_dir = function ()
          return vim.fn.getcwd()
        end,
      })
      vim.lsp.enable('lemminx', {})
    end
  },
}
