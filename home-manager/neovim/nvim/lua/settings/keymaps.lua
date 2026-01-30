vim.g.mapleader = ' '
-- vim.keymap.set(
--   {mode},
--   {lhs},
--   {rhs},
--   {opts}
-- )
-- -- works as noremap by default
vim.keymap.set(
  'n',
  '<Esc><Esc>',
  '<Cmd>nohlsearch<CR><Esc>'
)
vim.keymap.set(
  'n',
  '<leader>tn',
  '<Cmd>tabnew<CR>'
)
-- https://zenn.dev/vim_jp/articles/43d021f461f3a4
-- vim.keymap.set(
--   'n',
--   'Y',
--   'y$'
-- )
vim.keymap.set(
  'n',
  'x',
  '\"_d'
)
vim.keymap.set(
  'n',
  'X',
  '\"_D'
)
vim.keymap.set(
  'x',
  'X',
  '\"_x'
)
vim.keymap.set(
  'o',
  'x',
  'd'
)
vim.keymap.set(
  { 'o', 'x' },
  'i<Space>',
  'iW'
)
vim.keymap.set(
  'n',
  'U',
  '<C-R>'
)
vim.keymap.set(
  'x',
  'p',
  'P'
)

-- Easy <Esc>
vim.keymap.set(
  'i',
  '<C-Space>',
  '<Esc>'
)
