-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------

-- Default options are not included
-- See: https://neovim.io/doc/user/vim_diff.html
-- [2] Defaults - *nvim-defaults*

local g = vim.g -- Global variables
local opt = vim.opt -- Set options (global/buffer/windows-scoped)

-----------------------------------------------------------
-- General
-----------------------------------------------------------
g.mapleader = " "
g.maplocalleader = " "
g.have_nerd_font = true
opt.mouse = "a" -- Enable mouse support
opt.clipboard = "unnamedplus" -- Copy/paste to system clipboard
opt.swapfile = false -- Don't use swapfile
opt.completeopt = "menuone,noinsert,noselect" -- Autocomplete options
opt.undofile = true -- Save undo history

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true -- Show line number
opt.relativenumber = false
opt.showmatch = true -- Highlight matching parenthesis
opt.foldmethod = "marker" -- Enable folding (default 'foldmarker')
-- opt.colorcolumn = '80'      -- Line lenght marker at 80 columns
opt.splitright = true -- Vertical split to the right
opt.splitbelow = true -- Horizontal split to the bottom
opt.ignorecase = true -- Ignore case letters when search
opt.smartcase = true -- Ignore lowercase for the whole pattern
opt.linebreak = true -- Wrap on word boundary
opt.wrap = false
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.laststatus = 3 -- Set global statusline
opt.cursorline = true
opt.signcolumn = "yes" -- Keep signcolumn on by default
opt.inccommand = "split" -- Preview substitutions in a split
opt.scrolloff = 10 -- Minimal number of lines to keep above and below cursor

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = false -- Use spaces instead of tabs
opt.shiftwidth = 4 -- Shift 4 spaces when tab
opt.tabstop = 4 -- 1 tab == 4 spaces
opt.smartindent = true -- Autoindent new lines

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true -- Enable background buffers
opt.history = 100 -- Remember N lines in history
opt.lazyredraw = true -- Faster scrolling
opt.synmaxcol = 240 -- Max column for syntax highlight
opt.updatetime = 250 -- ms to wait for trigger an event

-----------------------------------------------------------
-- 42
-----------------------------------------------------------
g.user42 = "sbouheni"
g.mail42 = "sbouheni@student.42mulhouse.fr"

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------
-- Disable nvim intro
opt.shortmess:append("sI")
