local opts = { silent = true, noremap = true }
local leader = vim.g.mapleader
local map = vim.api.nvim_set_keymap
local map_buf = vim.api.nvim_buf_set_keymap;

-- cursor movement
map('n', 'h', 'k', opts)
map('n', 'g', 'h', opts)
map('n', 'k', 'l', opts)
map('n', 'll', 'gg', opts)
map('v', 'h', 'k', opts)
map('v', 'g', 'h', opts)
map('v', 'k', 'l', opts)
map('v', 'll', 'gg', opts)

-- file movement
map('n', 'H', '15kzz', opts)
map('n', 'J', '15jzz', opts)

-- window movement
map('n', leader..'wg', '<c-w>h', opts)
map('n', leader..'wk', '<c-w>l', opts)
map('n', leader..'wh', '<c-w>k', opts)
map('n', leader..'wj', '<c-w>j', opts)
map('n', leader..'wx', '<c-u>:execute "bN|bd#"<cr>', opts)

-- config
map('n', leader..'ce', 'edit $MYVIMRC', opts)
map('n', leader..'cu', 'source $MYVIMRC', opts)

-- tabulation
map('n', leader..'t2', ':execute "set shiftwidth=2 <bar> set tabstop=2"<cr>', opts)
map('n', leader..'t4', ':execute "set shiftwidth=4 <bar> set tabstop=4"<cr>', opts)

-- go to normal mode
map('i', 'sd', '<esc>', opts)
map('v', 'sd', '<esc>', opts)

-- plugin - nvim-tree
map('n', leader..'so', '<cmd>:NvimTreeToggle<CR>', opts)
map('n', leader..'sc', '<cmd>:NvimTreeToggle<CR>', opts)

-- plugin - harpoon
map('n', leader..'ha', ':lua require("harpoon.mark").add_file()<cr>', opts)
map('n', leader..'h1', ':lua require("harpoon.ui").nav_file(1)<cr>', opts)
map('n', leader..'h2', ':lua require("harpoon.ui").nav_file(2)<cr>', opts)
map('n', leader..'h3', ':lua require("harpoon.ui").nav_file(3)<cr>', opts)
map('n', leader..'h4', ':lua require("harpoon.ui").nav_file(4)<cr>', opts)
map('n', leader..'h4', ':lua require("harpoon.ui").nav_file(5)<cr>', opts)
map('n', leader..'hf', ':lua require("harpoon.ui").toggle_quick_menu()<cr>', opts)

-- plugin - telescope
map('n', leader..'ff', '<cmd>Telescope find_files<cr>', opts)
map('n', leader..'fg', '<cmd>Telescope live_grep<cr>', opts)
map('n', leader..'fb', '<cmd>Telescope buffers<cr>', opts)
map('n', leader..'fh', '<cmd>Telescope help_tags<cr>', opts)
map('n', leader..'fc', '<cmd>Telescope find_files cwd=~/.config/nvim<cr>', opts)

local function set_lsp_keymaps()
  map_buf(0, 'n', leader..'lr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  map_buf(0, 'n', leader..'la', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  map_buf(0, 'n', leader..'lf', '<cmd>lua vim.lsp.buf.formatting_sync({}, 5000)<CR>', opts)
  map_buf(0, 'n', leader..'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  map_buf(0, 'n', leader..'gd', '<Cmd>Telescope lsp_definitions<CR>',  opts)
  map_buf(0, 'n', leader..'gr', '<cmd>Telescope lsp_references<CR>',  opts)

  map_buf(0, 'n', leader.."ld", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
  map_buf(0, 'n', leader.."lh", "<cmd>Lspsaga hover_doc<cr>", opts)
  map_buf(0, 'n', leader.."gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
  map_buf(0, 'n', leader.."gh", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
end

return {
  set_lsp_keymaps = set_lsp_keymaps
};
