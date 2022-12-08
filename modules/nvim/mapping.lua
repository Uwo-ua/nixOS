
local map = vim.keymap.set
local default_opts = { noremap = true, silent = false }
local builtin = require('telescope.builtin')

-- Vanila maps

map('v', '>', '>gv<esc>', default_opts)
map('v', '<', '<gv<esc>', default_opts)

map('n', 'fe', ':bn<CR>', default_opts)
map('n', 'ef', ':bn<CR>', default_opts)

map('n', '<F4>', ':PackerSync<CR>', default_opts)

-- Telescope
map('n', 'ff', builtin.find_files, default_opts)
map('n', 'fg', builtin.live_grep, default_opts)
map('n', 'gf', builtin.live_grep, default_opts)
map('n', 'fb', builtin.buffers, default_opts)
map('n', 'bf', builtin.buffers, default_opts)
map('n', 'fh', builtin.help_tags, default_opts)
map('n', 'hf', builtin.help_tags, default_opts)
map('n', 'fq', builtin.quickfix, default_opts)
map('n', 'qf', builtin.quickfix, default_opts)
map('n', 'fc', ':Telescope colorscheme<cr>', default_opts)
map('n', 'cf', ':Telescope colorscheme<cr>', default_opts)

-- Lsp 
map('n', 'lj', '<esc>:Lspsaga diagnostic_jump_prev<CR>', default_opts)
map('n', 'lf', '<esc>:Lspsaga code_action<CR>', default_opts)
map('n', 'ld', '<cmd>lua vim.lsp.buf.hover()<CR>', default_opts)
map('n', 'lr', '<cmd>lua vim.lsp.buf.rename()<CR>', default_opts)
map('n', 'lk', '<cmd>lua vim.lsp.buf.references()<CR>', default_opts)
map('n', "lc", "<cmd>lua vim.lsp.buf.code_action()<cr>", default_opts)
