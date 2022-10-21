local ok, nvim_tree = pcall(require, 'nvim-tree')

if not ok then
  vim.cmd('echom "plugin error: nvim-tree is missing"')
  return
end

vim.cmd('source ~/.config/nvim/lua/user/plugins/nvim-tree.vim')

nvim_tree.setup {
  renderer = {
    add_trailing           = true,
    root_folder_modifier   = ':~',
    highlight_opened_files = 'all',
    group_empty            = true,
    special_files          = { 'README.md', 'Makefile', 'MAKEFILE' },
    icons = {
      padding       = ' ',
      symlink_arrow = ' >> ',
      glyphs = {
        default       = '',
        symlink       = '',
        folder = {
          arrow_open   = "",
          arrow_closed = "",
          default      = "",
          open         = "",
          empty        = "",
          empty_open   = "",
          symlink      = "",
          symlink_open = "",
        },
        git = {
          unstaged  = "✗",
          staged    = "✓",
          unmerged  = "",
          renamed   = "➜",
          untracked = "★",
          deleted   = "",
          ignored   = "◌"
        },
      },
    },
  },
  respect_buf_cwd         = true,
  create_in_closed_folder = false,
  disable_netrw           = true,
  hijack_netrw            = true,
  open_on_setup           = false,
  ignore_ft_on_setup      = {},
  open_on_tab             = false,
  hijack_cursor           = false,
  update_cwd              = false,
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 55,
    hide_root_folder = false,
    side = 'left',
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = true,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}
