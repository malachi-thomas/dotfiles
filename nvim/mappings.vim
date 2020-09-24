"==================================================================================================
" Mappings

" Basic Movement
nnoremap <up> gkzz
nnoremap <down> gjzz
nnoremap dl :normal 0d$<cr>
nnoremap cl :normal 0c$<cr>
nnoremap yl :normal 0y$<cr>
nnoremap { {zz
nnoremap } }zz
nnoremap <pageup> <c-u>zz
nnoremap <pagedown> <c-d>zz
nnoremap G Gzz
nnoremap <c-o> <c-o>zz
nnoremap <c-i> <c-i>zz
nnoremap <home> ^
nnoremap <s-right> v<right>
nnoremap <s-left> v<left>
nnoremap <s-down> v<down>
nnoremap <s-up> v<up>
vnoremap <s-right> <right>
vnoremap <s-left> <left>
vnoremap <s-down> <down>
vnoremap <s-up> <up>
inoremap <home> <c-o>^


" Buffers
nnoremap <c-s> :w!<cr>
inoremap <c-s> <c-o>:w!<cr>

" Splits
nnoremap <space><up> <c-w>k
nnoremap <space><down> <c-w>j
nnoremap <space><left> <c-w>h
nnoremap <space><right> <c-w>l
nnoremap <space>vs :vnew<cr>

" Extra
nnoremap y "*y
nnoremap yi "*yi
inoremap <c-h> <c-w>
nnoremap <space>rg :Rg <C-R>=expand("<cword>")<cr><cr>
nnoremap <space>hw :h <c-r>=expand("<cword>>")<cr><cr>
nnoremap <bs> "_X
inoremap <esc> <right><esc>
cnoremap <c-h> <c-w>
nnoremap <esc> <esc>:nohl<cr>
inoremap <c-k> <c-x><c-k>

" Unmap
nnoremap K <nop>
nnoremap Q <nop>
nnoremap <c-z> <nop>
nnoremap ss <nop>
nnoremap S <nop>

" Visuale
vnoremap <up> <up>zz
vnoremap <down> <down>zz
vnoremap { {zz
vnoremap } }zz

xnoremap y "*y

"Substitutions 
nnoremap sl :s/<c-r>=expand("<cword>")<cr>//gi<left><left><left>
nnoremap sg :%s/<c-r>=expand("<cword>")<cr>//gi<left><left><left>
nnoremap Sl :s/<c-r>=expand("<cword>")<cr>//gic<left><left><left><left>
nnoremap Sg :%s/<c-r>=expand("<cword>")<cr>//gic<left><left><left><left>
vnoremap s :s///gi<left><left><left>

"Filetype Mappings 
autocmd filetype javascript nnoremap <silent><buffer><c-p> :w<cr>:!node %<cr>
autocmd filetype typescript nnoremap <silent><buffer><c-p> :w<cr>:!ts-node %<cr>
autocmd filetype python nnoremap <silent><buffer><c-p> :w<cr>:!python %<cr>
autocmd filetype vim nnoremap <silent><buffer><c-s> :w<cr>:so $MYVIMRC<cr>
autocmd filetype lua nnoremap <silent><buffer><c-s> :w<cr>:luafile %<cr>

" Command Mode
ca ls !ls -F
ca la !ls -aF
ca ll !ls -laF
ca mk !mkdir
ca to !touch
ca ex !chmod +x %<C-R>=Eatchar('\s')<cr>
ca rm !rm
ca rma !sudo rm -rv
ca so so $MYVIMRC
ca mkdir !mkdir
ca vifm Vifm
ca vrc e ~/dotfiles/nvim/init.vim
ca vma e ~/dotfiles/nvim/mappings.vim
ca vpl e ~/dotfiles/nvim/plugins.vim
ca vpc e ~/dotfiles/nvim/plugin-configs.vim
ca irc e ~/dotfiles/i3/config
ca pol e ~/dotfiles/polybar/config
ca kit e ~/dotfiles/kitty/kitty.conf
ca sxh e ~/dotfiles/sxhkd/sxhkdrc
ca bsp e ~/dotfiles/bspwm/bspwmrc
ca zsh e ~/dotfiles/zsh/.zshrc
ca mux e ~/dotfiles/tmux/tmux.conf
ca lrc e ~/dotfiles/nvim/lua/init.lua
ca vsn e ~/dotfiles/nvim/lua/nvim-snippets.lua
ca sp vsplit
ca p <c-r>=expand("%:.:h")<cr>/<c-r>=Eatchar('\s')<cr>
ca f <c-r>=expand("%:.")<cr><c-r>=Eatchar('\s')<cr>
ca ft <c-r>=expand(&ft)<cr><c-r>=Eatchar('\s')<cr>
" Command Mode 

" Terminal mappings
nnoremap <space>tt :FloatermNew<cr>
tnoremap <esc> <c-\><c-n>

" Testing

" Commenting
nnoremap <silent><space>gc mm:s/\v^/" <cr>`m
nnoremap <silent><space>gu mm:s/\v^" //<cr>`m
vnoremap <silent><space>gc :s/\v^/" <cr>
vnoremap <silent><space>gu :s/\v^" //<cr>

" Plugin Mappings 
nnoremap <space>tr :LuaTreeToggle<CR>
nnoremap <leader>r :LuaTreeRefresh<CR>
nnoremap <leader>n :LuaTreeFindFile<CR>
nnoremap <c-n> :TabVifm<cr>
nnoremap <silent>gd :lua vim.lsp.buf.definition()<cr>
nnoremap <silent><space>rn :lua vim.lsp.buf.rename()<cr>
nnoremap <silent><c-h> :lua vim.lsp.buf.hover()<cr>
nnoremap <space>sn :UltiSnipsEdit<cr>
nnoremap <space><cr> :Buffers<cr>
nnoremap <space><space> :Files<cr>
nmap <f1> <Plug>VimwikiNextLink
nmap <f2> <Plug>VimwikiAddHeaderLevel
nmap <f3> <Plug>VimwikiDiaryNextDay
nmap <f4> <Plug>VimwikiDiaryPrevDay
nmap <f5> <Plug>VimwikiPrevLink
nmap <f6> <Plug>VimwikiGoBackLink
imap <silent><expr><tab>
      \ <sid>check_back_space() ? "\<tab>" :
      \  completion#trigger_completion()
inoremap <silent><expr><up>
      \ pumvisible() ? "\<c-p>" :
      \ "\<up>"
inoremap <silent><expr><down>
      \ pumvisible() ? "\<c-n>" :
      \ "\<down>"
ca mv Move
nnoremap <c-f> :Files ~<cr>
let g:user_emmet_expandabbr_key='<c-t>'
"==================================================================================================
" Functions

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

"==================================================================================================

