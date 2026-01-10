local spec = {
  {
    'Shougo/pum.vim',
    config = function()
      vim.fn['pum#set_option']({
        -- auto_confirm_time = 500,
        auto_select = true,
        border = 'single',
        -- follow_cursor = true,
        -- padding = true,
        -- highlight_matches = 'SpellBad',
        preview = false,
        -- preview_delay = 500,
      })
    end
  },
  {
    'matsui54/denops-popup-preview.vim',
    dependencies = { 'vim-denops/denops.vim' },
    event = 'VeryLazy',
    config = function()
      vim.fn['popup_preview#enable']()
    end
  },
  {
    'Shougo/ddc.vim',
    event = 'VeryLazy',
    dependencies = {
      'vim-denops/denops.vim',
      'Shougo/pum.vim',
      -- 'Shougo/ddc-ui-native',
      'Shougo/ddc-ui-pum',
      'tani/ddc-fuzzy',
      'Shougo/ddc-source-around',
      'LumaKernel/ddc-source-file',
      'Shougo/ddc-filter-matcher_head',
      'Shougo/ddc-filter-matcher_prefix',
      'Shougo/ddc-filter-sorter_rank',
      'Shougo/ddc-filter-sorter_lsp_kind',
      'Shougo/ddc-filter-converter_kind_labels',
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
      'windwp/nvim-autopairs',
    },
    config = function()
      vim.fn['ddc#custom#patch_global']({
        backspaceCompletion = true,-- if screen flickers, set false.
        -- ui = 'native',
        ui = 'pum',
        -- uiParams = { insert = true, },
        sources = { 'skkeleton', 'lsp', 'file', 'around', },
        sourceOptions = {
          _ = {
            matchers = { 'matcher_fuzzy', 'matcher_prefix' },
            sorters = { 'sorter_fuzzy' , 'sorter_rank' },
            converters = { 'converter_fuzzy' },
          },
          skkeleton = {
            mark = 'SKK',
            matchers = {},
            sorters = {},
            converters = {},
            isVolatile = true,
            minAutoCompleteLength = 1,
            maxItems = 25,
          },
          lsp = {
            keywordPattern = '\\k+',
            mark = 'LSP',
            -- matchers = { 'matcher_head' },
            sorters = { 'sorter_lsp_kind' },
            converters = { 'converter_kind_labels' },
            isVolatile = true,
            -- forceCompletionPattern = {[['\.\w*|:\w*|->\w*']]},
            minAutoCompleteLength = 2,
            maxItems = 25,
          },
          file = {
            mark = 'F',
            isVolatile = true,
            minAutoCompleteLength = 3,
            forceCompletionPattern = {[['\S/\S*']]},
            maxItems = 25,
          },
          around = {
            mark = 'A',
            minAutoCompleteLength = 4,
            maxItems = 25,
          },
        },
        sourceParams = {
          around = { maxSize = 500 },
          lsp = {
            -- confirmBehavior = 'insert',
            enableResolveItem = true,
            enableAdditonalTextedit = true,
            lspengine = 'nvim-lsp',
            snippetEngine = vim.fn['denops#callback#register'](
              function(body)
                require('luasnip').lsp_expand(body)
              end
            ),
          },
        },
	      filterParams = {
          converter_fuzzy = {
            hlGroup = 'SpellBad',
          },
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
      -- Close the preview window after CompleteDone
      -- vim.api.nvim_create_autocmd(
      --   'CompleteDone', {
      --     pattern = { '*' },
      --     callback = function()
      --       vim.cmd("silent! pclose!")
      --     end
      --   }
      -- )
    end,
    keys = {
      {
        '<Tab>',
        function ()
          -- If completion menu is visible: go down by 1 item in menu
          if vim.fn['pum#visible']() == true then
            vim.fn['pum#map#insert_relative'](1)
            return ''
          end
          -- If the charactor before cursor is space: insert <Tab>
          local col = vim.fn.col '.' - 1
          if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
            local key = vim.api.nvim_replace_termcodes('<Tab>', true, false, true)
            return vim.api.nvim_feedkeys(key, 'n', false)
          end
          -- Else: manual completion
          vim.fn['ddc#map#manual_complete']()
          return ''
        end,
        mode = 'i', { noremap = false, silent = true, expr = false },
        desc = "Completion",
      },
      {
        '<S-Tab>',
        function ()
          -- If completion menu is visible: go up by 1 item in menu
          if vim.fn['pum#visible']() == true then
            vim.fn['pum#map#insert_relative'](-1)
            return ''
          end
          -- Else: insert <S-Tab>
          local key = vim.api.nvim_replace_termcodes('<S-Tab>', true, false, true)
          return vim.api.nvim_feedkeys(key, 'n', false)
        end, mode = 'i', { noremap = false, silent = true, expr = false },
        desc = "Completion back",
      },
      {
        '<CR>',
        function ()
          if vim.fn['pum#visible']() == true then
            if vim.fn['pum#complete_info']()['selected'] == -1 then
              vim.fn['pum#map#select_relative'](-9999, 'ignore')
            end
            vim.fn['pum#map#confirm']()
            return ''
          end
          local key = require('nvim-autopairs').autopairs_cr()
          return vim.api.nvim_feedkeys(key, 'in', true)
        end,
        mode = 'i', { noremap = false, expr = false },
        desc = 'Confirm completion',
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
    },
  },
}
return spec
