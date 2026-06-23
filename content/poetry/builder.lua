local t = require("template")

return t.Document({
	lang = "en",
	t.head({
		t.meta({ charset = "UTF-8" }),
		t.meta({ name = "viewport", content = "width=device-width, initial-scale=1" }),
		t.title("pedrob's poetry"),
		t.EmbedRootCSS(),
		t.link({ href = "/css/style.css", rel = "stylesheet" }),
		t.link({ href = "/css/poetry.css", rel = "stylesheet" }),
		t.script({ src = "/js/script.js" }),
		t.script({ src = "/js/poetry_builder.js" }),
		t.link({
			rel = "icon",
			href = "/assets/favicon.ico",
			type = "image/x-icon",
		}),
	}),
	t.body({
		t.div["#wrapper"]({
			t.Header(),
			t.article({
				t.header({
					t.h1("Poetry Builder"),
				}),
				t.hr(),
				t.main({
					t.ColorSchemeToggle(),

					t.h2("Write an Envelope poem"),
					t.p([[
						The Emily Dickinson classic—fragile, intimate, radical poems scrawled on
						the corners of torn pieces of envelope paper—now in all new electronic form!
					]]),

					t.h3["#envelope-title"](""),
					t.div["#envelope-wrapper"]({}),
				}),
			}),
		}),
	}),
})
