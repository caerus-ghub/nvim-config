-- dark theme
vim.cmd('colorscheme onehalfdark')
vim.cmd('highlight VertSplit ctermfg=237 ctermbg=NONE guifg=#313640 guibg=NONE');
vim.cmd('highlight LineNr ctermfg=241 ctermbg=NONE guifg=#5c6370 guibg=NONE')
vim.cmd('highlight CursorLineNR ctermfg=241 guifg=#5c6370')
vim.cmd('highlight DiagnosticError guifg=#ED4545')
vim.cmd('highlight Normal ctermbg=NONE')

vim.cmd('highlight NvimTreeIndentMarker ctermfg=237 ctermbg=NONE guifg=#313640 guibg=NONE')
vim.cmd('highlight NvimTreeFolderIcon ctermfg=blue guifg=blue')

-- light theme
-- vim.cmd('colorscheme onehalflight')
-- vim.cmd('highlight VertSplit ctermfg=white ctermbg=NONE guifg=#5c6370 guibg=NONE');
-- vim.cmd('highlight LineNr ctermfg=247 ctermbg=NONE guifg=#5c6370 guibg=NONE')
-- vim.cmd('highlight CursorLineNR ctermfg=247 guifg=#5c6370')
-- vim.cmd('highlight Normal ctermfg=241 ctermbg=NONE')

-- highlight NvimTreeFolderIcon guibg=blue
-- highlight NvimTreeIndentMarker ctermfg=white ctermbg=NONE guifg=#313640 guibg=NONE'

-- git signs
vim.cmd('highlight GitSignsAdd ctermfg=114 ctermbg=NONE guifg=#98c379 guibg=NONE')
vim.cmd('highlight GitSignsChange ctermfg=180 ctermbg=NONE guifg=#e5c07b guibg=NONE')
vim.cmd('highlight GitSignsDelete ctermfg=168 ctermbg=NONE guifg=#e06c75 guibg=NONE')

local options = {
  -- t_Co = 256,
  cursorline = true,
  guifont = 'MesloLGLDZ Nerd Font Mono:style=Regular:h10',
  fillchars = 'vert:│'
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end
