require("os")

local t = require("template")

function t.Tag(title, metadata, def)
	local file_elements = {}
	for _, data in ipairs(metadata) do
		table.insert(
			file_elements,
			t.li({
				t.a({
					href = data.path,
					data.title,
				}),
			})
		)
	end

	return t.Document({
		lang = "en",
		t.head({
			t.meta({ charset = "UTF-8" }),
			t.meta({ name = "viewport", content = "width=device-width, initial-scale=1" }),
			t.title("pedrob's blog"),
			t.EmbedRootCSS(),
			t.link({ href = "/css/blog.css", rel = "stylesheet" }),
			t.link({
				rel = "icon",
				href = "/assets/favicon.ico",
				type = "image/x-icon",
			}),
		}),
		t.body({
			t.div["#wrapper"]({
				t.main({
					t.article({
						t.header["#article-header"]({
							t.h1(title),
						}),
					}),
					def,
					t.ul(file_elements),
				}),
			}),
		}),
	})
end

return t
