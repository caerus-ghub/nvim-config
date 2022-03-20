local M = {}

local set_lsp_keymaps = require('user/mappings').set_lsp_keymaps
local on_attach_tsserver = require('user/lsp/handlers/tsserver')
local on_attach_diagnosticls = require('user/lsp/handlers/diagnosticls')

local function lsp_highlight_document(client)
  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec(
      [[
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]],
      false
    )
  end
end

M.on_attach = function(client, bufnr)
  if client.name == "tsserver" then
    on_attach_tsserver(client, bufnr)
    client.resolved_capabilities.document_formatting = false
  end
  if client.name == "diagnosticls" then
    on_attach_diagnosticls()
    client.resolved_capabilities.document_formatting = false
  end

  set_lsp_keymaps(bufnr)
  lsp_highlight_document(client)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_ok then
  return
end

M.capabilities = cmp_nvim_lsp.update_capabilities(capabilities)

return M
