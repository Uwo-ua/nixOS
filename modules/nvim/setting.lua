local options = {
	clipboard = "unnamed,unnamedplus",
	cmdheight = 0,
	completeopt = "menu,menuone,noselect",
	cursorline = true,
	emoji = true,
	expandtab = true,
	ignorecase = true,
	laststatus = 3,
	lazyredraw = true,
	mouse = "a",
	number = true,
	pumheight = 10,
	scrolloff = 8,
	shiftwidth = 0,
	showtabline = 1,
	smartcase = true,
	smartindent = true,
	smarttab = true,
	softtabstop = 2,
	splitright = true,
	swapfile = false,
	tabstop = 2,
	termguicolors = true,
	timeoutlen = 200,
	undofile = true,
	updatetime = 100,
	viminfo = "'1000",
	wrap = false,
	writebackup = false,
	autoindent = true,
	backspace = "indent,eol,start",
	backup = false,
	conceallevel = 0,
	encoding = "utf-8",
	errorbells = false,
	fileencoding = "utf-8",
	incsearch = true,
	showmode = false,
	list = true,
	viewoptions = "folds,cursor,curdir,slash,unix",
	virtualedit = "block",
	listchars = "tab:»·,nbsp:+,trail:·,extends:→,precedes:←",
	title = true,
	titlestring = [[%t %l %h%m%r%w - %{v:progname} ]],
}

vim.api.nvim_command("colorscheme catppuccin-mocha")

local globals = {
	tagbar_compact = 1,
	tagbar_sort = 0,
	mapleader = " ",
	speeddating_no_mappings = 2,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

for k, v in pairs(globals) do
	vim.g[k] = v
end
