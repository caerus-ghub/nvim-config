local function on_attach_gopls(client, bufnr)
  local nvim_lsp = require'lspconfig'
  local util = require "lspconfig/util"

  nvim_lsp.gopls.setup({
    cmd = {"/home/caerus/.local/share/nvim/lsp_servers/go/gopls", "serve"},
    filetypes = {"go", "gomod"},
    root_dir = util.root_pattern("main.go", "go.work", "go.mod", ".git"),
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
  })
end

return on_attach_gopls
