local lua_snip_ok, lua_snip = pcall(require, 'luasnip')
local cmp_ok, cmp = pcall(require, 'cmp')

if not lua_snip_ok then
  vim.cmd('echom "plugin error: luasnip is missing"')
  return
end

if not cmp_ok then
  vim.cmd('echom "plugin error: cmp is missing"')
  return
end

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

_G.tab_complete = function()
    if cmp and cmp.visible() then
        cmp.select_next_item()
    elseif lua_snip and lua_snip.expand_or_jumpable() then
        return t("<Plug>luasnip-expand-or-jump")
    elseif check_back_space() then
        return t "<Tab>"
    else
        cmp.complete()
    end
    return ""
end

_G.s_tab_complete = function()
    if cmp and cmp.visible() then
        cmp.select_prev_item()
    elseif lua_snip and lua_snip.jumpable(-1) then
        return t("<Plug>luasnip-jump-prev")
    else
        return t "<S-Tab>"
    end
    return ""
end
