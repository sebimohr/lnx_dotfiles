-- Require plugin manager
require("lazy")
-- Add plugins
-- TODO

-- -----------------------------------------------------------------
-- Basic configuration
-- Set lineNumbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Automatically add newline at the end of file
vim.opt.eol = true

-- Set tab settings
vim.opt.expandtab = true    -- Use spaces instead of tabs
vim.opt.tabstop = 4         -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4      -- Number of spaces used for each step of (auto)indent
vim.opt.softtabstop = 4     -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.autoindent = true

-- Show whitespace characters
vim.api.nvim_command('set list')
vim.api.nvim_command('set listchars=tab:»·,trail:·,extends:>,precedes:<,nbsp:.')

-- Set the desired highlighting for whitespace characters
vim.api.nvim_command('highlight WhitespaceEOL ctermbg=red guibg=red')
vim.api.nvim_command('highlight WhitespaceTab ctermbg=blue guibg=blue')

-- Adjust tab settings based on existing tabs in the file
vim.cmd([[
  augroup Indentation
    autocmd!
    autocmd FileType * if len(filter(getline(1,'$'), 'v:val =~# ''^\t''')) >= 2 | setl tabstop=2 shiftwidth=2 softtabstop=2 | endif
  augroup END
]])

-- Highlight searches
vim.opt.hlsearch = true
vim.opt.showmatch = true

-- Set wildmode to longest common substring and most recently used
vim.opt.wildmode = "longest:full,full"

-- Enable filetype detecteion and plugins
vim.cmd('filetype plugin indent on')

-- Reload buffer
vim.api.nvim_command('e')
