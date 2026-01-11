local spec = {
  {
    'L3MON4D3/LuaSnip',
    event = 'InsertEnter',
    keys = {
      {
        "<C-K>",
        function()
          require('luasnip').jump(1)
        end,
        mode = { 'i', 's' },
        desc = 'LuaSnip jump forward',
        silent = true,
      },
      {
        "<C-J>",
        function()
          require('luasnip').jump(-1)
        end,
        mode = { 'i', 's' },
        desc = 'LuaSnip jump backward',
        silent = true,
      },
      -- {
      --   "<C-E>",
      --   function()
      --     local ls = require("luasnip")
      --     if ls.choice_active() then
      --       ls.change_choice(1)
      --     end
      --   end,
      --   mode = { 'i', 's' },
      --   desc = 'LuaSnip choice',
      --   silent = true,
      -- },
    },
  },
}
return spec
