local ok, harpoon = pcall(require, 'harpoon')

if not ok then
  vim.cmd('echom "plugin error: harpoon is missing"')
  return
end

harpoon.setup {
    menu = {
        width = 100,
    }
}
