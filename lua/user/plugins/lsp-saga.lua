local ok, saga = pcall(require, 'lspsaga')

if not ok then
  vim.cmd('echom "plugin error: lspsaga is missing"')
  return
end

saga.init_lsp_saga()
