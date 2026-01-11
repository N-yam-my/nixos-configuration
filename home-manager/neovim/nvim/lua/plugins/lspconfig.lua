local spec = {
  {
    'neovim/nvim-lspconfig',
    -- event = { 'BufRead', 'BufNewFile', },
    config = function()
      -- Settings for diagnostic
      vim.diagnostic.config({
        underline = true,
        virtual_text = true,
        virtual_lines = false,
        signs = true,
      })
      -- Set up LSPs
      vim.lsp.config('lua_ls', {
        -- filetypes = { 'lua' },
        on_init = function(client)
          if client.workspace_folders then
            local path = client.workspace_folders[1].name
            if
                path ~= vim.fn.stdpath('config')
                and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
            then
              return
            end
          end
          client.config.settings.Lua = vim.tbl_deep_extend(
            'force', client.config.settings.Lua, {
              runtime = {
                version = 'LuaJIT',
                path = { 'lua/?.lua', 'lua/?/init.lua', },
              },
              -- Make the server aware of Neovim runtime files
              workspace = {
                checkThirdParty = false,
                library = {
                  vim.env.VIMRUNTIME,
                  '${3rd}/luv/library',
                  -- '${3rd}/busted/library',
                }
              },
            })
        end,
        settings = { Lua = {} },
      })
      vim.lsp.config('tinymist', {
        settings = {
          exportPdf = 'onSave',
          formatterMode = 'typstyle',
          semanticTokens = 'disable',
        },
        -- root_dir = function()
        --   return vim.fn.getcwd()
        -- end,
        -- filetypes = { 'typst' },
      })
      -- Enable LSPs
      local lspNames = {
        'lua_ls',
        -- 'lemminx',
        'nixd',
        'rust_analyzer',
        'tinymist'
      }
      vim.lsp.enable(lspNames)
      -- autocmds
      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
          vim.keymap.set(
            'n', '<leader>f', function()
              vim.lsp.buf.format({
                bufnr = args.buf,
                id = client.id,
                async = true,
              })
            end,
            { buffer = arg.buf, desc = 'Format buffer' }
          )
        end,
      })
    end
  },
}
return spec
