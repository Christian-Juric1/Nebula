-- lua/core/keymaps.lua

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- General keymaps
keymap("n", "<C-h>", "<C-w>h", opts) -- Navigate windows
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>w", ":w<CR>", opts) -- Save
keymap("n", "<leader>q", ":q<CR>", opts) -- Quit
keymap("n", "<leader>h", ":nohlsearch<CR>", opts) -- Clear search highlights

-- Resize windows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>bd", ":bdelete<CR>", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)
keymap("n", "<leader>fc", "<cmd>Telescope colorscheme<CR>", opts)

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- LSP keymaps (will be set in lsp/lspconfig.lua)

-- Terminal
keymap("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", opts)
keymap("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", opts)
keymap("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>", opts)

-- Buffer navigation
keymap("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", opts)
keymap("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", opts)
keymap("n", "<leader>bd", "<cmd>BufferLinePickClose<cr>", opts)

-- Project
keymap("n", "<leader>fp", "<cmd>Telescope projects<cr>", opts)

-- Session
keymap("n", "<leader>ss", "<cmd>lua require('persistence').load()<cr>", opts)
keymap("n", "<leader>sl", "<cmd>lua require('persistence').load({ last = true })<cr>", opts)
keymap("n", "<leader>sq", "<cmd>lua require('persistence').stop()<cr>", opts)

-- Todo comments
keymap("n", "]t", function()
  require("todo-comments").jump_next()
end, opts)
keymap("n", "[t", function()
  require("todo-comments").jump_prev()
end, opts)

-- Package info
keymap("n", "<leader>ns", "<cmd>lua require('package-info').show()<cr>", opts)
keymap("n", "<leader>nc", "<cmd>lua require('package-info').hide()<cr>", opts)
keymap("n", "<leader>nt", "<cmd>lua require('package-info').toggle()<cr>", opts)
keymap("n", "<leader>nu", "<cmd>lua require('package-info').update()<cr>", opts)
keymap("n", "<leader>nd", "<cmd>lua require('package-info').delete()<cr>", opts)
keymap("n", "<leader>ni", "<cmd>lua require('package-info').install()<cr>", opts)
