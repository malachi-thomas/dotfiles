" " " Movement
let mapleader=" "
nnoremap <up> gkzz
nnoremap <down> gjzz
nnoremap dl :normal 0d$<cr>
nnoremap cl :normal 0c$<cr>
nnoremap yl :normal 0y$<cr>


" Buffers
nnoremap <tab> :bn<cr>
nnoremap <s-tab> :tabp<cr>
nnoremap <c-s> :w!<cr>
nnoremap <c-f> :Files<cr>

" Extra
inoremap <esc> <right><esc>
nnoremap <esc> <esc>:nohl<cr>
nnoremap y "+y
inoremap <c-h> <c-w>
cnoremap <c-h> <c-w>
nnoremap <space>rg :Rg <C-R>=expand("<cword>")<cr><cr>

" Unmap
nnoremap K <nop>
nnoremap Q <nop>
nnoremap <c-z> <nop>

" Visuale
vnoremap <up> <up>zz
vnoremap <down> <down>zz
vnoremap y "+y

"Substitutions
" nmap s :S/<c-r>=expand("<cword>")<cr>//<left>
" nmap S :S/<c-r>=expand("<cWORD>")<cr>//<left>
vnoremap s :s///g<left><left><left>

"Filetype Mappings
autocmd filetype javascript nnoremap <silent><buffer><c-p> :w<cr>:!node %<cr>
autocmd filetype typescript nnoremap <silent><buffer><c-p> :w<cr>:!ts-node %<cr>
autocmd filetype typescript nnoremap <silent><buffer><c-l> :term tsc<cr>:bn<cr>
autocmd filetype python nnoremap <silent><buffer><c-p> :w<cr>:!python %<cr>
autocmd Filetype help nnoremap <buffer>ZZ :q<cr>

" Command Mode
ca ls !ls -F
ca la !ls -aF
ca ll !ls -laF
ca mk !mkdir
ca to !touch
ca mv !mv
ca ex !chmod +x %<C-R>=Eatchar('\s')<cr>
ca rm !rm
ca rma !sudo rm -rv
ca so !source ~/.zshrc
ca mkdir !mkdir
ca vifm Vifm
ca vrc e ~/dotfiles/nvim/init.vim
ca vma e ~/dotfiles/nvim/mappings.vim
ca vpl e ~/dotfiles/nvim/plugins.vim
ca vpc e ~/dotfiles/nvim/plugin-configs.vim
ca vlu e ~/dotfiles/nvim/lua/nvim-lsp.lua
ca irc e ~/dotfiles/i3/config
ca pol e ~/dotfiles/polybar/config
ca kit e ~/dotfiles/kitty/kitty.conf
ca sxh e ~/dotfiles/sxhkd/sxhkdrc
ca bsp e ~/dotfiles/bspwm/bspwmrc
ca zsh e ~/dotfiles/zsh/.zshrc
ca mux e ~/dotfiles/tmux/tmux.conf
ca sp vsplit
ca p <c-r>=expand("%:.:h")<cr>/<c-r>=Eatchar('\s')<cr>
ca f <c-r>=expand("%:.")<cr><c-r>=Eatchar('\s')<cr>

" Functions
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

func Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunction


" Testing
nnoremap <space>hw :h <c-r>=expand("<cword>>")<cr><cr>


" Commenting
nnoremap <silent><space>gc mm:s/\v^/" <cr>`m
nnoremap <silent><space>gu mm:s/\v^" //<cr>`m
vnoremap <silent><space>gc :s/\v^/" <cr>
vnoremap <silent><space>gu :s/\v^" //<cr>
