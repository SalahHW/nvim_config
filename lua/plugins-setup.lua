local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

vim.cmd([[ 
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

    use({'wbthomason/packer.nvim'})

    -- nvim-tree --
    use({'nvim-tree/nvim-tree.lua'})
    use({'nvim-tree/nvim-web-devicons'})

    -- 42 --
    use({'42Paris/42header'})
    use({'cacharle/c_formatter_42.vim'})

    -- LSP --
    use({'neovim/nvim-lspconfig'})

    -- toggleterm --
    use({'akinsho/toggleterm.nvim'})

    -- lualine --
    use({'nvim-lualine/lualine.nvim'})

    -- bufferline --
    use({'akinsho/bufferline.nvim', tag = "v3.*"})

    -- comment
    use({'numToStr/Comment.nvim'})

    -- treesitter --
    use({'nvim-treesitter/nvim-treesitter'}, {run = ':TSUpdate'})
    use({'nvim-treesitter/playground'})
    use({'JoosepAlviste/nvim-ts-context-commentstring'})

    -- indentline --
    use({'lukas-reineke/indent-blankline.nvim'})

    -- gitsigns --
    use({'lewis6991/gitsigns.nvim'})

    -- colorscheme --
    use({'rose-pine/neovim', as = 'rose-pine'})

    if packer_bootstrap then
        require('packer').sync()
    end
end)
