-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    -- Required plugin for leap.nvim
    'tpope/vim-repeat',
    name = 'vim-repeat',
  },
  {
    'ggandor/leap.nvim',
    keys = {
      { 't', '<Plug>(leap-forward)', mode = { 'n', 'x', 'o' }, desc = 'Leap Forward to' },
      { 'T', '<Plug>(leap-backward)', mode = { 'n', 'x', 'o' }, desc = 'Leap Backward to' },
      -- { 'gS', '<Plug>(leap-from-window)', mode = { 'n', 'x', 'o' }, desc = 'Leap from Windows' },
    },
  },
}
