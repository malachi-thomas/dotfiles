" Movement
let mapleader=" "
nnoremap <c-up> {zz
nnoremap <c-down> }zz
nnoremap <c-left> b
nnoremap <c-right> e
nnoremap <c-{> :echo "hello"<cr>
nnoremap <space>t :Vista finder<cr>
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
nnoremap <space>e :e 
nnoremap <c-u> :CocCommand snippets.editSnippets<cr>
nnoremap <c-s> :w!<cr>
nnoremap <c-q> :wq!<cr>
nnoremap <cr> gf
nnoremap <c-f> <nop>
nnoremap <c-f>f :Files<cr>
nnoremap <c-f>g :Rg<cr>


" Windows
nnoremap <m-s> :vsplit<cr>:bn<cr>

" Extra
nnoremap ; :
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
nnoremap r <nop>
nnoremap R <nop>
nnoremap <c-z> <nop>

" Visuale
nnoremap vv V

"Substitutions
nmap s yiw:S/<c-r>"<right>//<left>
nmap S yiW:S/<c-r>"<right>//<left>
nmap tt srtt
vnoremap ss :s///g<left><left><left>
inoremap <up> <c-o>zz<c-o>gk<c-o>zz
inoremap <down> <c-o>zz<c-o>gj<c-o>zz

" Coc
inoremap <silent><expr><up> pumvisible() ? "\<c-p>" : "\<c-o>zz<c-o>gk<c-o>zz"
inoremap <silent><expr><down> pumvisible() ? "\<c-n>" : "\<c-o>zz<c-o>gj<c-o>zz"
inoremap <silent><expr><tab> pumvisible() ? "\<c-y>" : coc#expandableOrJumpable() ? "\<c-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<cr>" : <sid>check_back_space() ? "\<tab>" : coc#refresh()
inoremap <silent><expr><cr> pumvisible() ? "\<c-g>n<cr>" : "\<cr>"

" Markdown
nnoremap <space>mb ciw**<c-r>"**<esc>Bee
nnoremap <space>mi ciw*<c-r>"*<esc>Bee
nnoremap <space>mB ciw***<c-r>"***<esc>Bee
nnoremap <space>mI ciw***<c-r>"***<esc>Bee

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

nnoremap ZZ :wq!<cr>:bw<cr>
