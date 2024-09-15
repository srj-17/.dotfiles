-- for seeing what mostly used options are, its helpful starting out with options 
-- command (:)
--
--
-- 
-- setup line numbers
vim.opt.number = true
vim.opt.relativenumber = true


-- setup screen to split below and right for horizontal and vertical split respectively
vim.opt.splitbelow = true
vim.opt.splitright = true


-- tab behaves wierd in nvim, so set up tabs to be 4 spaces instead
vim.opt.expandtab = true
vim.opt.tabstop = 4
-- tabs will be shifted 4 places instead of 8 when using >>
vim.opt.shiftwidth = 4


-- synchronize system clipboard with vim / use system clipboard as vim clipboard
vim.opt.clipboard = "unnamedplus"


-- disable auto wrapping
-- because wrapping creates wierd behaviour in neovim 
-- where it whe navigating, it jumps a line
vim.opt.wrap = false


-- keep cursor at middle of screen when scrolling 
-- scrolloff = scrolloffset
vim.opt.scrolloff = 999


-- in visual block mode, treat the nvim screen as a grid of cells instead of sequence of characters
vim.opt.virtualedit = "block"


-- shows real time changes due to find and replace in split window
vim.opt.inccommand = "split"


-- set entire nvim to ignore case (useful when searching commands from external plugins)
-- external commands = UpperCase, vim plugins = lowercase
-- ex: ignorecase = vim command 
vim.opt.ignorecase = true


-- setup nvim to have gui colors
-- by default it uses (old school) terminal colors
vim.opt.termguicolors = true


-- set the folds to follow semantics
vim.opt.foldmethod = "syntax"

-- avoid lines longer than 80 columns
vim.opt.colorcolumn = '80'
