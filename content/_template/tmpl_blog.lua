require("os")
require("math")

local t = require("template")

local WPM = 180

local function compute_tags_element(tags)
	if tags == nil then
		return nil
	end

	local tags_elements = {}

	for _, tag in ipairs(tags) do
		table.insert(
			tags_elements,
			t.li({
				t.a({
					href = "/blog/tag/" .. tag .. ".html",
					"#" .. tag,
				}),
			})
		)
	end

	return t.ul.tags(tags_elements)
end

local function compute_time_element(timetable)
	if not timetable then
		return t.time({
			datetime = "0000-00-00",
			"Unknown publishing date",
		})
	end

	local time = os.time(timetable)

	local datetime_string = os.date("%Y-%m-%d", time)
	local usertime_string = os.date("%B %d, %Y", time)

	return t.time({
		datetime = datetime_string,
		usertime_string,
	})
end

local function calculate_text_reading_time(text)
	return select(2, text:gsub("%S+", ""))
end

local function get_reading_time(def)
	local reading_time = 0

	for _, child in ipairs(def) do
		if type(child) == "string" then
			reading_time = reading_time + calculate_text_reading_time(child)
		elseif type(child) == "table" and getmetatable(child) == t.HtmlStr then
			reading_time = reading_time + calculate_text_reading_time(child.text)
		elseif type(child) == "table" then
			reading_time = reading_time + get_reading_time(child)
		end
	end

	return reading_time
end

local function compute_reading_time_element(def)
	local reading_time = get_reading_time(def) / WPM

	local function round(n)
		return math.floor(n + 0.5)
	end

	local time
	if reading_time < 1 then
		time = round(reading_time * 60) .. " second read"
	elseif reading_time < 60 then
		time = round(reading_time) .. " minute read"
	else
		time = round(reading_time / 60) .. " hour read"
	end

	return t.p["#reading-time"](time)
end

function t.Blog(metadata, def)
	for key, value in pairs(metadata.tags) do
		print(key, value)
		if _G.tagmap[key] ~= nil then
			table.insert(_G.tagmap[key], value)
			print(_G.tagmap[key])
		else
			_G.tagmap[key] = value
		end
	end

	return t.Document({
		lang = "en",
		t.head({
			t.meta({ charset = "UTF-8" }),
			t.meta({ name = "viewport", content = "width=device-width, initial-scale=1" }),
			t.title("pedrob's blog"),
			t.link({ href = "/css/root.css", rel = "stylesheet" }),
			t.link({ href = "/css/blog.css", rel = "stylesheet" }),
		}),
		t.body({
			t.div["#wrapper"]({
				t.main({
					t.article({
						t.header["#article-header"]({
							t.h1(metadata.title or "Untitled"),
							t.hr(),
							t.div["#metadata"]({
								compute_time_element(metadata.date),
								compute_reading_time_element(def),
								compute_tags_element(metadata.tags),
							}),
						}),
					}),
					def,
				}),
			}),
		}),
	})
end

return t
