local ok, treesitter = pcall(require, 'nvim-treesitter.configs')

if not ok then
  vim.cmd('echom "plugin error: treesitter is missing"')
  return
end

treesitter.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
