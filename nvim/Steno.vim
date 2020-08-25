" Steno

" Leaders <c-b>

" Movment
inoremap <c-up> <c-o>{<c-o>zz
inoremap <c-down> <c-o>}<c-o>zz

" Visual
inoremap <c-v><c-c> <c-o>v
inoremap <c-v><c-l> <c-o>^<c-o>v$
inoremap <c-v><c-v> <c-o>V
inoremap <c-v><c-w> <c-o>viw

" Yanking
inoremap <c-y><c-y> <c-o>yy
inoremap <c-y><c-w> <c-o>yiw
inoremap <c-y><c-l> <c-o>^<c-o>y$

" Buffer
inoremap <c-u> <c-o>u
inoremap <c-r> <c-o><c-r>
inoremap <c-s> <c-o>:w!<cr>
inoremap <c-w> <c-o>:w!<cr>
inoremap <c-q> <c-o>:wq!<cr>
inoremap <c-x> <c-o>:q!<cr>
inoremap <c-p> <c-o>p
inoremap <c-f> <c-o>/
inoremap <c-n> <c-o>n
inoremap <c-b> <c-o>N
inoremap <c-o> <c-o>o

" Deleteing
inoremap <c-d><c-l> <c-o>^<c-o>d$
inoremap <c-d><c-d> <c-o>dd
inoremap <c-d><up> <c-o>d<up>
inoremap <c-d><down> <c-o>d<down>


au insertleave * :start
"au insertleave * normal l
au VimEnter * :start
au VimEnter *  normal zz
