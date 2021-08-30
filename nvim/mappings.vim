" nnoremap <esc> <esc>:nohl<cr>
nnoremap <c-z> u
nnoremap Q <nop>
nnoremap <tab> :BufferNext<cr>
nnoremap <s-tab> :BufferPrevious<cr>
" nnoremap <esc> :nohl<cr><esc>
nnoremap <c-f> /\v
nnoremap <c-p> :Files<cr>
nnoremap <space>r :EasyReplaceWord<cr>
nnoremap <s-up> v<up>
nnoremap <s-down> v<down>
nnoremap <s-left> v<left>
nnoremap <s-right> v<right>
nnoremap <c-s> :w<cr>
nnoremap <s-home> v<home>
nnoremap <s-end> v<end>
nnoremap ss :s/\v//g<left><left><left>
nnoremap Ss :s/\v<c-r>=expand("<cword>")<cr>//g<left><left>
nnoremap SS :s/\v<c-r>=expand("<cword>")<cr>//g<left><left>
nnoremap sg :%s/\v//g<left><left><left>
nnoremap Sg :%s/\v<c-r>=expand("<cword>")<cr>//g<left><left>
nnoremap SG :%s/\v<c-r>=expand("<cword>")<cr>//g<left><left>
nnoremap <silent>  <c-w> :BufferClose<CR>
nnoremap <D-b> icat
nnoremap <M-p> icat
nnoremap <D-P> <cmd>NvimTreeToggle<CR>
if has('nvim-0.5')
  nnoremap <c-d> <cmd>lua vim.lsp.buf.definition()<cr>
  nnoremap <c-h> <cmd>lua vim.lsp.buf.hover()<cr>
endif

vnoremap <s-up> <up>
vnoremap <s-down> <down>
vnoremap <s-left> <left>
vnoremap <s-right> <right>
vnoremap <s-home> <home>
vnoremap <s-end> <end>
vnoremap ss :s/\v//g<left><left><left>
vnoremap st "1y:s/\v<c-r>1//g<left><left>
vnoremap St "1y:%s/\v<c-r>1//gc<left><left><left>
vnoremap ST "1y:%s/\v<c-r>1//gc<left><left><left>
vnoremap p "_dP

inoremap <c-h> <c-w>
inoremap <s-up> <esc>v<up>
inoremap <s-down> <esc>v<down>
inoremap <s-left> <esc>v<left>
inoremap <s-right> <esc>v<right>
inoremap <s-home> <esc>v<home>
inoremap <s-end> <esc>v<end>
inoremap <d-v> <c-r>+
inoremap <expr> <bs> Backspace()
inoremap { {}<left>
inoremap <expr> } Rbrace()
inoremap ( ()<left>
inoremap <expr> ) Rpren()
inoremap [ []<left>
inoremap <expr> ] Rbrak()
inoremap <expr> <space> Space()
inoremap <expr> <cr> Enter()

onoremap il ^<esc>v$<left>d
onoremap al ^<esc>v$d


imap <silent><expr><tab>
      \ pumvisible() ? "\<Plug>(completion_confirm_completion)" :
      \ "\<tab>"
inoremap <silent><expr><up>
      \ pumvisible() ? "\<c-p>" :
      \ "\<up>"
inoremap <silent><expr><down>
      \ pumvisible() ? "\<c-n>" :
      \ "\<down>"
noremap <silent><expr><right>
      \ pumvisible() ? "\<c-e>\<right>" :
      \ "\<right>"
inoremap <silent><expr><left>
      \ pumvisible() ? "\<c-e>\<left>" :
      \ "\<left>"
inoremap <silent><expr><cr>
      \ pumvisible() ? "\<c-e>\<cr>":
      \ Enter()

