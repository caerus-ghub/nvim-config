local config = require('user/styles/config')
local utils  = require('user/utils')

local colors = config.colors
local hi = utils.hi

for i=1, 6 do
  hi('markdownH'..i, colors.blue)
end

for i=1, 6 do
  hi('markdownH'..i..'Delimiter', colors.gray)
end

hi('markdownListMarker', colors.gray)
hi('markdownBoldDelimiter', colors.gray)
hi('markdownItalicDelimiter', colors.gray)
hi('markdownCodeDelimiter', colors.gray)
