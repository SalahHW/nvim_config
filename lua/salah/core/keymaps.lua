vim.g.mapleader = " "

local keymap = vim.keymap 

-- general keymaps

-- go bak to normal mode
keymap.set("i", "jk", "<ESC>")

-- clear research
keymap.set("n", "<leader>c", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- window management
keymap.set("n", "<leader>=", "<C-w>v")
keymap.set("n", "<leader>-", "<C-w>s")
keymap.set("n", "<leader>+", "<C-w>=")
keymap.set("n", "<leader>w", ":close<CR>")

keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tl", ":tabn<CR>")
keymap.set("n", "<leader>th", ":tabp<CR>")

-----------------------------------------
--          Plugins Keybinds
-----------------------------------------

-- vim-maximizer
keymap.set("n", "<leader>m", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
