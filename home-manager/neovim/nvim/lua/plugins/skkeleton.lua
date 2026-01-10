local spec = {
  {
    'vim-skk/skkeleton',
    event = { 'VeryLazy' },
    dependencies = {
      'vim-denops/denops.vim',
      { 'delphinus/skkeleton_indicator.nvim', opts = {} },
    },
    config = function()
      local dataPath = vim.fn.getenv("XDG_DATA_HOME")
      vim.fn['skkeleton#initialize']()
      vim.fn['skkeleton#config']({
        eggLikeNewline = true,
        globalDictionaries =  {
          dataPath .. '/skk/SKK-JISYO.L',
          dataPath .. '/skk/SKK-JISYO.law',
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
}
return spec
