-- Declare trivial plugins:
local spec = {
  {
    "kylechui/nvim-surround",
    event = { 'VeryLazy' },
    -- Configuration here, or leave empty to use defaults
    opts = {},
  },
  {
    'hiphish/rainbow-delimiters.nvim',
    event = { 'BufRead', 'BufNewFile' },
  },
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
    'numToStr/Comment.nvim',
    event = { 'VeryLazy' },
    config = function()
      require('Comment').setup()
    end,
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
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {} -- this is equalent to setup({}) function
  },
--   {
--     'nvim-neo-tree/neo-tree.nvim',
--     dependencies = {
--       'nvim-lua/plenary.nvim',
--       'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
--       'MunifTanjim/nui.nvim',
--       -- '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
--     },
--     branch = 'v3.x',
--     cmd = 'Neotree',
--     keys = {
--       { '<leader>ft', '<cmd>Neotree toggle<CR>', desc = 'NeoTree' },
--     },
--   },
  {
    'mattn/vim-sonictemplate',
    cmd = {'Template', 'Tem'},
    config = function()
      vim.g.sonictemplate_vim_template_dir = {
        -- vim.fn.getenv("XDG_DATA_HOME") .. "/nvim/vim-sonictemplate/template",
        vim.fn.getenv("HOME") .. "/.dotfiles/misc/vim-sonictemplate/",
      }
    end
  },
  {
    'dstein64/vim-startuptime',
    -- lazy-load on a command
    cmd = 'StartupTime',
    -- init is called during startup. Configuration for vim plugins typically should be set in an init function
    init = function()
      vim.g.startuptime_tries = 10
    end,
  },
  {
    'vim-jp/vimdoc-ja',
    event = {  'BufRead', 'BufNewFile' },
    keys = { { 'h', mode = 'c' } }
  },
--   -- { 'vimsence/vimsence', event = 'CursorHold' }
}
return spec
