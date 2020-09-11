" " " Movement
let mapleader=" "
nnoremap <up> gkzz
nnoremap <down> gjzz
nnoremap dl 0d$
nnoremap cl 0c$
nnoremap yl 0y$


" Buffers
nnoremap <tab> :bn<cr>
nnoremap <s-tab> :tabp<cr>
nnoremap <c-s> :w!<cr>
nnoremap <c-f> :Files<cr>

" Tabs
nnoremap <c-tab>


" Extra
inoremap <esc> <right><esc>
nnoremap <esc> <esc>:nohl<cr>
nnoremap y "+y
inoremap <c-h> <c-w>
cnoremap <c-h> <c-w>

" Unmap
"nnoremap j <nop>
"nnoremap k <nop>
"nnoremap l <nop>
"nnoremap K <nop>
"nnoremap Q <nop>
"nnoremap R <nop>
"nnoremap <c-z> <nop>
autocmd vimenter * unmap a%

" Visuale
vnoremap <up> <up>zz
vnoremap <down> <down>zz
vnoremap i I
vnoremap a A
vnoremap y "+y

"Substitutions
nmap s yiw:S/<c-r>"<right>//<left>
nmap S yiW:S/<c-r>"<right>//<left>
vnoremap s :s///g<left><left><left>

" Command Mode
cnoremap <c-n> split<cr>:TabVifm<cr>


" Markdown
" nnoremap <up> gkzz
nnoremap <down> gjzz

"Filetype Mappings
autocmd filetype javascript nnoremap <silent><buffer><c-p> :w<cr>:!node %<cr>
autocmd filetype typescript nnoremap <silent><buffer><c-p> :w<cr>:!ts-node %<cr>
autocmd filetype typescript nnoremap <silent><buffer><c-l> :term tsc<cr>:bn<cr>
autocmd filetype python nnoremap <silent><buffer><c-p> :w<cr>:!python %<cr>
autocmd filetype markdown ia <buffer> h1 #
autocmd filetype markdown ia <buffer> h2 ##
autocmd filetype markdown ia <buffer> h3 ###
autocmd filetype markdown ia <buffer> h4 ####
autocmd filetype markdown ia <buffer> h5 #####
autocmd filetype markdown ia <buffer> h6 ######

" Command Mode
ca ls !ls -F
ca la !ls -aF
ca ll !ls -laF
ca mk !mkdir
ca to !touch
ca mv !mv
ca ex !chmod +x %<C-R>=Eatchar('\s')<CR>
ca rm !rm
ca rma !sudo rm -rv
ca so !source ~/.zshrc
ca mkdir !mkdir
ca vifm Vifm
ca vrc e ~/.config/nvim/init.vim
ca vma e ~/.config/nvim/mappings.vim
ca vpl e ~/.config/nvim/plugins.vim
ca vpc e ~/.config/nvim/plugin-configs.vim
ca vlu e ~/.config/nvim/lua/nvim-lsp.lua
ca irc e ~/.config/i3/config
ca bsh e ~/.bashrc
ca pol e ~/.config/polybar/config
ca zsh e ~/.zshrc
ca kit e ~/.config/kitty/kitty.conf
ca sxh e ~/.config/sxhkd/sxhkdrc
ca bsp e ~/.config/bspwm/bspwmrc
ca mux e ~/tmux.conf
ca sp vsplit
ca p %:.
ca f %:.:h



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

" Commenting
nnoremap <silent><space>gc mm:s/\v^/" <cr>`m
nnoremap <silent><space>gu mm:s/\v^" //<cr>`m
vnoremap <silent><space>gc :s/\v^/" <cr>
vnoremap <silent><space>gu :s/\v^" //<cr>
