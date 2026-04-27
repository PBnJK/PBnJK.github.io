local t = require("template")

return t.Document({
	lang = "en",
	t.head({
		t.meta({ charset = "UTF-8" }),
		t.meta({ name = "viewport", content = "width=device-width, initial-scale=1" }),
		t.title("pedrob's website"),
		t.link({ href = "/css/style.css", rel = "stylesheet" }),
	}),
	t.body({
		t.h1("Book"),
		t.ul({
			t.li({
				"2026-02-17:",
				t.a({
					href = "2026-02-17_little_caesars/",
					"little caesars",
				}),
			}),
			t.li({
				"2026-02-18:",
				t.a({
					href = "2026-02-18_sweltering_disk/",
					"the sweltering disk",
				}),
			}),
		}),
	}),
})
