local ok = pcall(require, 'lspconfig')

if not ok then
  vim.cmd('echom "plugin error: lspconfig is missing"')
  return
end

require('user/lsp/lsp-installer');
