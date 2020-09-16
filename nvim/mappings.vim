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

" Buffers
nnoremap <tab> :bn<cr>
nnoremap <s-tab> :bp<cr>
nnoremap <c-s> :w!<cr>
nnoremap <c-f> :Files<cr>

" Splits
nnoremap <space><up> <c-w>k
nnoremap <space><down> <c-w>j
nnoremap <space><left> <c-w>h
nnoremap <space><right> <c-w>l

" Extra
inoremap <esc> <right><esc>
nnoremap y "+y
nnoremap yi "+yi
inoremap <c-h> <c-w>
cnoremap <c-h> <c-w>
nnoremap <space>rg :Rg <C-R>=expand("<cword>")<cr><cr>
nnoremap <space>hw :h <c-r>=expand("<cword>>")<cr><cr>
nnoremap <bs> "_X

" Unmap
nnoremap K <nop>
nnoremap Q <nop>
nnoremap <c-z> <nop>

" Visuale
vnoremap <up> <up>zz
vnoremap <down> <down>zz
vnoremap { {zz
vnoremap } }zz

vnoremap y "+y

"Substitutions 
nnoremap sl :s/<c-r>=expand("<cword>")<cr>//gi<left><left><left>
nnoremap sg :%s/<c-r>=expand("<cword>")<cr>//gi<left><left><left>
nnoremap Sl :s/<c-r>=expand("<cword>")<cr>//gic<left><left><left><left>
nnoremap Sg :%s/<c-r>=expand("<cword>")<cr>//gic<left><left><left><left>
vnoremap s :s///gi<left><left><left>


"Filetype Mappings 
autocmd filetype javascript nnoremap <silent><buffer><c-p> :w<cr>:!node %<cr>
autocmd filetype typescript nnoremap <silent><buffer><c-p> :w<cr>:!ts-node %<cr>
autocmd filetype typescript nnoremap <silent><buffer><c-l> :term tsc<cr>:bn<cr>
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
nnoremap <space>vs :vsplit<cr>


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
nnoremap <silent><space>gd :lua vim.lsp.buf.definition()<cr>
nnoremap <silent><space>rn :lua vim.lsp.buf.rename()<cr>
nnoremap <space>sn :UltiSnipsEdit<cr>
nnoremap <space><cr> :Files %:p:h<cr>
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
      \ "\<c-o>zz\<up>\<c-o>zz"
inoremap <silent><expr><down>
      \ pumvisible() ? "\<c-n>" :
      \ "\<c-o>zz\<down>\<c-o>zz"
ca mv Move

"==================================================================================================
" Functions

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

"==================================================================================================

