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
	-- nvim-tree --
	{'nvim-tree/nvim-tree.lua'},
	{'nvim-tree/nvim-web-devicons'},
	-- autopair --
	{'windwp/nvim-autopairs'},
	-- 42 --
	{'42Paris/42header'},
	{'cacharle/c_formatter_42.vim'},
	-- LSP --
	{'neovim/nvim-lspconfig'},
	-- CMP --
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-path'},
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
