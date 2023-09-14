vim.cmd[[
  au BufReadPost * normal g'"
  au FileType markdown setlocal spell
  au CursorMoved,BufWritePost * normal zz
  au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }


]]
