"==================================================================================================
let mapleader = ' '
" Basic Movement
nnoremap <silent><left> h
nnoremap <silent><right> l
nnoremap <c-left> b
nnoremap <c-right> w
inoremap <c-left> <c-o>b
inoremap <c-right> <c-o>w
nnoremap <pageup> <c-u>
nnoremap <pagedown> <c-d>
nnoremap <home> ^
nnoremap <end> $
nnoremap f f
inoremap <home> <c-o>^
nnoremap <ScrollWheelUp> k
nnoremap <ScrollWheelDown> j
inoremap <ScrollWheelUp> <up>
inoremap <ScrollWheelDown> <down>



" Buffers
nnoremap <silent><c-s> :w!<cr>
nnoremap <c-c> :wqa!<cr>
nnoremap <silent> ZZ :call BufferClose()<cr>
nnoremap <space>b :Clap buffers<cr>
nnoremap / /\v
nnoremap <space><space> :Files<cr>

nnoremap <space>s :e ~/dotfiles/nvim/snippets/<c-r>=expand(&ft)<cr>.json<cr>
" nnoremap m @
" nnoremap mm @m
" nnoremap M @@
vnoremap / /\v
nnoremap <tab> :BufferNext<cr>
nnoremap <M-tab> :BufferPrevious<cr>
nnoremap <silent><c-w> :call BufferClose()<cr>

" splits
" nnoremap <space>vs :vsplit<cr>
" nnoremap <space>sp :split<cr>
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
vnoremap s <nop>
nnoremap <s-up> <nop>
nnoremap <s-down> <nop>

" Visuale

vnoremap <up> <up>zz
vnoremap <down> <down>zz
vnoremap p "_dP
vnoremap <home> ^
vnoremap <end> $<left>

" terminal
" nnoremap <c-t> :60vs<cr>:term<cr>i
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
vnoremap ss :s/\v//g<left><left><left>
vnoremap st "1y:s/\v<c-r>1//g<left><left>
vnoremap SS :s/\v//gc<left><left><left><left>
vnoremap St "1y:%s/\v<c-r>1//gc<left><left><left>

" Command Mode
ca vrc e ~/.config/nvim/init.vim
ca vma e ~/.config/nvim/mappings.vim
ca vpl e ~/.config/nvim/plugins.vim
ca vpc e ~/.config/nvim/plugin-configs.vim
ca vfn e ~/.config/nvim/functions.vim
ca lrc e ~/.config/nvim/lua/init.lua
ca q q!
ca w w!
ca h vert h

" filetype mappings
autocmd filetype vim nnoremap <silent><buffer><c-s> :w<cr>:so $MYVIMRC<cr>
autocmd filetype lua nnoremap <silent><buffer><c-s> :w<cr>:luafile %<cr>
autocmd filetype javascript nnoremap <silent><buffer><c-l> :!node %<cr>
autocmd filetype rust nnoremap <silent><buffer><c-l> :!cargo run<cr>
autocmd filetype python nnoremap <silent><buffer><c-l> :!python %<cr>
autocmd filetype c nnoremap <silent><buffer><c-l> :w<cr>:!gcc %<cr>:!./a.out<cr>
autocmd filetype cpp nnoremap <silent><buffer><c-l> :w<cr>:!g++ %<cr>:!./a.out<cr>
" autocmd FileType rust nnoremap <silent><buffer><c-l> :<cr>:!rustc %<cr>:!./

" Plugin Mappings
nnoremap <space><space> :Telescope find_files<cr>
nnoremap <space>r :Telescope oldfiles<cr>
nmap <f1> <Plug>VimwikiNextLink
nmap <f2> <Plug>VimwikiAddHeaderLevel
nmap <f3> <Plug>VimwikiDiaryNextDay
nmap <f4> <Plug>VimwikiDiaryPrevDay
nmap <f5> <Plug>VimwikiPrevLink
nmap <f6> <Plug>VimwikiGoBackLink

imap <silent><expr><tab>
      \ pumvisible() ? "\<Plug>(completion_confirm_completion)" :
      \ vsnip#expandable() ? "\<Plug>(vsnip-expand)" :
      \ Check_back_space() ? "\<tab>" :
      \ "\<plug>(completion_trigger)"
imap <expr><expr><c-space>
      \ vsnip#jumpable(1) ? "\<Plug>(vsnip-jump-next)" :
      \ ""
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

"==================================================================================================
" functions

inoremap { {}<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap <expr> <cr> Enter()
inoremap <expr> <bs> Backspace()
inoremap <expr> } Rbrace()
inoremap <expr> ) Rpren()
inoremap <expr> ] Rbrak()
inoremap <expr><space> Space()

"==================================================================================================

if has('nvim-0.5')
  nnoremap gd <cmd>lua vim.lsp.buf.definition()<cr>
  nnoremap <c-h> <cmd>lua vim.lsp.buf.hover()<cr>
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


