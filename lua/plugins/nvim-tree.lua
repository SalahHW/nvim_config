local opts = {
	desc = "Toggle file explorer",
	silent = true
}

local setup = {
	vim.keymap.set('n', '\\', ':NvimTreeToggle<CR>', opts)
}

return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup(setup)
	end,
}
