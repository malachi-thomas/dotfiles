"==================================================================================================
let mapleader = ' '
" Normal mode
nnoremap <silent><left> h
nnoremap <silent><right> l
nnoremap <c-left> b
nnoremap <c-right> w
nnoremap <pageup> <c-u>
nnoremap <pagedown> <c-d>
nnoremap <home> 0^
nnoremap <end> $
nnoremap f <plug>(clever-f-f)
nnoremap <silent><c-s> :w!<cr>
nnoremap <c-c> :wqa!<cr>
nnoremap <space>b :Clap buffers<cr>
nnoremap / /\v
nnoremap <space><space> :Files<cr>
nnoremap <space>s :e ~/dotfiles/nvim/snippets/<c-r>=expand(&ft)<cr>.json<cr>
nnoremap <tab> :BufferNext<cr>
nnoremap <M-tab> :BufferPrevious<cr>
nnoremap <silent><c-w> :call BufferClose()<cr>
nnoremap <silent>ZZ :call BufferClose()<cr>
nnoremap <M-up> <c-w> k
nnoremap <M-down> <c-w>j
nnoremap <M-left> <c-w>h
nnoremap <M-right> <c-w>l
nnoremap <c-z> u
nnoremap <c-f> /\v
nnoremap <silent><esc> <esc>:nohl<cr>
nnoremap K <nop>
nnoremap Q <nop>
nnoremap S <nop>
nnoremap r <nop>
nnoremap R <nop>
vnoremap s <nop>
nnoremap <s-up> <nop>
nnoremap <s-down> <nop>
nnoremap <s-up> v<up>
nnoremap <s-down> v<down>
nnoremap <s-left> v<left>
nnoremap <s-right> v<right>
nnoremap <s-home> v<home>
nnoremap <s-end> v<end>
nnoremap <c-t> :FloatermToggle<cr>
nnoremap ss :s/\v<c-r>=expand("<cword>")<cr>//g<left><left>
nnoremap Ss :s/\v<c-r>=expand("<cword>")<cr>//gc<left><left><left>
nnoremap sg :%s/\v<c-r>=expand("<cword>")<cr>//g<left><left>
nnoremap Sg :%s/\v<c-r>=expand("<cword>")<cr>//gc<left><left><left>
nnoremap <c-p> :FZF<cr>
nnoremap <space>r :Telescope oldfiles<cr>
" nnoremap <c-a> ggVG
nmap <f1> <Plug>VimwikiNextLink
nmap <f2> <Plug>VimwikiAddHeaderLevel
nmap <f3> <Plug>VimwikiDiaryNextDay
nmap <f4> <Plug>VimwikiDiaryPrevDay
nmap <f5> <Plug>VimwikiPrevLink
nmap <f6> <Plug>VimwikiGoBackLink

" Insert mode
inoremap <home> <c-o>0<c-o>^
inoremap <c-left> <c-o>b
inoremap <c-right> <c-o>w
inoremap <c-h> <c-w>
inoremap <c-f> <esc>/\v
inoremap <s-up> <esc>v<up>
inoremap <s-down> <esc>v<down>
inoremap <s-left> <esc>v<left>
inoremap <s-right> <esc>v<right>
inoremap <s-home> <esc>v<home>
inoremap <s-end> <esc>v<end>
inoremap { {}<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap <expr> <cr> Enter()
inoremap <expr> <bs> Backspace()
inoremap <expr> } Rbrace()
inoremap <expr> ) Rpren()
inoremap <expr> ] Rbrak()
inoremap <expr><space> Space()
inoremap <c-v> <c-r>+
inoremap <c-a> <c-o>gg<c-o>V<c-o>G
imap <c-s> <plug>(emmet-expand-abbr)

" Visuale mode
vnoremap <c-f> /\v
vnoremap <up> <up>zz
vnoremap <down> <down>zz
vnoremap p "_dP
vnoremap <home> ^
vnoremap <end> $<left>
vnoremap <s-up> <up>
vnoremap <s-down> <down>
vnoremap <s-left> <left>
vnoremap <s-right> <right>
vnoremap ss :s/\v//g<left><left><left>
vnoremap st "1y:s/\v<c-r>1//g<left><left>
vnoremap SS :s/\v//gc<left><left><left><left>
vnoremap St "1y:%s/\v<c-r>1//gc<left><left><left>
vnoremap <bs> d
vnoremap <c-c> y

" Command mode
cnoremap <c-h> <c-w>
ca vrc e ~/dotfiles/nvim/init.vim
ca vma e ~/dotfiles/nvim/mappings.vim
ca vpl e ~/dotfiles/nvim/plugins.vim
ca vpc e ~/dotfiles/nvim/plugin-configs.vim
ca vfn e ~/dotfiles/nvim/functions.vim
ca lrc e ~/dotfiles/nvim/lua/init.lua
ca q q!
ca w w!
ca h vert h

" Terminal mode
tnoremap <esc> <C-\><C-n>:x<cr>
tnoremap <M-up> <c-\><c-n><c-w>k
tnoremap <M-down> <c-\><c-n><c-w>j
tnoremap <M-left> <c-\><c-n><c-w>h
tnoremap <M-right> <c-\><c-n><c-w>l
tnoremap <c-t> <c-\><c-n>:FloatermToggle<cr>

" filetype mappings
autocmd filetype javascript nnoremap <silent><buffer><c-l> :!node %<cr>
autocmd filetype rust nnoremap <silent><buffer><c-l> :!cargo run<cr>
autocmd filetype python nnoremap <silent><buffer><c-l> :!python %<cr>
autocmd filetype c nnoremap <silent><buffer><c-l> :w<cr>:!gcc %<cr>:!./a.out<cr>
autocmd filetype cpp nnoremap <silent><buffer><c-l> :w<cr>:!g++ %<cr>:!./a.out<cr>

" Auto completion
imap <silent><expr><tab>
      \ vsnip#available(1) ? "\<Plug>(vsnip-expand-or-jump)" :
      \ pumvisible() ? compe#confirm() :
      \ Check_back_space() ? "\<tab>" :
      \ compe#complete()
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
inoremap <silent><expr><cr>
      \ pumvisible() ? compe#confirm() :
      \ "\<cr>"

" imap <silent><expr><tab>
"       \ pumvisible() ? "\<Plug>(completion_confirm_completion)" :
"       \ vsnip#expandable() ? "\<Plug>(vsnip-expand)" :
"       \ Check_back_space() ? "\<tab>" :
"       \ "\<plug>(completion_trigger)"
" imap <expr><expr><c-space>
"       \ vsnip#jumpable(1) ? "\<Plug>(vsnip-jump-next)" :
"       \ ""
" inoremap <silent><expr><up>
"       \ pumvisible() ? "\<c-p>" :
"       \ "\<up>"
" inoremap <silent><expr><down>
"       \ pumvisible() ? "\<c-n>" :
"       \ "\<down>"
" inoremap <silent><expr><right>
"       \ pumvisible() ? "\<c-g>u<right>" :
"       \ "\<right>"
" inoremap <silent><expr><left>
"       \ pumvisible() ? "\<c-g>u<left>" :
"       \ "\<left>"

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

" command! -bang -nargs=? -complete=dir Files call fzf#vim#files('', {'source': 'fd'})


