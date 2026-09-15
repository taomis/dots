vim.cmd("filetype on")
vim.cmd("syntax on")
vim.opt.compatible = false
vim.opt.number = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.ignorecase = true 
vim.opt.smartcase = false 
vim.opt.incsearch = true 
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true

local colorterm = vim.env.COLORTERM or ""
local term = vim.env.TERM or ""
local supports_truecolor =
    colorterm:match("truecolor") or
    colorterm:match("24bit") or
    term:match("direct") or
    term:match("kitty") or
    term:match("tmux%-256color")

if supports_truecolor then
    vim.opt.termguicolors = true
	vim.api.nvim_set_hl(0, "Search",    { bg = "#3a3a00", fg = "NONE", ctermbg = 3,  ctermfg = "NONE" })
	vim.api.nvim_set_hl(0, "CurSearch", { bg = "#b8860b", fg = "#000000", ctermbg = 11, ctermfg = 0 })
else
	vim.api.nvim_set_hl(0, "Search",    { ctermbg = 3,  ctermfg = "NONE" })
	vim.api.nvim_set_hl(0, "CurSearch", { ctermbg = 11, ctermfg = 0 })
end

