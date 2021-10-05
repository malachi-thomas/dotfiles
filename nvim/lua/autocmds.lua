vim.cmd[[
  au BufReadPost * normal g'"
  au FileType markdown setlocal spell
]]
  --au CursorMoved,BufWritePost * normal zz
