-- Declare trivial plugins:
return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
--   {
--     'nvim-lualine/lualine.nvim',
--     dependencies = { 'nvim-tree/nvim-web-devicons' },
--     event = 'VeryLazy',
--     config = function()
--       require('lualine').setup{ options = { theme = 'auto' } }
--     end,
--   },
--   {'nvim-treesitter/nvim-treesitter',
--     dependencies = { 'nvim-treesitter/playground' },
--     build = ':TSUpdate',
--     event = { 'BufRead', 'BufNewFile' },
--     config = function()
--       require'nvim-treesitter.configs'.setup {
--         ensure_installed = {},
--         highlight = {
--           enable = true,
--           -- disable = { 'typst' },
--         },
--         indent = { enable = true, },
--       }
--     end
--   },
--   {
--     "kylechui/nvim-surround",
--     version = "*", -- Use for stability; omit to use `main` branch for the latest features
--     event = { 'BufRead', 'BufNewFile' },
--     config = function()
--         require("nvim-surround").setup({
--         -- Configuration here, or leave empty to use defaults
--         })
--     end
--   },
  {
    'hiphish/rainbow-delimiters.nvim',
    event = { 'BufRead', 'BufNewFile' },
  },
--   {
--     'lukas-reineke/indent-blankline.nvim',
--     main = "ibl",
--     opts = {},
--     dependencies = { 'hiphish/rainbow-delimiters.nvim' },
--     event = { 'BufRead', 'BufNewFile' },
--     config = function()
--       local highlight = {
--         "RainbowDelimiterRed",
--         "RainbowDelimiterYellow",
--         "RainbowDelimiterBlue",
--         "RainbowDelimiterOrange",
--         "RainbowDelimiterGreen",
--         "RainbowDelimiterViolet",
--         "RainbowDelimiterCyan",
--       }
--       require("ibl").setup {
--         scope = {
--           highlight = highlight,
--         },
--         -- indent = {
--         --   highlight = highlight,
--         -- },
--       }
--       local hooks = require "ibl.hooks"
--       hooks.register(
--         hooks.type.SCOPE_HIGHLIGHT,
--         hooks.builtin.scope_highlight_from_extmark
--       )
--     end
--   },
--   {
--     'numToStr/Comment.nvim',
--     event = { 'BufRead', 'BufNewFile' },
--     config = function()
--       require('Comment').setup()
--     end,
--   },
--   {
--     'matsui54/denops-popup-preview.vim',
--     dependencies = { 'vim-denops/denops.vim' },
--     event = 'VeryLazy',
--     config = function()
--       vim.fn['popup_preview#enable']()
--     end
--   },
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
--       { '<leader>ft', '<cmd>Neotree toggle<cr>', desc = 'NeoTree' },
--     },
--   },
--   {'vim-denops/denops.vim', lazy = true,},
--   {
--     'mattn/vim-sonictemplate',
--     cmd = {'Template', 'Tem'},
--     config = function ()
--       vim.g.sonictemplate_vim_template_dir = {
--         os.getenv("XDG_DATA_HOME") .. "/nvim-data/lazy/vim-sonictemplate/template",
--         os.getenv("XDG_CONFIG_HOME") .. "/vim-sonictemplate/",
--       }
--     end
--   },
  {
    'dstein64/vim-startuptime',
    -- lazy-load on a command
    cmd = 'StartupTime',
    -- init is called during startup. Configuration for vim plugins typically should be set in an init function
    init = function()
      vim.g.startuptime_tries = 10
    end,
  },
--   { 'vim-jp/vimdoc-ja', keys = { { 'h', mode = 'c' } } },
--   -- { 'vimsence/vimsence', event = 'CursorHold' }
}
