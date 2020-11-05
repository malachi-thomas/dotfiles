"==================================================================================================
let mapleader = ' '
" Basic Movement
" nnoremap <silent><up> kzz
" nnoremap <silent><down> jzz
nnoremap <silent><left> h
nnoremap <silent><right> l
nnoremap <pageup> <c-u>
nnoremap <pagedown> <c-d>
" nnoremap G Gzz
nnoremap <home> ^
" nnoremap * *zz
" nnoremap # #zz
" nnoremap n nzz
" nnoremap N Nzz
inoremap <home> <c-o>^

" Buffers
nnoremap <silent><c-s> :w!<cr>
nnoremap <c-c> :wqa!<cr>
nnoremap <silent> ZZ :call BufferClose()<cr>
nnoremap <space>b :Clap buffers<cr> 
nnoremap / /\v
nnoremap <space><space> :Files<cr>

nnoremap <space>s :e ~/dotfiles/nvim/snippets/<c-r>=expand(&ft)<cr>.json<cr>
nnoremap m @
nnoremap mm @m
nnoremap M @@
vnoremap / /\v
nnoremap <tab> :BufferNext<cr>
nnoremap <S-tab> :BufferPrevious<cr>
nnoremap <silent><c-w> :call BufferClose()<cr>

" splits
nnoremap <space>vs :vsplit<cr>
nnoremap <space>sp :split<cr>
nnoremap <M-up> <c-w> k
nnoremap <M-down> <c-w>j
nnoremap <M-left> <c-w>h
nnoremap <M-right> <c-w>l

" Extra
inoremap <c-h> <c-w>
cnoremap <c-h> <c-w>
nnoremap <esc> <esc>:nohl<cr>

" Unmap
nnoremap K <nop>
nnoremap Q <nop>
nnoremap <c-z> <nop>
nnoremap S <nop>
nnoremap H <nop>
nnoremap L <nop>
nnoremap r <nop>
nnoremap R <nop>

" Visuale
vnoremap <up> <up>zz
vnoremap <down> <down>zz
vnoremap p "_dP

" terminal
nnoremap <c-t> :60vs<cr>:term<cr>i
tnoremap <esc> <C-\><C-n>
tnoremap <M-up> <c-\><c-n><c-w>k
tnoremap <M-down> <c-\><c-n><c-w>j
tnoremap <M-left> <c-\><c-n><c-w>h
tnoremap <M-right> <c-\><c-n><c-w>l

"Substitutions 
nnoremap ss :s/\v<c-r>=expand("<cword>")<cr>//g<left><left>
nnoremap Ss :s/\v<c-r>=expand("<cword>")<cr>//gc<left><left><left>
nnoremap sg :%s/\v<c-r>=expand("<cword>")<cr>//g<left><left>
nnoremap Sg :%s/\v<c-r>=expand("<cword>")<cr>//gc<left><left><left>
vnoremap s :s/\v//g<left><left>
vnoremap S :s/\v//gc<left><left><left>

" Command Mode
ca vrc e ~/.config/nvim/init.vim
ca vma e ~/.config/nvim/mappings.vim
ca vpl e ~/.config/nvim/plugins.vim
ca vpc e ~/.config/nvim/plugin-configs.vim
ca q q!
ca w w!
ca h vert h

" Plugin Mappings 
"
nnoremap <space><space> :Telescope find_files<cr>
nnoremap <space>r :Telescope oldfiles<cr>
nnoremap / :Telescope current_buffer_fuzzy_find<cr>
nmap <f1> <Plug>VimwikiNextLink
nmap <f2> <Plug>VimwikiAddHeaderLevel
nmap <f3> <Plug>VimwikiDiaryNextDay
nmap <f4> <Plug>VimwikiDiaryPrevDay
nmap <f5> <Plug>VimwikiPrevLink
nmap <f6> <Plug>VimwikiGoBackLink

imap <silent><expr><tab>
      \ pumvisible() ? "\<Plug>(completion_confirm_completion)" :
      \ vsnip#expandable() ? "\<Plug>(vsnip-expand)" :
      \ <sid>check_back_space() ? "\<tab>" :
      \ "\<plug>(completion_trigger)"
inoremap <silent><expr><up>
      \ pumvisible() ? "\<c-p>" :
      \ "\<up>"
inoremap <silent><expr><down>
      \ pumvisible() ? "\<c-n>" :
      \ "\<down>"
inoremap <silent><expr><right>
      \ pumvisible() ? "\<c-g>u<right>" :
      \ "\<right>"
inoremap <silent><expr><left>
      \ pumvisible() ? "\<c-g>u<left>" :
      \ "\<left>"
imap <silent><expr><c-s>
      \ pumvisible() ? "\<c-g>u\<plug>(emmet-expand-abbr)" :
      \ "\<plug>(emmet-expand-abbr)"
imap <expr> <c-n>
      \ vsnip#jumpable(1) ? "\<Plug>(vsnip-jump-next)" :
      \ ""


"==================================================================================================
" functions

" if no caricters left
func! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunc

func! BufferClose()
  if len(getbufinfo({'buflisted':1})) > 1
    " more then one buffer open
    if &readonly == 1 || &ft == ''
      bd!
    else
      w! | bd!
    endif
  else
    " only one buffer open
    if &readonly == 1 || &ft == ''
      q!
    else
      wq!
    endif
  endif
endfunc

"==================================================================================================

if has('nvim-0.5')
else
  nnoremap <silent> <esc>OA <up>
  nnoremap <silent> <esc>OB <down>
  nnoremap <silent> <esc>OC <right>
  nnoremap <silent> <esc>OD <left>
  inoremap <silent> <esc>OA <up>
  inoremap <silent> <esc>OB <down>
  inoremap <silent> <esc>OC <right>
  inoremap <silent> <esc>OD <left>
endif

" nmap <silent>gq <plug>(Mac_Play)
" nmap <silent>q <plug>(Mac_RecordNew)

