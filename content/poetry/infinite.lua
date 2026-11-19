local t = require("template")

return t.Document({
	lang = "en",
	t.head({
		t.meta({ charset = "UTF-8" }),
		t.meta({ name = "viewport", content = "width=device-width, initial-scale=1" }),
		t.title("pedrob's poetry"),
		t.EmbedRootCSS(),
		t.link({ href = "/css/style.css", rel = "stylesheet" }),
		t.link({ href = "/css/infinite.css", rel = "stylesheet" }),
		t.script({ src = "/js/script.js" }),
		t.script({ src = "/js/infinite.js" }),
		t.link({
			rel = "icon",
			href = "/assets/favicon.ico",
			type = "image/x-icon",
		}),
	}),
	t.body({
		t.div["#wrapper"]({
			t.Header(),
			t.main({
				t.ColorSchemeToggle(),

				t.div["#infinicanvas"]({
					t.div["#ic-stuff"]({}),
				}),
				t.div["#toolkit"]({
					t.button["#tk-move"]({}),
				}),
			}),
		}),
	}),
})
