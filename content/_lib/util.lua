-- _lib/util.lua
-- Some generic utilities

local util = {}
setmetatable(util, util)

-- HTML character replacement
local escape_subs = {
	["&"] = "&amp;",
	["<"] = "&lt;",
	[">"] = "&gt;",
	['"'] = "&quot;",
	["'"] = "&#39;",
}

--- Escapes HTML characters
--- @param str string
--- @return string
function util.escape_html(str)
	return (str:gsub("([&<>\"'])", escape_subs))
end

return util
