" Movement
let mapleader=" "
nnoremap <c-left> b
nnoremap <c-right> e
nnoremap <c-{> :echo "hello"<cr>
nnoremap <space>s :vsplit<cr>:Buffers<cr>
nnoremap <up> gkzz
nnoremap <down> gjzz
nnoremap <home> I
nnoremap <end> A
nnoremap dl 0d$
nnoremap cl 0c$
nnoremap yl 0y$

" Buffers
nnoremap <tab> :bn<cr>
nnoremap <s-tab> :bp<cr>
nnoremap <c-u> :CocCommand snippets.editSnippets<cr>
nnoremap <space>u :Files ~/.config/coc/ultisnips<cr>
nnoremap <c-s> :w!<cr>
nnoremap <c-q> :w!<cr>:bd!<cr>
nnoremap <c-f> :Files<cr>

" Windows
nnoremap <space>v :vsplit<cr>:bn<cr>

" Extra
inoremap <esc> <right><esc>
nnoremap ; :
nnoremap : ;
nnoremap <esc> <esc>:nohl<cr>
nnoremap <c-insert> y
nnoremap <S-Home> v^
nnoremap <S-End> v$
nnoremap <s-insert> p
nnoremap <c-j> z=1<cr><cr>
vnoremap <c-insert> y
vnoremap <s-insert> p
inoremap <c-h> <c-w>
inoremap <c-j> <c-o>z=1<cr>
cnoremap <c-h> <c-w>
nnoremap Y y$

" Unmap
nnoremap j <nop>
nnoremap k <nop>
nnoremap l <nop>
nnoremap K <nop>
nnoremap Q <nop>
nnoremap R <nop>
nnoremap <c-z> <nop>

" Visuale
nnoremap <s-up> v<up>
nnoremap <s-down> v<down>
nnoremap <up> <up>zz
nnoremap <down> <down>zz

"Substitutions
nmap s yiw:S/<c-r>"<right>//<left>
nmap S yiW:S/<c-r>"<right>//<left>
nmap tt srtt
vnoremap ss :s///g<left><left><left>
inoremap <up> <c-o>zz<c-o>gk<c-o>zz
inoremap <down> <c-o>zz<c-o>gj<c-o>zz

" Command Mode
ca ls !ls -F
ca la !ls -aF
ca ll !ls -laF
ca mk !mkdir
ca mv !mv
ca ex !chmod +x %<C-R>=Eatchar('\s')<CR>
ca rm !rm
ca rma !sudo rm -rv
ca .1 cd ../
ca .2 cd ../../
ca .3 cd ../../../
ca .4 cd ../../../../
ca .5 cd ../../../../../
ca .6 cd ../../../../../../
ca .7 cd ../../../../../../../
ca .8 cd ../../../../../../../../
ca .9 cd ../../../../../../../../../
ca so !source ~/.zshrc
ca mkdir !mkdir
ca vifm Vifm
ca vrc e ~/.config/nvim/init.vim
ca vma e ~/.config/nvim/mappings.vim
ca vpl e ~/.config/nvim/plugins.vim
ca irc e ~/.config/i3/config
ca bsh e ~/.bashrc
ca pol e ~/.config/polybar/config
ca zsh e ~/.zshrc
ca kit e ~/.config/kitty/kitty.conf
ca sxh e ~/.config/sxhkd/sxhkdrc
ca bsp e ~/.config/bspwm/bspwmrc
ca mux e ~/tmux.conf

" Coc
inoremap <silent><expr><up> pumvisible() ? "\<c-p>" : "\<c-o>zz<c-o>gk<c-o>zz"
inoremap <silent><expr><down> pumvisible() ? "\<c-n>" : "\<c-o>zz<c-o>gj<c-o>zz"
inoremap <silent><expr><tab> pumvisible() ? "\<c-y>" : coc#expandableOrJumpable() ? "\<c-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<cr>" : <sid>check_back_space() ? "\<tab>" : coc#refresh()
inoremap <silent><expr><cr> pumvisible() ? "\<c-g>n<cr>" : "\<cr>"

" Markdown
autocmd filetype vimwiki inoremap < \<
autocmd filetype vimwiki inoremap > \>
nnoremap <up> gkzz
nnoremap <down> gjzz
inoremap <up> <c-o>zz<left><c-o>gk<c-o>zz
inoremap <down> <c-o>zz<left><c-o>gj<c-o>zz

"Filetype Mappings
autocmd filetype javascript nnoremap <silent><buffer><c-p> :w<cr>:!node %<cr>
autocmd filetype typescript nnoremap <silent><buffer><c-p> :w<cr>:!ts-node %<cr>
autocmd filetype python nnoremap <silent><buffer><c-p> :w<cr>:!python %<cr>
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

function RemoveBuffer()
  silent! w!
  silent! bd!
endfunction

function WQ()
  silent! w!
  silent! q!
endfunction

func Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc

" vim-sandwich
nmap ds sdb
nmap si sai


