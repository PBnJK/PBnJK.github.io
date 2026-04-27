local t = require("template")

return t.Document({
	lang = "en",
	t.head({
		t.meta({ charset = "UTF-8" }),
		t.meta({ name = "viewport", content = "width=device-width, initial-scale=1" }),
		t.title("pedrob's blog"),
		t.link({ href = "/css/style.css", rel = "stylesheet" }),
	}),
	t.body({}),
})
