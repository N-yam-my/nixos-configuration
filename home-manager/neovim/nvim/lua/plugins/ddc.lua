return {
  {
    'Shougo/pum.vim',
    event = 'VeryLazy',
    config = function()
      vim.fn['pum#set_option']({
        auto_confirm_time = 500,
        -- auto_select = true,
        border = 'single',
        -- follow_cursor = true,
        -- padding = true,
        -- highlight_matches = 'SpellBad',
        -- preview = true,
        -- preview_delay = 500,
      })
    end
  },
  {
    'Shougo/ddc.vim',
    event = 'VeryLazy',
    -- commit = '72ca214',
    dependencies = {
      'vim-denops/denops.vim',
      'Shougo/pum.vim',
      'Shougo/ddc-ui-native',
      'Shougo/ddc-ui-pum',
      'tani/ddc-fuzzy',
      'Shougo/ddc-filter-matcher_head',
      'Shougo/ddc-filter-sorter_rank',
      'Shougo/ddc-source-around',
      -- 'Shougo/ddc-converter_remove_overlap',
      'LumaKernel/ddc-source-file',
      'vim-skk/skkeleton',
      {
        'Shougo/ddc-source-lsp',
        dependencies = {
          'uga-rosa/ddc-source-lsp-setup',
          config = function ()
            require('ddc_source_lsp_setup').setup()
          end,
        },
        config = function()
          local capabilities = require("ddc_source_lsp").make_client_capabilities()
          vim.lsp.config('*', {
            capabilities = capabilities,
          })
        end,
      },
    },
    -- event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      vim.fn['ddc#custom#patch_global']({
        -- ui = 'native',
        ui = 'pum',
        -- backspaceCompletion = false,
        sources = { 'skkeleton', 'lsp', 'file', 'around', },
        sourceOptions = {
          _ = {
            matchers = { 'matcher_fuzzy' },
            sorters = { 'sorter_fuzzy' },
            converters = { 'converter_fuzzy' },
          },
          skkeleton = {
            mark = 'SKK',
            matchers = {},
            sorters = {},
            converters = {},
            isVolatile = true,
            minAutoCompleteLength = 1,
          },
          lsp = {
            isVolatile = true,
            mark = 'LSP',
            forceCompletionPattern = {[['\.\w*|:\w*|->\w*']]},
            -- sorters = { 'sorter_lsp-kind' },
            -- converters = { 'converter_kind_labels' },
            minAutoCompleteLength = 2,
          },
          file = {
            mark = 'F',
            isVolatile = true,
            minAutoCompleteLength = 1000,
            forceCompletionPattern = {[['\S/\S*']]},
          },
          around = {
            mark = 'A',
            minAutoCompleteLength = 4,
          },
        },
        sourceParams = {
          around = { maxSize = 500 },
          lsp = {
            confirmBehavior = 'insert',
            -- enableResolveItem = true,
            enableAdditonalTextedit = true,
            lspengine = 'nvim-lsp',
            snippetEngine = vim.fn['denops#callback#register'](function(body)
                require('luasnip').lsp_expand(body)
              end),
          },
        },
	      filterParams = {
	        converter_kind_labels = {
	          kindLabels = {
	            Text =  "",
              Method =  "",
              Function = "",
              Constructor = "",
              Field = "",
              Variable = "",
              Class = "",
              Interface = "",
              Module = "",
              Property = "",
              Unit = "",
              Value = "",
              Enum = "",
              Keyword = "",
              Snippet = "",
              Color = "",
              File = "",
              Reference = "",
              Folder = "",
              EnumMember = "",
              Constant = "",
              Struct = "",
              Event = "",
              Operator = "",
              TypeParameter = ""
            },
            kindHlGroups = {
              Method = "Function",
              Function = "Function",
              Constructor = "Function",
              Field = "Identifier",
              Variable = "Identifier",
              Class = "Structure",
              Interface = "Structure"
            },
          },
        },
      })
      vim.fn['ddc#custom#patch_global'](
        { 'ps1', 'dosbatch', 'autohotkey', 'registry', },
        {
          sourceOptions = { file = { forceCompletionPattern = {[['\S\\\S*']]} } },
          sourceParams = { file = { mode = 'win32' } },
        }
      )
      vim.fn['ddc#enable']()
    end,
    keys = {
	    -- <Tab>: completion.
      {
        '<Tab>',
        function ()
          if vim.fn['pum#visible']() == true then
            vim.fn['pum#map#insert_relative'](1)
            return ''
          end
          local col = vim.fn.col '.'
          if col <= 1 or vim.fn.getline('.'):sub(col - 1):match '%s' then
            local key = vim.api.nvim_replace_termcodes('<Tab>', true, false, true)
            return vim.api.nvim_feedkeys(key, 'n', false)
          end
          vim.fn['ddc#map#manual_complete']()
          return ''
        end,
        mode = 'i', { noremap = true, silent = true, expr = false },
      },
      -- <S-Tab>: completion back.
      {
        '<S-Tab>',
        function ()
          if vim.fn['pum#visible']() == true then
            vim.fn['pum#map#insert_relative'](-1)
            return ''
          end
          local key = vim.api.nvim_replace_termcodes('<C-p>', true, false, true)
          return vim.api.nvim_feedkeys(key, 'n', false)
        end, mode = 'i', { noremap = true, silent = true, expr = false },
      },
      -- No newline with Enter in compeletion menu.
      -- {
      --   '<Enter>',
      --   function ()
      --     if vim.fn['pum#visible']() == true then
      --       vim.fn['pum#map#confirm']()
      --       return ''
      --     end
      --     local key = vim.api.nvim_replace_termcodes('<Enter>', true, false, true)
      --     return vim.api.nvim_feedkeys(key, 'n', false)
      --   end,
      --   mode = 'i', { noremap = true, expr = false },
      -- },
      {
        '<C-k>',
        function ()
          if vim.fn['pum#visible']() == true then
            vim.fn['pum#map#confirm']()
            return ''
          end
          local key = vim.api.nvim_replace_termcodes('<C-k>', true, false, true)
          return vim.api.nvim_feedkeys(key, 'n', false)
        end,
        mode = 'i', { noremap = true, expr = false },
      },
      -- Go to top / bottom of the menu with <Home> / <End>.
      -- {
      --   '<Home>',
      --   function()
      --     if vim.fn['pum#visible']() == true then
      --       vim.fn['pum#map#insert_relative'](-9999, 'ignore')
      --       return ''
      --     end
      --     local key = vim.api.nvim_replace_termcodes('<Home>', true, false, true)
      --     return vim.api.nvim_feedkeys(key, 'n', false)
      --   end, mode = 'i', { noremap = true, silent = true, expr = false },
      -- },
      -- {
      --   '<End>',
      --   function()
      --     if vim.fn['pum#visible']() == true then
      --       vim.fn['pum#map#insert_relative'](9999, 'ignore')
      --       return ''
      --     end
      --     local key = vim.api.nvim_replace_termcodes('<End>', true, false, true)
      --     return vim.api.nvim_feedkeys(key, 'n', false)
      --   end, mode = 'i', { noremap = true, silent = true, expr = false },
      -- },
    }
  },
}
