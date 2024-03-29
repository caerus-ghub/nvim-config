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

map('n', leader..'wG', '<c-w>H', opts)
map('n', leader..'wK', '<c-w>L', opts)
map('n', leader..'wH', '<c-w>K', opts)
map('n', leader..'wJ', '<c-w>J', opts)

map('n', leader..'wx', '<c-u>:execute "bN|bd#"<cr>', opts)

-- config
map('n', leader..'ce', 'edit $MYVIMRC', opts)
map('n', leader..'cu', 'source $MYVIMRC', opts)

-- tabulation
map('n', leader..'t2', ':execute "set ts=2 sw=2 sts=2 et"<cr>', opts)
map('n', leader..'t4', ':execute "set ts=4 sw=4 sts=4 et"<cr>', opts)

-- go to normal mode
map('i', 'sd', '<esc>', opts)
map('v', 'sd', '<esc>', opts)

-- plugin - nvim-tree
map('n', leader..'so', '<cmd>:NvimTreeToggle<CR>', opts)
map('n', leader..'sc', '<cmd>:NvimTreeToggle<CR>', opts)

-- plugin - harpoon
map('n', leader..'ha', ':lua require("harpoon.mark").add_file()<cr>', opts)
for i=1, 8 do
  map('n', leader..'h'..i, ':lua require("harpoon.ui").nav_file('..i..')<cr>', opts)
end
map('n', leader..'hf', ':lua require("harpoon.ui").toggle_quick_menu()<cr>', opts)

-- plugin - telescope
map('n', leader..'ff', '<cmd>Telescope find_files<cr>', opts)
map('n', leader..'fg', '<cmd>Telescope live_grep<cr>', opts)
map('n', leader..'fb', '<cmd>Telescope buffers<cr>', opts)
map('n', leader..'fh', '<cmd>Telescope help_tags<cr>', opts)
map('n', leader..'fm', '<cmd>Telescope marks<cr>', opts)
map('n', leader..'fc', '<cmd>Telescope find_files cwd=~/.config/nvim<cr>', opts)

-- plugin - luasnip
map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("i", "<C-E>", "<Plug>luasnip-next-choice", {})
map("s", "<C-E>", "<Plug>luasnip-next-choice", {})

local function set_lsp_keymaps()
  map_buf(0, 'n', leader..'lr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  map_buf(0, 'n', leader..'la', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  map_buf(0, 'n', leader..'lf', '<cmd>lua vim.lsp.buf.format({ timeout_ms = 8000 })<CR>', opts)
  map_buf(0, 'n', leader..'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  map_buf(0, 'n', leader..'gd', '<Cmd>Telescope lsp_definitions<CR>',  opts)
  map_buf(0, 'n', leader..'gt', '<Cmd>Telescope lsp_type_definitions<CR>',  opts)
  map_buf(0, 'n', leader..'gr', '<cmd>Telescope lsp_references<CR>',  opts)

  map_buf(0, 'n', leader.."ld", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
  map_buf(0, 'n', leader.."lh", "<cmd>Lspsaga hover_doc<cr>", opts)
  map_buf(0, 'n', leader.."gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
  map_buf(0, 'n', leader.."gh", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
end

return {
  set_lsp_keymaps = set_lsp_keymaps
};
