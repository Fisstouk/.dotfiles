-- Display

vim.opt.smarttab = true
vim.opt.title = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.expandtab = true
vim.opt.colorcolumn = "80"

-- Search

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- Beep

vim.opt.visualbell = false

-- Colors

vim.opt.termguicolors = true

vim.cmd("colorscheme monokai")

-- Paq, package manager

require "paq" {
	-- Let Paq manage itself
        "savq/paq-nvim", 
        -- Status line
	"nvim-lualine/lualine.nvim",
        -- Enhanced C and C++ syntax highlighting
        "bfrg/vim-cpp-modern",
        -- Monokai
        "tanvirtin/monokai.nvim",
}

-- Start Lualine package

require('lualine').setup {
	options = {
		theme = 'molokai'
	}
}
