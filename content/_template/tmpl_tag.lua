require("os")

local t = require("template")

function t.Tag(title, def)
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
							t.h1(title),
						}),
					}),
					def,
				}),
			}),
		}),
	})
end

return t
