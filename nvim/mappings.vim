"==================================================================================================
let mapleader = ' '
" Basic Movement
nnoremap <silent><up> kzz
nnoremap <silent><down> jzz
nnoremap <silent><left> h
nnoremap <silent><right> l
nnoremap { {zz
nnoremap } }zz
nnoremap <pageup> <c-u>zz
nnoremap <pagedown> <c-d>zz
nnoremap G Gzz
nnoremap <c-o> <c-o>zz
nnoremap <c-i> <c-i>zz
nnoremap <home> ^
nnoremap * *zz
nnoremap # #zz
nnoremap n nzz
nnoremap N Nzz
inoremap <home> <c-o>^

" Buffers
nnoremap <c-s> :w!<cr>
nnoremap <c-c> :wqa!<cr>
nnoremap <silent>ZZ :call TabClose()<cr>
nnoremap <space>b :Clap buffers<cr> 
nnoremap / /\v
vnoremap / /\v

" Splits
nnoremap <space>vs :vsplit<cr>
nnoremap <s-up> <c-w>k
nnoremap <s-down> <c-w>j
nnoremap <s-left> <c-w>h
nnoremap <s-right> <c-w>l
nnoremap <c-up> <c-w>K
nnoremap <c-down> <c-w>J
nnoremap <c-left> <c-w>H
nnoremap <c-right> <c-w>L

" Tabs
nnoremap <c-t> :tabe<cr>
nnoremap <tab> :tabn<cr>
nnoremap <S-tab> :tabp<cr>
nnoremap <c-w> :tabclose<cr>

" Extra
nnoremap y "*y
nnoremap yi "*yi
inoremap <c-h> <c-w>
nnoremap <space>rg :Rg<cr>
nnoremap <space>hw :h <c-r>=expand("<cword>>")<cr><cr>
cnoremap <c-h> <c-w>
nnoremap <esc> <esc>:nohl<cr>
inoremap <c-k> <c-x><c-k>
inoremap <c-l> <c-x><c-l>
inoremap <esc> <right><esc>

" Editing
nnoremap dl :normal 0d$<cr>
nnoremap cl :normal 0c$<cr>
nnoremap yl :normal 0y$<cr>

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
nnoremap sg :%s/<c-r>=expand("<cword>")<cr>//g<left><left>
nnoremap SS :%s/<c-r>=expand("<cWORD>>")<cr>//g<left><left>
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

" javascript ia
" autocmd filetype javascript ia col colume

" adds all files with the same extension to the argslist
command! Argadd execute 'argadd **/*%:e'
command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
command! -nargs=* DSub execute 'call DSub(<f-args>)'

" Terminal mappings
nnoremap <space>tt :FloatermNew<cr>
tnoremap<esc> <c-\><c-n>

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
inoremap <c-space> <c-r>=(UltiSnips#ExpandSnippetOrJump())<cr>
nnoremap <space><space> :Clap files<cr>
nnoremap <space>f :Files %:h<cr>
nnoremap <space><cr> :Clap proj_tags<cr>
nnoremap <space>sn :UltiSnipsEdit<cr>

imap <silent><expr><tab>
      \ <sid>check_back_space() ? "\<tab>" :
      \  completion#trigger_completion()
inoremap <silent><expr><up>
      \ pumvisible() ? "\<c-p>" :
      \ "\<up><c-o>zz"
inoremap <silent><expr><down>
      \ pumvisible() ? "\<c-n>" :
      \ "\<down><c-o>zz"
inoremap <silent><expr><right>
      \ pumvisible() ? "\<c-g>u<right>" :
      \ "\<right>"
inoremap <silent><expr><left>
      \ pumvisible() ? "\<c-g>u<left>" :
      \ "\<left>"
imap <silent><expr><c-s>
      \ pumvisible() ? "\<c-g>u\<plug>(emmet-expand-abbr)" :
      \ "\<plug>(emmet-expand-abbr)"

"==================================================================================================
" functions

" if no caricters left
func! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunc

" look at abbriviations docs for this one
func! Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc

func! QuickfixFilenames()
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunc

func! DSub(arg1, arg2)
  Argadd
  exec 'argdo %s/' . a:arg1 . '/' . a:arg2 . '/ge'
endfunc

func! TabClose()
  if winnr('$') > 1
    silent! close!
  elseif &ft == 'fzf' || &ft == ''
    silent! bw! | q!
  elseif tabpagenr('$')
    silent! wq!
  else
    silent! tabclose!
  endif
endfunc

"==================================================================================================

if has('nvim-0.5')
  nnoremap <silent>gr <cmd>lua vim.lsp.buf.references()<CR>
  nnoremap <silent>gd :lua vim.lsp.buf.definition()<cr>
  nnoremap <silent><space>rn :lua vim.lsp.buf.rename()<cr>
  nnoremap <silent><c-h> :lua vim.lsp.buf.hover()<cr>
  nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
  nnoremap <silent> gd    <cmd>lua vim.lsp.buf.implementation()<CR>
  nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
  nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
  nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
  nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
  nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
  nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>

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
  imap <silent><expr><tab>
        \ <sid>check_back_space() ? "\<tab>" :
        \  coc#refresh()
endif

