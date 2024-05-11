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
--
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

keymap("n", "<leader>c", ":bp | sp | bn | bd<CR>", { desc = '[C]lose buffer', silent = true } )

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
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", {expr = true, silent = true})
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", {expr = true, silent = true})

--      commands
keymap({"n", "v"}, "<leader>n", ":nohls<CR>", opts)         -- clear research

-- ===============================================
-- 				plugins keybinds				--
-- ===============================================

--		nvim-tree		--
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

--		vsnip			--
vim.api.nvim_set_keymap('i', '<Tab>', 'vsnip#jumpable(1) ? "<Plug>(vsnip-jump-next)" : "<Tab>"', { expr = true })
vim.api.nvim_set_keymap('s', '<Tab>', 'vsnip#jumpable(1) ? "<Plug>(vsnip-jump-next)" : "<Tab>"', { expr = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', 'vsnip#jumpable(-1) ? "<Plug>(vsnip-jump-prev)" : "<S-Tab>"', { expr = true })
vim.api.nvim_set_keymap('s', '<S-Tab>', 'vsnip#jumpable(-1) ? "<Plug>(vsnip-jump-prev)" : "<S-Tab>"', { expr = true })

--		Highlight on yanking		--
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  callback = function()
    vim.highlight.on_yank()
  end,
})
