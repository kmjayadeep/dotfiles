local opts = {noremap = true, silent = true}
local mapOpts = {noremap = false, silent = true}

vim.api.nvim_set_keymap('n', 'Q', '<nop>', opts)

-- NERDTree
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>nn', ':NERDTreeToggle<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>nf', ':NERDTreeFind<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>nc', ':NERDTreeClose<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>nr', ':NERDTreeRefreshRoot<CR>', opts)

-- Window movement
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', opts)
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', opts)
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', opts)
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', opts)


-- navigation
vim.api.nvim_set_keymap('n', '<Leader><Leader>', '<C-^>', opts)
-- disable highlight
vim.api.nvim_set_keymap('n', '<Leader>sh', ':noh<CR>', opts)

-- Clipboard
if vim.fn.has('nvim') == 1 then
  vim.api.nvim_set_keymap('v', '<C-c>', '"+y', opts)
  vim.api.nvim_set_keymap('v', '<C-x>', '"+d', opts)
  vim.api.nvim_set_keymap('v', '<C-v>', '"+p', opts)
  vim.api.nvim_set_keymap('i', '<C-v>', '<C-r><C-o>+', opts)
end

-- FZF
vim.api.nvim_set_keymap('n', '<C-p>', ':Files<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-g>', ':Files<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>l', ':Buffers<CR>', opts)

-- COC
vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', mapOpts)
vim.api.nvim_set_keymap('n', 'gy', '<Plug>(coc-type-definition)', mapOpts)
vim.api.nvim_set_keymap('n', 'gi', '<Plug>(coc-implementation)', mapOpts)
vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', mapOpts)
vim.api.nvim_set_keymap('n', '<Leader>rn', '<Plug>(coc-rename)', mapOpts)
vim.api.nvim_set_keymap('n', '<Leader>do', '<Plug>(coc-codeaction)', mapOpts)

-- NerdCommenter
vim.api.nvim_set_keymap('n', '<C-_>', ":call NERDComment('Toggle', 'Toggle')<CR>", mapOpts)
vim.api.nvim_set_keymap('i', '<C-_>', "<esc>:call NERDComment('Toggle', 'Toggle')<CR>", mapOpts)
vim.api.nvim_set_keymap('v', '<C-_>', ":call NERDComment('Toggle', 'Toggle')<CR>gv", mapOpts)
