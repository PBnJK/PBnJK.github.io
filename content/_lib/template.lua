-- _lib/template.lua
-- HTML template library
--
-- Heavily based on:
--   https://riki.house/lua-html

local template = {}
setmetatable(template, template)

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
local function escape_html(str)
	return (str:gsub("([&<>\"'])", escape_subs))
end

--- Wrapper for strings
local Html = {}
template.HtmlStr = Html

--- Builds an Html type
--- @param text string
--- @return table
function template.Html(text)
	assert(type(text) == "string", "template.Html expects a string")
	return setmetatable({ text = text }, Html)
end

--- Stringifies Html
--- @return string
function Html:__tostring()
	return self.text
end

function Html.__call(args)
	print(args)
end

function Html.__index(html, key)
	print(html, key)
end

-- Void elements (elements without closing tags)
local void_elements = {
	area = true,
	base = true,
	br = true,
	col = true,
	embed = true,
	hr = true,
	img = true,
	input = true,
	link = true,
	meta = true,
	param = true,
	source = true,
	track = true,
	wbr = true,
}

--- Writes HTML to a table
--- @param t table
--- @param ... string
local function write(t, ...)
	local n = select("#", ...)
	for i = 1, n do
		table.insert(t, (select(i, ...)))
	end
end

--- Writes an element's children to a table
--- @param el table
--- @param def table
local function write_children(el, def)
	for _, child in ipairs(def) do
		if type(child) == "string" then
			table.insert(el, escape_html(child))
		elseif type(child) == "table" and getmetatable(child) == Html then
			table.insert(el, child.text)
		elseif type(child) == "table" then
			write_children(el, child)
		end
	end
end

function template.Element(kind, def)
	-- Syntatic sugar for raw strings
	if type(def) == "string" then
		def = { def }
	end

	-- TODO: allow default attributes
	if def == nil then
		def = {}
	end

	local attr = {}
	for k, v in pairs(def) do
		if type(k) == "string" then
			local key = k:gsub("_", "-")
			local value = tostring(v)
			table.insert(attr, { key, value })
		end
	end
	table.sort(attr, function(a, b)
		return a[1] < b[1]
	end)

	-- Open tag
	local el = { "<", kind }
	for _, a in ipairs(attr) do
		write(el, " ", a[1], '="', escape_html(a[2]), '"')
	end
	table.insert(el, ">")

	-- Exit early for void elements (no children, no closing tag)
	if void_elements[kind] then
		return template.Html(table.concat(el))
	end

	-- Children
	write_children(el, def)

	-- Close tag
	write(el, "</", kind, ">")

	return template.Html(table.concat(el))
end

function template.Document(def)
	return template.Html("<!doctype html>" .. tostring(template.Element("html", def)))
end

function template.__index(html, key)
	key = key:gsub("_", "-")

	local thunk = setmetatable({
		classes = {},
		id = "",
	}, {
		__call = function(thunk, args)
			if type(args) == "string" then
				args = { args }
			elseif type(args) == "nil" then
				args = {}
			end

			if type(args) == "table" then
				if next(thunk.classes) ~= nil then
					local class_list = table.concat(thunk.classes, " "):gsub("_", "-")
					if args.class then
						args.class = args.class .. " " .. class_list
					else
						args.class = class_list
					end
				end

				if thunk.id ~= "" then
					args.id = thunk.id
				end
			end

			return html.Element(key, args)
		end,
		__index = function(thunk, attr)
			if attr:sub(1, 1) == "#" then
				-- ID
				attr = attr:sub(2)
				thunk.id = attr
			else
				-- Class
				table.insert(thunk.classes, attr)
			end

			return thunk
		end,
	})

	-- html[key] = thunk -- memoise for future use; __index will not be called then
	return thunk
end

return template
