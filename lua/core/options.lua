-- local opt = vim.opt
local o = vim.o
local g = vim.g

-- General
g.mapleader = " "

-- Numbers
o.number = true
o.numberwidth = 2
o.ruler = false

-- Indentation
o.expandtab = true
o.shiftwidth = 4
o.smartindent = true
o.tabstop = 4
o.softtabstop = 4

o.signcolumn = "yes"
o.splitbelow = true
o.splitright = true
o.termguicolors = true
o.timeoutlen = 400
o.undofile = true
o.cursorline = true
