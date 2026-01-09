local spec = {
  {
    'vim-skk/skkeleton',
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
}
return spec
