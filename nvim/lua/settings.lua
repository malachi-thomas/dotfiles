
-- UI settings
vim.opt.syntax = 'on'
vim.opt.background = 'dark'
vim.cmd('colorschem gruvbox')
vim.opt.relativenumber = true
vim.opt.termguicolors = true

-- vim.bo.filetype = 'filetype indent on'
vim.cmd('filetype indent plugin on')
vim.opt.wildmode = 'longest,full'
vim.opt.list = true
vim.opt.listchars = { tab = '→ ', trail = '•',eol = '↲', precedes = '←', extends = '→', nbsp = '·'}
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.wrap = false
vim.opt.hidden = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 0
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.showmode = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.mouse = 'a'
vim.opt.clipboard = vim.opt.clipboard + 'unnamed'
vim.opt.updatetime = 50
vim.opt.path = vim.opt.path + '.' + '**'
vim.opt.laststatus = 2
vim.opt.spelllang = 'en_gb'
vim.opt.matchpairs = vim.opt.matchpairs + '<:>'
vim.opt.shortmess = vim.opt.shortmess + 'c'
vim.opt.lazyredraw = true
vim.opt.backspace = 'indent,eol,start'
vim.opt.omnifunc= 'v:lua.vim.lsp.omnifunc'
vim.opt.scrolloff = 5
vim.opt.completeopt = 'menuone,noselect'
--vim.opt.completeopt = 'menuone,noinsert'
vim.opt.hlsearch = true
vim.opt.compatible = false
vim.opt.timeoutlen = 500
vim.opt.showmode = false
vim.opt.ruler = false
vim.opt.showcmd = true
vim.opt.timeoutlen = 1000 -- how long vim waits for next key press
vim.opt.pumheight = 10 -- completion menu hight
vim.opt.pumwidth = 30 -- completion munu widtha

