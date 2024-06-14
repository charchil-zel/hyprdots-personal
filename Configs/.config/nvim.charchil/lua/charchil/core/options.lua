vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true

opt.number = true

-- tabs and indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 --2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search settings

opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assusmes you want case-sensitive

opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will me made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as defaul register

-- split windows
opt.splitright = true -- split vertical windows to the right
opt.splitbelow = true -- split horizontal windows to the buttom

-- UI
vim.opt.termguicolors = true
vim.o.pumheight = 10
vim.o.cmdheight = 1

-- Update and backups
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.timeoutlen = 100

-- Backspace key
vim.o.backspace = "indent,eol,start"

-- Get the current 'iskeyword' setting
vim.opt.iskeyword = "@,48-57,65-90,97-122"

-- Cursor unchanged
vim.api.nvim_create_autocmd("ExitPre", {
	group = vim.api.nvim_create_augroup("Exit", { clear = true }),
	command = "set guicursor=a:ver90",
	desc = "Set cursor back to beam when leaving Neovim.",
})

-- Markdown
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.opt.wrap = true
		vim.opt.linebreak = true
	end,
})
vim.opt.spelllang = "en_us"

-- Neovide
vim.g.neovide_transparency = 0.8

vim.opt.conceallevel = 2
vim.opt.concealcursor = "nc"
-- vim.opt.shellslash = true
vim.cmd("language en_US.utf8")
