local utils = {}

utils.hi = function(group, fg, bg)
  fg = fg or { term = 'NONE', gui = 'NONE' }
  bg = bg or { term = 'NONE', gui = 'NONE' }

  vim.cmd(string.format('highlight %s ctermfg=%s ctermbg=%s guifg=%s guibg=%s', group, fg.term, bg.term, fg.gui, bg.gui))
end

return utils
