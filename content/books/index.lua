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
		t.p("there were stories here, but I'm embarassed of them..."),
	}),
})
