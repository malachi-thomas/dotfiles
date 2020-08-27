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
nnoremap <S-Home> v^
nnoremap <S-End> v$
nnoremap <s-insert> p
vnoremap <c-insert> y
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
nmap s yiw:S/<c-r>"<right>//<left>
nmap S yiW:S/<c-r>"<right>//<left>
nmap tt srtt
vnoremap ss :s///g<left><left><left>


" Coc
inoremap <silent><expr><up> pumvisible() ? "\<c-g>u<up>" : "\<up>"
inoremap <silent><expr><down> pumvisible() ? "\<c-g>u<down>" : "\<down>"
inoremap <silent><expr><cr> pumvisible() ? "\<c-y>" : "\<cr>"
inoremap <silent><expr><tab> pumvisible() ? "\<down>" : coc#expandableOrJumpable() ? "\<c-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<cr>" : <sid>check_back_space() ? "\<tab>" : coc#refresh()
inoremap <silent><expr><s-tab> pumvisible() ? "\<up>" : "\<s-tab>"


"Filetype Mappings
autocmd filetype javascript nnoremap <silent><buffer><c-p> :w<cr>:!node %<cr>
autocmd filetype typescript nnoremap <silent><buffer><c-p> :w<cr>:!ts-node %<cr>
autocmd filetype python nnoremap <silent><buffer><c-p> :w<cr>:!python %<cr>
let g:user_emmet_expandabbr_key='<c-l>'
autocmd filetype html imap <expr><silent><buffer><c-l> emmet#expandAbbrIntelligent("\<c-l>")

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction


