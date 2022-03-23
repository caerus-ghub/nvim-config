local lua_snip = require('luasnip')
local snippet = lua_snip.snippet
local text_node = lua_snip.text_node
local insert_node = lua_snip.insert_node

return {
  snippet(
    'c', {
      text_node('console.log('),
      insert_node(1, 'placeholder'),
      text_node(');'),
    }
  ),
}
