local options = {
  backup = false,
  writebackup = false,
  clipboard = "unnamedplus",
  conceallevel = 0,
  fileencoding = "utf-8",
  hlsearch = true,
  mouse = "a",
  showmode = false,
  smartindent = true,
  swapfile = false,
  updatetime = 300,
  cursorline = true,
  breakindent = true,
  linebreak = true,
  expandtab = true,
  shiftwidth = 2,
  wrap = false,
  tabstop = 2,
  foldmethod = 'manual',
  foldnestmax = 10,
  foldlevel = 2,
  foldenable = false,
  number = true,
  relativenumber = true,
  laststatus = 3
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end
