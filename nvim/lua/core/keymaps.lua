-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a comma
vim.g.mapleader = ','

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')

-- Map Esc to kk
map('i', 'kk', '<Esc>')

-- Don't use arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>')
map('i', '<leader>s', '<C-c>:w<CR>')

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
map('n', '<C-t>', ':Term<CR>', { noremap = true })  -- open
map('t', '<Esc>', '<C-\\><C-n>')                    -- exit

-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>')            -- open/close
map('n', '<leader>r', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file

-- Vista tag-viewer
map('n', '<C-m>', ':Vista!!<CR>') -- open/close

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>')
map('n', '<leader>fg', ':Telescope live_grep<CR>')

-- Harpoon
map('n', '<leader>a', ':lua require("harpoon.mark").add_file()<CR>')
map('i', '<leader>a', '<C-c>:lua require("harpoon.mark").add_file()<CR>')
map('n', '<leader>w', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
map('i', '<leader>w', '<C-c>:lua require("harpoon.ui").toggle_quick_menu()<CR>')
map('n', '<leader>1', ':lua require("harpoon.ui").nav_file(1)<CR>')
map('i', '<leader>1', '<C-c>:lua require("harpoon.ui").nav_file(1)<CR>')
map('n', '<leader>2', ':lua require("harpoon.ui").nav_file(2)<CR>')
map('i', '<leader>2', '<C-c>:lua require("harpoon.ui").nav_file(2)<CR>')
map('n', '<leader>3', ':lua require("harpoon.ui").nav_file(3)<CR>')
map('i', '<leader>3', '<C-c>:lua require("harpoon.ui").nav_file(3)<CR>')
map('n', '<leader>4', ':lua require("harpoon.ui").nav_file(4)<CR>')
map('i', '<leader>4', '<C-c>:lua require("harpoon.ui").nav_file(4)<CR>')


-- Float Term
map('n', '<leader>t', ':FloatermNew<CR>')
map('n', '<leader>t', '<C-c>:FloatermNew<CR>')
map('n', '<leader>T', ':FloatermKill<CR>')
map('n', '<leader>T', '<C-c>:FloatermKill<CR>')
