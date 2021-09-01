vim.cmd[[
  au BufReadPost * normal g'"
]]


-- im.cmd([[
--   augroup autocmds
--   autocmd!
--   autocmd FileType vimwiki setlocal spell
--   autocmd VimEnter,SourcePost * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))|   PlugInstall --sync | q| endif " PlugInstall on uninstalld plugins
--   autocmd BufReadPost * normal g'"
--   autocmd BufWritePre * if (&filetype != 'make')| %s/\t/  /ge | endif
--   autocmd BufWinEnter,WinEnter term://* start " if terminal window auto enter insert mode
--   autocmd BufWrite ~/.tmux.conf silent !tmux source-file ~/.tmux.conf " source ~/.tmux.conf when you save ~/.tmux.conf
--   autocmd BufRead ~/dotfiles/nvim/snippets/* set ft=jsonc
--   " autocmd BufWritePost * normalc to mmgg=G`m
--   " autocmd CursorMoved,BufWritePost * normal zz
--   autocmd BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
--   autocmd VimEnter * RainbowParenthesesToggle
--   autocmd Syntax * RainbowParenthesesLoadRound
--   autocmd Syntax * RainbowParenthesesLoadSquare
--   autocmd Syntax * RainbowParenthesesLoadBraces
--   autocmd FileType vim nnoremap <silent><buffer><c-s> :w<cr>:so $MYVIMRC<cr>
-- 
-- ]])

