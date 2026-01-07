-- vim.cmd('autocmd!')
require('settings.options')
require('settings.autocmd')

-- vim.g.mapleader = ' '
require('settings.keymaps')

-- bootstrap
-- local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- if not (vim.uv or vim.loop).fs_stat(lazypath) then
--   vim.fn.system({
--     "git",
--     "clone",
--     "--filter=blob:none",
--     "https://github.com/folke/lazy.nvim.git",
--     "--branch=stable", -- latest stable release
--     lazypath,
--   })
-- end
-- vim.opt.rtp:prepend(lazypath)

-- load plugins with lazy.nvim
local opts = {
  defaults = {
    lazy = true,
  },
  spec = nil, -- WIP
  rocks = {
    enabled = false,
  },
  dev = {
    path = "~/projects", -- WIP
  },
  performance = {
    reset_packpath = false,
    rtp = {
      reset = falsem
    },
  },
  install = {
    missing = false,
  },
}
require("lazy").setup("plugins", opts)

