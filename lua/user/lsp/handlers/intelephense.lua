local function on_attach_tsserver(client, bufnr)
  local nvim_lsp = require'lspconfig'

  nvim_lsp.intelephense.setup({
      settings = {
          -- intelephense = {
              -- stubs = { 
                  -- "bcmath",
                  -- "bz2",
                  -- "calendar",
                  -- "Core",
                  -- "curl",
                  -- "zip",
                  -- "zlib",
                  -- "wordpress",
                  -- "woocommerce",
                  -- "acf-pro",
                  -- "wordpress-globals",
                  -- "wp-cli",
                  -- "genesis",
              -- },
              -- environment = {
                -- includePaths = '/home/your-user/.composer/vendor/php-stubs/' -- this line forces the composer path for the stubs in case inteliphense don't find it...
              -- },
              -- files = {
                  -- maxSize = 5000000;
              -- };
          -- };
      }
  });
end

return on_attach_tsserver;
