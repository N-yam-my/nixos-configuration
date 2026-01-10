local spec = {
  {
    'L3MON4D3/LuaSnip',
    event = 'InsertEnter',
    config = function()
      local ls = require('luasnip')
      vim.keymap.set({'i'}, '<Tab>', function()
        if ls.expand_or_jumpable() == true then
          ls.expand_or_jump()
          return ''
        else
          local key = vim.api.nvim_replace_termcodes('<Tab>', true, false, true)
          return vim.api.nvim_feedkeys(key, 'n', false)
        end
      end, { expr = false, silent = true })
      vim.keymap.set({'i', 's'}, '<S-Tab>', function()
        if ls.jumpable(-1) == true then
          ls.jump(-1)
          return ''
        else
          local key = vim.api.nvim_replace_termcodes('<S-Tab>', true, false, true)
          return vim.api.nvim_feedkeys(key, 'n', false)
        end
      end, {expr = false, silent = true})
      vim.keymap.set({'i', 's'}, '<C-E>', function()
        if ls.choice_active() == true then
          ls.change_choice(1)
          return ''
        end
      end, { expr = false, silent = true })
    end,
  },
}
return spec
