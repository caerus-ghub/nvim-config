local config = require('user/styles/config')
local utils  = require('user/utils')

local colors = config.colors
local hi = utils.hi

-- set control symbols
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

-- dark theme
vim.cmd('colorscheme onehalfdark')

-- hi('Normal')
hi('LineNr', colors.gray)
hi('CursorLineNR', colors.gray)
hi('VertSplit', colors.gray_dark)

-- light theme
-- vim.cmd('colorscheme onehalflight')

-- vim.cmd('highlight VertSplit ctermfg=white ctermbg=NONE guifg=#5c6370 guibg=NONE');
-- vim.cmd('highlight LineNr ctermfg=247 ctermbg=NONE guifg=#5c6370 guibg=NONE')
-- vim.cmd('highlight CursorLineNR ctermfg=247 guifg=#5c6370')
-- vim.cmd('highlight Normal ctermfg=241 ctermbg=NONE')

-- nvim tree
hi('NvimTreeIndentMarker', colors.gray_dark)
hi('NvimTreeFolderIcon', colors.blue)

-- git signs
hi('GitSignsAdd', colors.green)
hi('GitSignsChange', colors.yellow)
hi('GitSignsDelete', colors.red)
hi('GitSignsCurrentLineBlame', colors.gray)

-- lualine
hi('LualineDiffAdd', colors.green, colors.gray_light)
hi('LualineDiffChange', colors.yellow, colors.gray_light)
hi('LualineDiffDelete', colors.red, colors.gray_light)
hi('LualineDiagnosticError', colors.red, colors.gray_light)
hi('LualineDiagnosticWarn', colors.orange, colors.gray_light)
hi('LualineDiagnosticInfo', colors.blue_light, colors.gray_light)
hi('LualineDiagnosticHint', colors.blue_light, colors.gray_light)

-- lsp
hi('DiagnosticError', colors.red)

-- plugin - indent blank line
hi('IndentBlanklineChar', colors.gray_dark)
hi('IndentBlanklineSpaceChar', colors.gray_dark)

local options = {
  -- t_Co = 256,
  cursorline = true,
  guifont = 'MesloLGLDZ Nerd Font Mono:style=Regular:h10',
  fillchars = 'vert:│',
  list = true,
  termguicolors = true,
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end
