vim.g.mapleader = " "

local keymap = vim.keymap.set
local opts = {noremap = true, silent = true}


-- Modes
--  n = normal
--  i = insert
--  v = visual
--  x = visual block
--  t = terminal
--  c = command

-- ===========================================
-- 				vim keybinds				--
-- ===========================================

-- 		windows navigation
--  spliting
keymap("n", "<leader>v", "<C-w>v")                          -- split window verticaly
keymap("n", "<leader>s", "<C-w>s")                          -- split window horizontaly
--  moving
keymap({"n", "v", "i", "t"}, "<C-h>", "<C-w>h")             -- move left
keymap({"n", "v", "i", "t"}, "<C-l>", "<C-w>l")             -- move right
keymap({"n", "v", "i", "t"}, "<C-j>", "<C-w>j")             -- move down
keymap({"n", "v", "i", "t"}, "<C-k>", "<C-w>k")             -- move up 
--  resizing
keymap("n", "<C-Left>", ":vertical resize -1<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +1<CR>", opts)
keymap("n", "<C-Up>", ":resize +1<CR>", opts)
keymap("n", "<C-Down>", ":resize -1<CR>", opts)
keymap("n", "<leader>=", "<C-w>=")					    	-- equalize windows size

keymap("n", "<leader>c", ":bp | sp | bn | bd<CR>", opts)               -- close window

--		buffers navigation

keymap({"n", "v"}, "<S-l>", ":bnext<CR>", opts)        -- move to next buffer
keymap({"n", "v"}, "<S-h>", ":bprev<CR>", opts)        -- move to prev buffer

--      editing
keymap("v", "<A-,>", "<gv", opts)           -- indent right
keymap("v", "<A-.>", ">gv", opts)           -- indent left
keymap("v", "<A-j>", ":m .+1<CR>==", opts)  -- move text up
keymap("v", "<A-k>", ":m .-2<CR>==", opts)  -- move text up
keymap("v", "p", '"_dP', opts)              -- yank and paste better
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

--      commands
keymap({"n", "v"}, "<leader>n", ":nohls<CR>", opts)         -- clear research

-- ===============================================
-- 				plugins keybinds				--
-- ===============================================

--		nvim-tree		--

keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
