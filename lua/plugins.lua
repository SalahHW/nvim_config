local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	-- colorscheme --
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	-- neodev --
	{ "folke/neodev.nvim", opts = {}},
	-- nvim-tree --
	{'nvim-tree/nvim-tree.lua'},
	{'nvim-tree/nvim-web-devicons'},
	-- autopair --
	{'windwp/nvim-autopairs'},
	-- which-key --
	{"folke/which-key.nvim", opts = {}},
	-- 42 --
	{'42Paris/42header'},
	{'cacharle/c_formatter_42.vim'},
	-- mason --
	{'williamboman/mason.nvim'},
	-- LSP --
	{'neovim/nvim-lspconfig'},
	-- CMP --
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-path'},
	{'hrsh7th/cmp-cmdline'},
	{'hrsh7th/nvim-cmp'},
	-- Snippets --
	{'hrsh7th/cmp-vsnip'},
	{'hrsh7th/vim-vsnip'},
	-- toggleterm --
	{'akinsho/toggleterm.nvim'},
	-- lualine --
	{'nvim-lualine/lualine.nvim'},
	-- bufferline --
	{'akinsho/bufferline.nvim'},
	-- comment
	{'numToStr/Comment.nvim'},
	-- treesitter --
	{'nvim-treesitter/nvim-treesitter'},
	{'nvim-treesitter/playground'},
	{'JoosepAlviste/nvim-ts-context-commentstring'},
	-- indentline --
	{'lukas-reineke/indent-blankline.nvim'},
	-- gitsigns --
	{'lewis6991/gitsigns.nvim'},
	-- copilot --
	{'github/copilot.vim'}, 
}

local opts = {}

require("lazy").setup(plugins, opts)
