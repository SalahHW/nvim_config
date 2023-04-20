vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    auto_reload_on_write = true,
    hijack_cursor = true,
})
