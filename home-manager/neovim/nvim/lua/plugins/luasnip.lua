local spec = {
  {
    'L3MON4D3/LuaSnip',
    event = 'InsertEnter',
    config = function()
			local ls = require("luasnip")
			
			vim.keymap.set({"i"}, "<Down>",
        function()
          if ls.expand_or_jumpable() == true then
            ls.expand_or_jump()
            return ''
          end
          return '<Down>'
        end, { expr = true, silent = true }
      )
			vim.keymap.set({"i", "s"}, "<Up>",
        function()
          if ls.jumpable(-1) == true then
            ls.jump(-1)
            return ''
          end
          return '<Up>'
        end, { expr = true, silent = true }
      )
			
			vim.keymap.set({"i", "s"}, "<C-E>",
        function()
				  if ls.choice_active() then
					  ls.change_choice(1)
				  end
			  end, {silent = true}
      )
    --   local ls = require('luasnip')
    --   vim.keymap.set({'i'}, '<Tab>', function()
    --     if ls.expand_or_jumpable() == true then
    --       ls.expand_or_jump()
    --       return ''
    --     end
    --     return '<Tab>'
    --   end, { noremap = false, expr = true, silent = true })
    --   vim.keymap.set({'i', 's'}, '<S-Tab>', function()
    --     if ls.jumpable(-1) == true then
    --       ls.jump(-1)
    --       return ''
    --     end
    --     return '<S-Tab>'
    --   end, { noremap = false, expr = true, silent = true })
    --   -- vim.keymap.set({'i', 's'}, '<C-E>', function()
    --   --   if ls.choice_active() == true then
    --   --     ls.change_choice(1)
    --   --     return ''
    --   --   end
    --   -- end, { noremap = true, expr = false, silent = true })
    end,
  },
}
return spec
