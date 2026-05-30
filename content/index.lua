local t = require("template")

-- Creates an "infobox"
-- This is a box with a drop-shadow and screws on its four corners
local function infobox(id, def)
	local function screw(class)
		return t.img({
			src = "/assets/svgs/screw.svg",
			width = 24,
			height = 24,
			class = "infobox-screw " .. class,
		})
	end

	return t.div.infobox[id]({
		screw("infobox-screw-tl"),
		screw("infobox-screw-tr"),
		screw("infobox-screw-bl"),
		screw("infobox-screw-br"),
		def,
	})
end

return t.Document({
	lang = "en",
	t.head({
		t.meta({ charset = "UTF-8" }),
		t.meta({ name = "viewport", content = "width=device-width, initial-scale=1" }),
		t.title("pedrob's website"),
		t.link({ href = "/css/style.css", rel = "stylesheet" }),
		t.link({ href = "/css/root.css", rel = "stylesheet" }),
		t.script({ src = "/js/script.js" }),
	}),
	t.body({
		t.div["#wrapper"]({
			t.main({
				t.h1("Hello & Welcome!"),
				t.hr(),
				t.ColorSchemeToggle(),
				t.div["#container"]({
					infobox("#infobox-pii", {
						t.figure["#selfie"]({
							t.ZoomableImage(
								"assets/placeholder_selfie.jpg",
								600,
								"Monochrome, stylised portrait of a young man with glasses and scraggly hair. He has a big smile on his face, and appears to be wearing a dress shirt"
							),
							t.figcaption("(there will be a picture of me here in the future!)"),
						}),
						t.div({
							t.h2("About me"),
							t.ul({
								t.li("Living in Minas Gerais, Brazil"),
								t.li("Knowledgeable in C, Python, Go, Lua, and general webdev"),
								t.li(
									"Native Brazilian Portugues speaker and fluent in English, with some experience translating software"
								),
								t.li("Working towards a Bachelors in Computer Science, currently on my Sophomore year"),
								t.li("Working on some personal projects"),
								t.li(
									"I also have an interest in drawing and music, having composed soundtracks for a few games!"
								),
							}),
						}),
					}),
					infobox("#infobox-interests", {
						t.div({
							t.h2("My works"),
							t.ul({
								t.li({
									t.a({
										href = "books/",
										"books",
									}),
								}),
								t.li({
									t.a({
										href = "blog/",
										"blog",
									}),
								}),
							}),
						}),
					}),
				}),
			}),
		}),
	}),
})
