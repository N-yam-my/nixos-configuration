-- Declare miscellaneous plugins:
local spec = {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
    -- event = { 'BufReadPre', 'BufNewFile' },
    event = { 'ColorScheme' },
    opts = {
      options = { theme = 'tokyonight' }
    },
  },
  {
    'windwp/nvim-autopairs',
    -- see ddc.vim (<CR> mapping)
    opts = {
      check_ts = true,
      map_cr = false,
    },
  },
  {
    'numToStr/Comment.nvim',
    event = { 'InsertEnter' },
    opts = {},
  },
  -- {
  --   'hiphish/rainbow-delimiters.nvim',
  --   event = { 'ColorScheme' },
  -- },
  {
    "kylechui/nvim-surround",
    event = { 'InsertEnter' },
    -- Configuration here, or leave empty to use defaults
    opts = {},
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    dependencies = {
      'hiphish/rainbow-delimiters.nvim',
      event = { 'ColorScheme' },
    },
    -- event = { 'BufReadPre', 'BufNewFile' },
    event = { 'ColorScheme' },
    main = "ibl",
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
      local hooks = require "ibl.hooks"
      require("ibl").setup {
        scope = {
          highlight = highlight,
        },
        -- indent = {
        --   highlight = highlight,
        -- },
      }
      hooks.register(
        hooks.type.SCOPE_HIGHLIGHT,
        hooks.builtin.scope_highlight_from_extmark
      )
    end
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
    cmd = { 'Template', 'Tem' },
    init = function ()
      vim.g.sonictemplate_vim_template_dir = {
        vim.fn.getenv("HOME") .. "/.dotfiles/misc/vim-sonictemplate/",
      }
    end,
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
    -- event = {  'BufRead', 'BufNewFile' },
    keys = { { 'h', mode = 'c' } }
  },
  --   -- { 'vimsence/vimsence', event = 'CursorHold' }
}
return spec
