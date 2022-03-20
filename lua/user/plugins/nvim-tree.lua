local ok, nvim_tree = pcall(require, 'nvim-tree')

if not ok then
  vim.cmd('echom "plugin error: nvim-tree is missing"')
  return
end

vim.cmd('source ~/.config/nvim/lua/user/plugins/nvim-tree.vim')

nvim_tree.setup {
  nvim_tree_quit_on_open      = false,
  nvim_tree_change_dir_global = true,
  nvim_tree_disable_window_picker = true,
  nvim_tree_window_picker_exclude = {
    filetype = {
      'notify',
      'packer',
      'qf'
    },
    buftype = {
      'terminal'
    }
  },
  disable_netrw          = true,
  hijack_netrw           = true,
  open_on_setup          = false,
  ignore_ft_on_setup     = {},
  auto_close             = false,
  open_on_tab            = false,
  hijack_cursor          = false,
  update_cwd             = false,
  update_to_buf_dir      = {
    enable = true,
    auto_open = true,
  },
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
    width = 45,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = true,
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
