-- lua/core/options.lua

local o = vim.opt

-- ======= General Settings =======

o.number = true
o.relativenumber = true
o.cursorline = false
o.signcolumn = "yes"
o.wrap = true
o.ruler = true
-- o.colorcolumn = "80,100"
-- o.laststatus = 1
o.linebreak = false
o.showmode = true
o.list = true
-- o.listchars = true
o.fileencoding = "utf-8"
o.encoding = "utf-8"
o.lazyredraw = true
o.wildmenu = true
-- o.wildmode = string or table
o.modifiable = true
o.hidden = false
o.showmatch = true
-- o.matchpairs = string or table

-- ======= Tab & Indent =======

o.softtabstop = 4
o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4
o.smarttab = true
o.smartindent = true
o.autoindent = true

-- ======= Search =======

o.ignorecase = true
o.smartcase = true
o.incsearch = true
o.hlsearch = false

-- ======= View & UI =======

o.termguicolors = true
o.background = "dark"
o.clipboard = "unnamedplus"
o.cmdheight = 1
o.updatetime = 300
o.timeoutlen = 500

-- ======= Backup, Swap and Undo =======

o.backup = false
o.writebackup = false
o.swapfile = false
o.undofile = true
-- o.undodir = "~/.config/nvim/undo"
o.autoread = true

-- ======= Mouse & Scroll =======

o.mouse = "a"
-- o.guicursor = ""
o.scrolljump = 5
o.scrolloff = 8
o.sidescrolloff = 8

-- ======= Window =======

o.splitright = true
o.splitbelow = true

-- ======= Miscellaneous =======

o.completeopt = { "menu", "menuone", "noselect"}
o.shortmess:append("c")
