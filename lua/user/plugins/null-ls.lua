local ok, null_ls = pcall(require, 'null-ls')

if not ok then
  vim.cmd('echom "plugin error: null-ls is missing"')
  return
end

local formatting = null_ls.builtins.formatting
local sources = {
  formatting.prettier,
  formatting.stylua
}

null_ls.setup {
  sources = sources
}
