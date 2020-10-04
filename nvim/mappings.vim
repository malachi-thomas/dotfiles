"==================================================================================================
" let mapleader = ' '
" Basic Movement
nnoremap <up> gkzz
nnoremap <down> gjzz
nnoremap dl :normal 0d$<cr>
nnoremap cl :normal 0c$<cr>
nnoremap yl :normal 0y$<cr>
nnoremap { {zz
nnoremap } }zz
nnoremap <pageup> <c-u>zz
nnoremap <pagedown> <c-d>zz
nnoremap G Gzz
nnoremap <c-o> <c-o>zz
nnoremap <c-i> <c-i>zz
nnoremap <home> ^
nnoremap <s-right> v<right>
nnoremap <s-left> v<left>
nnoremap <s-down> v<down>
nnoremap <s-up> v<up>
vnoremap <s-right> <right>
vnoremap <s-left> <left>
vnoremap <s-down> <down>
vnoremap <s-up> <up>
inoremap <home> <c-o>^

" Buffers
nnoremap <c-s> :w!<cr>
nnoremap <c-q> :wqa!<cr>
nnoremap <silent>ZZ :call TabClose()<cr>
nnoremap <tab> :bn<cr>
nnoremap <space>n :enew<cr>

" Splits
nnoremap <space><up> <c-w>k
nnoremap <space><down> <c-w>j
nnoremap <space><left> <c-w>h
nnoremap <space><right> <c-w>l

" Tabs

" Extra
nnoremap y "*y
nnoremap yi "*yi
inoremap <c-h> <c-w>
nnoremap <space>rg :Rg<cr>
nnoremap <space>hw :h <c-r>=expand("<cword>>")<cr><cr>
cnoremap <c-h> <c-w>
nnoremap <esc> <esc>:nohl<cr>
inoremap <c-k> <c-x><c-k>
inoremap <esc> <right><esc>
inoremap <expr> <cr> Enter()
inoremap <expr> <bs> Backspace()
inoremap <expr> { Lbrace()
inoremap <expr> ( Lpren()
inoremap <expr> [ Lbrak()
inoremap <expr> } Rbrace()
inoremap <expr> ) Rpren()
inoremap <expr> ] Rbrak()

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
vnoremap { {zz
vnoremap } }zz
vnoremap y "*y
vnoremap p "_dP

"Substitutions 
nnoremap SS :s/<c-r>=expand("<cWORD>>")<cr>//g<left><left>
nnoremap ss :s/<c-r>=expand("<cword>")<cr>//g<left><left>
vnoremap ss :s///gi<left><left><left><left>

"Filetype Mappings 

" Command Mode
ca ex !chmod +x %<C-R>=Eatchar('\s')<cr>
ca vrc tabe ~/dotfiles/nvim/init.vim
ca vma tabe ~/dotfiles/nvim/mappings.vim
ca vpl tabe ~/dotfiles/nvim/plugins.vim
ca vpc tabe ~/dotfiles/nvim/plugin-configs.vim
ca irc tabe ~/dotfiles/i3/config
ca pol tabe ~/dotfiles/polybar/config
ca kit tabe ~/dotfiles/kitty/kitty.conf
ca sxh tabe ~/dotfiles/sxhkd/sxhkdrc
ca bsp tabe ~/dotfiles/bspwm/bspwmrc
ca zsh tabe ~/dotfiles/zsh/.zshrc
ca mux tabe ~/dotfiles/tmux/tmux.conf
ca lrc tabe ~/dotfiles/nvim/lua/init.lua
ca p <c-r>=expand("%:.:h")<cr>/<c-r>=Eatchar('\s')<cr>
ca f <c-r>=expand("%:.")<cr><c-r>=Eatchar('\s')<cr>
ca ft <c-r>=expand(&ft)<cr><c-r>=Eatchar('\s')<cr>
ca w <c-r>=expand("<cword>")<cr><c-r>=Eatchar('\s')<cr>
ca W <c-r>=expand("<cWORD>")<cr><c-r>=Eatchar('\s')<cr>
ca sub %s///g<left><left><left><c-r>=Eatchar('\s')<cr>
ca dsub DSub

" adds all files with the same extension to the argslist
command Argadd execute 'argadd **/*%:e'
command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
command -nargs=* DSub execute 'call DSub(<f-args>)'

" Terminal mappings
nnoremap <space>tt :FloatermNew<cr>
tnoremap <esc> <c-\><c-n>

" Testing

" Plugin Mappings 
nmap <f1> <Plug>VimwikiNextLink
nmap <f2> <Plug>VimwikiAddHeaderLevel
nmap <f3> <Plug>VimwikiDiaryNextDay
nmap <f4> <Plug>VimwikiDiaryPrevDay
nmap <f5> <Plug>VimwikiPrevLink
nmap <f6> <Plug>VimwikiGoBackLink
ca mv Move
ca mk Mkdir
imap <c-s> <plug>(emmet-expand-abbr)
inoremap <c-space> <c-r>=(UltiSnips#ExpandSnippetOrJump())<cr>
nnoremap <space><space> :Files<cr>
nnoremap <space>f :Files ~<cr>
nnoremap <space><cr> :Tags<cr>
nnoremap <space>sn :UltiSnipsEdit<cr>

imap <silent><expr><tab>
      \ pumvisible() ? "\<Plug>(completion_confirm_completion)" :
      \ <sid>check_back_space() ? "\<tab>" :
      \  completion#trigger_completion()
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

"==================================================================================================
" Functions

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

function IsASnippet()
  return !empty(UltiSnips#SnippetsInCurrentScope())
endfunction

function! Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunction

function! QuickfixFilenames()
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction

function! DSub(arg1, arg2)
  Argadd
  vimgrep /a:arg1/ ##
  Qargs
  exec 'argdo %s/' . a:arg1 . '/' . a:arg2 . '/ge'
endfunction

function! TabClose()
  if len(getbufinfo({'buflisted':1})) == 1
    silent x
  elseif &ft == ''
    silent bw
  elseif &ft == 'fzf'
    silent x
  else
    silent w | bw
  endif
endfunction

function! Enter()
  if getline('.')[col('.') - 2:col('.') - 1] == '><'
    return "\<c-g>u\<cr>\<c-o>O\<tab>"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '{}'
    return "\<c-g>u\<cr>\<c-o>O\<tab>"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '()'
    return "\<c-g>u\<cr>\<c-o>O\<tab>"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '[]'
    return "\<c-g>u\<cr>\<c-o>O\<tab>"
  else
    return "\<c-g>u\<cr>"
  endif
endfunction

function! Rbrak()
  if getline('.')[col('.') - 2] == '['
    return "\<right>"
  endif
  return "]"
endfunction

function! Rbrace()
  if getline('.')[col('.') - 2] == '{'
    return "\<right>"
  endif
  return "}"
endfunction

function! Rpren()
  if getline('.')[col('.') - 2] == '('
    return "\<right>"
  endif
  return ")"
endfunction

function! Backspace()
  if getline('.')[col('.') - 2:col('.') - 1] == '{}'
    return "\<right>\<bs>\<bs>"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '()'
    return "\<right>\<bs>\<bs>"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '[]'
    return "\<right>\<bs>\<bs>"
  endif
  return "\<bs>"
endfunction

function! Lbrak()
  return "[]\<left>"
endfunction

function! Lpren()
  return "()\<left>"
endfunction

function! Lbrace()
  return "{}\<left>"
endfunction

"==================================================================================================

if has('nvim')
  nnoremap <silent>gr <cmd>lua vim.lsp.buf.references()<CR>
  nnoremap <silent>gd :lua vim.lsp.buf.definition()<cr>
  nnoremap <silent><space>rn :lua vim.lsp.buf.rename()<cr>
  nnoremap <silent><c-h> :lua vim.lsp.buf.hover()<cr>
else
  nnoremap gd <c-]>
  " is vim 
  nnoremap <silent> <esc>OA <up>
  nnoremap <silent> <esc>OB <down>
  nnoremap <silent> <esc>OC <right>
  nnoremap <silent> <esc>OD <left>
  inoremap <silent> <esc>OA <up>
  inoremap <silent> <esc>OB <down>
  inoremap <silent> <esc>OC <right>
  inoremap <silent> <esc>OD <left>
endif

let start = line('.')
let end = search("^$") - 1
let lines = getline(start, end)
" if getline('.')[col('.') - 2:col('.') - 1] == '{}'
function! Test()
  if &ft == 'scss'
    if getlin
    endif
  endfunction
