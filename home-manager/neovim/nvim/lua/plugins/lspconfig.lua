return {
  {
    'neovim/nvim-lspconfig',
    event = {'BufReadPre', 'BufNewFile', },
    config = function()
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('nixd')
      vim.lsp.enable('rust_analyzer')
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
      -- vim.lsp.enable('lemminx', {})
    end
  },
}
