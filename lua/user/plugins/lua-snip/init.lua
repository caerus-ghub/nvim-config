local ok, lua_snip = pcall(require, 'luasnip')

if not ok then
  vim.cmd('echom "plugin error: luasnip is missing"')
  return
end

require('user/plugins/lua-snip/mappings')
local js_snips = require('user/plugins/lua-snip/js-snips')
-- local function_node = plugin.function_mode;

lua_snip.config.set_config {
	history = true,
	-- Update more often, :h events for more info.
	updateevents = "TextChanged,TextChangedI",
	-- ext_opts = {
		-- [types.choiceNode] = {
			-- active = {
				-- virt_text = { { "choiceNode", "Comment" } },
			-- },
		-- },
	-- },
	-- treesitter-hl has 100, use something higher (default is 200).
	ext_base_prio = 300,
	-- minimal increase in priority.
	ext_prio_increase = 1,
	enable_autosnippets = true,
}

lua_snip.snippets = {
  javascript = js_snips,
  javascriptreact = js_snips,
  typescript = js_snips,
  typescriptreact = js_snips,
}
