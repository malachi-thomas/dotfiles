----- Normal mode -----
nnmap('<c-w>', 'ZZ')
nnmap('<tab>', '<cmd>BufferNext<cr>')
nnmap('<s-tab>', '<cmd>BufferPrevious<cr>')
nnmap('<space><space>', '<cmd>Files<cr>')
nnmap('Q', '<nop>')
nnmap('<space>sn', ':e ~/dotfiles/snippets/<c-r>=expand(&ft)<cr>.json<cr>')
nnmap('<space>rg', '<cmd>Rg<cr>')
nnmap('<c-s>', '<cmd>w<cr>')
nnmap('<space><cr>', '<cmd>Buffers<cr>')
nnmap('<space>t', '<cmd>NvimTreeToggle<cr>')
nnmap('<c-t>', '<cmd>FloatermToggle<cr>')
nnmap('<esc>', 'v:lua.esc()', {expr = true})
nnmap('<c-l>', 'v:lua.c_l()', {expr = true})

----- Instert mode -----
inmap('<down>', 'v:lua.down()', {expr = true})
inmap('<up>', 'v:lua.up()', {expr = true})
inmap(')', 'v:lua.r_pren()', {expr = true})
inmap('}', 'v:lua.r_brace()', {expr = true})
inmap(']', 'v:lua.r_bracket()', {expr = true})
inmap('<bs>', 'v:lua.backspace()', {expr = true})
inmap('<cr>', 'v:lua.enter()', {expr = true})
inmap('<space>', 'v:lua.space()', {expr = true})
inmap('[', '[]<left>')
inmap('{', '{}<left>')
inmap('(', '()<left>')
imap('<tab>', 'v:lua.tab()', {expr = true})
imap('<c-space>', 'v:lua.c_space()', {expr = true})

----- Terminal mode -----
tnmap('<c-t>', '<cmd>FloatermToggle<cr>')
tnmap('<esc>', 'v:lua.esc()', {expr = true})

vim.cmd([[
  command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case --glob "!**/node_modules/**" --glob "!**/package-lock.json" '.shellescape(<q-args>), 1,fzf#vim#with_preview(), <bang>0)
  command! Vrc e ~/dotfiles/nvim/init.lua
  command! Vse e ~/dotfiles/nvim/lua/settings.lua
  command! Zsh e ~/dotfiles/zsh/.zshrc
  command! Zal e ~/dotfiles/zsh/aliases.zsh
  nnoremap ss :s/\v<c-r>=expand("<cword>")<cr>//g<left><left>
  nnoremap sg :%s/\v<c-r>=expand("<cword>")<cr>//g<left><left>
  vnoremap ss :s/\v//g<left><left><left>
]])
