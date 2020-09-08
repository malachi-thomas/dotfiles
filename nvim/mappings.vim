" Movement
let mapleader=" "
nnoremap <c-left> b
nnoremap <c-right> e
nnoremap <up> gkzz
nnoremap <down> gjzz
nnoremap <home> I
nnoremap <end> A
nnoremap dl 0d$
nnoremap cl 0c$
nnoremap yl 0y$

" Buffers
nnoremap <tab> :tabn<cr>
nnoremap <s-tab> :tabp<cr>
nnoremap <c-u> :CocCommand snippets.editSnippets<cr>
nnoremap <space>u :Files ~/.config/coc/ultisnips<cr>
nnoremap <c-s> :w!<cr>
nnoremap <c-f> :Files<cr>
nnoremap <space>b :Buffer<cr>

" Extra
inoremap <esc> <right><esc>
nnoremap ; :
nnoremap : ;
nnoremap <esc> <esc>:nohl<cr>
nnoremap <c-insert> y
inoremap <c-h> <c-w>
inoremap <c-j> <c-o>z=1<cr>
cnoremap <c-h> <c-w>
nnoremap Y y$
nnoremap y "+y

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
nmap gs yiw:S/<c-r>"<right>//<left>
nmap gS yiW:S/<c-r>"<right>//<left>
" nmap tt srtt
vnoremap gs :s///g<left><left><left>

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
ca vrc tabe ~/.config/nvim/init.vim
ca vma tabe ~/.config/nvim/mappings.vim
ca vpl tabe ~/.config/nvim/plugins.vim
ca irc tabe ~/.config/i3/config
ca bsh tabe ~/.bashrc
ca pol tabe ~/.config/polybar/config
ca zsh tabe ~/.zshrc
ca kit tabe ~/.config/kitty/kitty.conf
ca sxh tabe ~/.config/sxhkd/sxhkdrc
ca bsp tabe ~/.config/bspwm/bspwmrc
ca mux tabe ~/tmux.conf
ca e tabe
ca sp vsplit

" Coc
inoremap <silent><expr><up> pumvisible() ? "\<c-p>" : "\<c-o>zz<c-o>gk<c-o>zz"
inoremap <silent><expr><down> pumvisible() ? "\<c-n>" : "\<c-o>zz<c-o>gj<c-o>zz"
inoremap <silent><expr><tab> pumvisible() ? "\<c-y>" : coc#expandableOrJumpable() ? "\<c-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<cr>" : <sid>check_back_space() ? "\<tab>" : coc#refresh()
inoremap <silent><expr><cr> pumvisible() ? "\<c-g>n<cr>" : "\<cr>"
nmap <leader>rr <Plug>(coc-rename)
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>



" Markdown
autocmd filetype vimwiki inoremap < \<
autocmd filetype vimwiki inoremap > \>
nnoremap <up> gkzz
nnoremap <down> gjzz

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


