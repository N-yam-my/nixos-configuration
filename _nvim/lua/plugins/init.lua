-- Declare trivial plugins:
return {
  {
    'lukas-reineke/indent-blankline.nvim',
    main = "ibl",
    opts = {},
    dependencies = { 'hiphish/rainbow-delimiters.nvim' },
    event = { 'BufRead', 'BufNewFile' },
    config = function()
      local highlight = {
        "RainbowDelimiterRed",
        "RainbowDelimiterYellow",
        "RainbowDelimiterBlue",
        "RainbowDelimiterOrange",
        "RainbowDelimiterGreen",
        "RainbowDelimiterViolet",
        "RainbowDelimiterCyan",
      }
      require("ibl").setup {
        scope = {
          highlight = highlight,
        },
        -- indent = {
        --   highlight = highlight,
        -- },
      }
      local hooks = require "ibl.hooks"
      hooks.register(
        hooks.type.SCOPE_HIGHLIGHT,
        hooks.builtin.scope_highlight_from_extmark
      )
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
    'nvim-neo-tree/neo-tree.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      -- '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    branch = 'v3.x',
    cmd = 'Neotree',
    keys = {
      { '<leader>ft', '<cmd>Neotree toggle<cr>', desc = 'NeoTree' },
    },
  },
  -- { 'vimsence/vimsence', event = 'CursorHold' }
}
