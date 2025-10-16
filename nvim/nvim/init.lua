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
        -- Nvim LSP
        "neovim/nvim-lspconfig",
        -- Nvim Tree
        "nvim-tree/nvim-tree.lua",
        -- Nvim Treesitter
        "nvim-treesitter/nvim-treesitter",
        -- Bash LSP
        "bash-lsp/bash-language-server"
}

-- Start Lualine package

require('lualine').setup {
	options = {
		theme = 'molokai'
	}
}

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "terraform",
    "hcl"
  },
  highlight = {
    enable = true
  }
})

vim.lsp.config.bashls = {
  cmd = { 'bash-language-server', 'start' },
  filetypes = { 'bash', 'sh' }
}
vim.lsp.enable 'bashls'
