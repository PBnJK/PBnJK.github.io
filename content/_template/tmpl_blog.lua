require("os")

local t = require("template")

local function computeTimeElement(timetable)
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

t.tagmap = {}

function t.Blog(metadata, def)
	for key, value in pairs(metadata.tags) do
		if t.tagmap[key] ~= nil then
			table.insert(t.tagmap[key], value)
		else
			t.tagmap[key] = value
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
							computeTimeElement(metadata.date),
						}),
					}),
					def,
				}),
			}),
		}),
	})
end

return t
