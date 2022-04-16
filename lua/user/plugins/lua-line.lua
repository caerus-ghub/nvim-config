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

local diagnostics_component = {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  sections = { 'error', 'warn', 'info', 'hint' },
  diagnostics_color = {
    error = 'LualineDiagnosticError',
    warn  = 'LualineDiagnosticWarn',
    info  = 'LuadlineDiagnosticInfo',
    hint  = 'LualineDiagnosticHint',
  },
  colored = true,           -- Displays diagnostics status in color if set to true.
  update_in_insert = false, -- Update diagnostics in insert mode.
  always_visible = false,   -- Show diagnostics even if there are none.
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
    lualine_b = {'branch', diff_component, diagnostics_component},
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
