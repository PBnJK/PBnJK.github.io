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

--- Concatenates lists of strings into a nicely-formatted string
---
--- This list:
---   { "John", "Paul", "George", "Ringo" }
--- becomes:
---   "John, Paul, George & Ringo"
---
--- The separator (default: ',') and final separator (default: '&') can be
--- customized
---
--- @param list table[string] List to be concatenated
--- @param separator string? Separator between items
--- @param final_separator string? Separator for the last item
function util.concat_fancy(list, separator, final_separator)
	if type(list) ~= "table" or #list == 1 then
		return tostring(list)
	end

	if final_separator == nil then
		final_separator = " & "
	end

	if #list == 2 then
		return table.concat(list, final_separator)
	end

	if separator == nil then
		separator = ", "
	end

	local first_part = table.concat({ table.unpack(list, 1, #list - 1) }, separator)
	return first_part .. final_separator .. list[#list]
end

return util
