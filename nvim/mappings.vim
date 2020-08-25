" Movement
nnoremap <c-up> {zz
nnoremap <c-down> }zz
nnoremap <c-left> b
nnoremap <c-right> e
nnoremap <c-{> :echo "hello"<cr>
nnoremap <space>t :Vista finder<cr>
nnoremap <space>s :vsplit<cr>:Buffers<cr>

nnoremap <home> I
nnoremap <end> A

" onoremap 
onoremap <left> ^
onoremap <right> $

nnoremap dw diw
nnoremap dW diW
nnoremap dt dit
nnoremap dp dip
nnoremap dP diP
nnoremap cw ciw
nnoremap cW ciW
nnoremap ct cit
nnoremap cp cip
nnoremap cP ciP
nnoremap yw yiw
nnoremap yW yiW
nnoremap yt yit
nnoremap yp yip
nnoremap yP yiP

nnoremap dl ^d$
nnoremap cl ^c$
nnoremap yl ^y$



" Buffers
nnoremap <tab> :bn<cr>
nnoremap <space>e :e 
nnoremap <c-u> :CocCommand snippets.editSnippets<cr>
nnoremap <c-s> :w!<cr>
nnoremap <c-q> :wq!<cr>

" Windows
nnoremap <space>w :vsplit<cr>:bn<cr>


" Extra
nnoremap ; :
nnoremap <esc> <esc>:nohl<cr>
nnoremap / /\v
nnoremap <c-insert> y
vnoremap <c-insert> y
nnoremap <s-insert> p
vnoremap <s-insert> p

vnoremap / /\v
inoremap <c-h> <c-w>
cnoremap <c-h> <c-w>
cnoremap <c-s> \zs
cnoremap <c-e> \ze

" Unmap
nnoremap j <nop>
nnoremap k <nop>
nnoremap l <nop>
nnoremap K <nop>
nnoremap Q <nop>
nnoremap D <nop>
nnoremap C <nop>
nnoremap Y <nop>
nnoremap V <nop>
nnoremap <c-z> <nop>


" Visuale
nnoremap vv V

"Substitutions
nmap ss yiw:S/<c-r>"<right>//<left>
nmap S yiW:S/<c-r>"<right>//<left>
nmap tt srtt
vnoremap ss :s///g<left><left><left>

" Coc
inoremap <silent><expr><up> pumvisible() ? "\<c-p>" : "\<up>"
inoremap <silent><expr><down> pumvisible() ? "\<c-n>" : "\<down>"
inoremap <silent><expr><tab> pumvisible() ? "\<c-y>" : "\<tab>"
inoremap <silent><expr><cr> pumvisible() ? "\<c-g>u<cr>" : "\<cr>"
inoremap <silent><expr><tab> pumvisible() ? coc#_select_confirm() : coc#expandableOrJumpable() ? "\<c-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<cr>" : <sid>check_back_space() ? "\<tab>" : coc#refresh()

" Filetype Mappings
autocmd filetype javascript nnoremap <silent><buffer><c-p> :w<cr>:!node %<cr>
autocmd filetype typescript nnoremap <silent><buffer><c-p> :w<cr>:!ts-node %<cr>
autocmd filetype python nnoremap <silent><buffer><c-p> :w<cr>:!python %<cr>
let g:user_emmet_expandabbr_key='<c-l>'
autocmd filetype html imap <expr><silent><buffer><c-l> emmet#expandAbbrIntelligent("\<c-l>")

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction



