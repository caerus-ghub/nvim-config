local status_ok, lsp_installer = pcall(require, 'nvim-lsp-installer')

if not status_ok then
  vim.cmd('echom "plugin error: nvim-lsp-installer is missing"')
	return
end

local handlers = require('user/lsp/handlers')

lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = handlers.on_attach,
    capabilities = handlers.capabilities,
  }

  if server.name == 'sumneko_lua' then
    local sumneko_opts = require("user/lsp/settings/sumneko_lua")
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  if server.name == 'tsserver' then
    local tsserver_opts = require("user/lsp/settings/tsserver")
    opts = vim.tbl_deep_extend("force", tsserver_opts, opts)
  end

  if server.name == 'diagnosticls' then
    local diagnosticls_opts = require("user/lsp/settings/diagnosticls")
    opts = vim.tbl_deep_extend("force", diagnosticls_opts, opts)
  end

  server:setup(opts)
end)
