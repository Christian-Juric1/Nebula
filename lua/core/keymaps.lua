-- lua/core/keymaps.lua

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key

vim.g.mapleader = " "


-- ======= Windownavigation =======

map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- ======= Tabnavigation =======

map("n", "<S-l>", ":bnext<CR>", opts)
map("n", "<S-h>", ":bprevious<CR>", opts)

-- ======= Saving File =======

map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)

-- ======= Deleting without clipboard =======

map("n", "x", '"_x', opts)

-- ======= select all =======

map("n", "<C-a>", "gg<S-v>G", opts)
