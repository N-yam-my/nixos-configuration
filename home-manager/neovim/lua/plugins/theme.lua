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
    event = 'VeryLazy',
    opts = {
      options = { theme = 'tokyonight' }
    },
  },
}
return spec
