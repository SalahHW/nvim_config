local opts = {
	pattern = "*",
	callback = function ()
		vim.opt_local.number = false
		vim.opt_local.relativenumber = false
	end,
}

vim.api.nvim_create_autocmd("TermOpen", opts)

local tree_opts = {
	pattern = "NvimTree_*",
	callback = function ()
		vim.opt_local.statusline = ""
		vim.opt_local.fillchars = { eob = " " }
	end,
}

vim.api.nvim_create_autocmd("BufWinEnter", tree_opts)
vim.opt.showmode = false
