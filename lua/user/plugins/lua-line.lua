local ok, lualine = pcall(require, 'lualine')

if not ok then
  vim.cmd('echom "plugin error: lualine is missing"')
  return
end

local diff_component = {
  'diff',
  colored = true,
  diff_color = {
    added    = 'LualineDiffAdd',
    modified = 'LualineDiffChange',
    removed  = 'LUalineDiffDelete',
  },
  symbols = {
    added = '+',
    modified = '~',
    removed = '-'
  },
}

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'onedark',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', diff_component, 'diagnostics'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {'filename', 'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
