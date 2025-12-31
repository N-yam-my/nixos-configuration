vim.g.mapleader = ' '
-- vim.keymap.set(
--   {mode},
--   {lhs},
--   {rhs},
--   {opts}
-- )
vim.keymap.set(
  { 'n', },
  '<leader>tn',
  '<Cmd>tabnew<CR>'
)

vim.keymap.set(
  'n',
  '<Esc><Esc>',
  ':nohlsearch<CR><Esc>'
)
