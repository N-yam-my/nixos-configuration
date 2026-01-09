local spec = {
  {
    'vim-skk/skkeleton',
    event = { 'VeryLazy' },
    dependencies = {
      'vim-denops/denops.vim',
      -- { 'delphinus/skkeleton_indicator.nvim', opts = {} },
    },
    config = function()
      local path = vim.fn.getenv("XDG_DATA_HOME")
      vim.fn['skkeleton#initialize']()
      vim.fn['skkeleton#config']({
        eggLikeNewline = true,
        globalDictionaries =  {
          path .. '/skk/SKK-JISYO.L',
          path .. '/skk/SKK-JISYO.law',
        },
        -- usePopup = false,
        userDictionary = vim.fn.getenv("HOME") .. "/.dotfiles/misc/skkeleton",
      })
    end,
    keys = {
      { '<C-j>', '<Plug>(skkeleton-toggle)', mode = 'i'},
      { '<C-j>', '<Plug>(skkeleton-toggle)', mode = 'c'},
      { 'jk', '<Plug>(skkeleton-toggle)', mode = 'i'},
      { 'jk', '<Plug>(skkeleton-toggle)', mode = 'c'},
    }
  },
  -- {
  --   'matsui54/denops-popup-preview.vim',
  --   dependencies = { 'vim-denops/denops.vim' },
  --   event = 'VeryLazy',
  --   config = function()
  --     vim.fn['popup_preview#enable']()
  --   end
  -- },
}
return spec
