local t = require("template")

return t.Document({
	lang = "en",
	t.head({
		t.meta({ charset = "UTF-8" }),
		t.meta({ name = "viewport", content = "width=device-width, initial-scale=1" }),
		t.title("pedrob's website"),
		t.link({ href = "css/style.css", rel = "stylesheet" }),
	}),
	t.body({
		t.div({
			id = "wrapper",
			t.main({
				t.h1("Hello & Welcome!"),
				t.div({
					id = "postcard-container",
					t.div.infobox({
						id = "postcard-infobox",
						t.figure({
							id = "postcard-selfie",
							t.img({
								src = "assets/placeholder_selfie.jpg",
								alt = "Monochrome, stylised portrait of a young man with glasses and scraggly hair. He has a big smile on his face, and appears to be wearing a dress shirt",
								width = 600,
								height = 800,
							}),
							t.figcaption("(there will be a picture of me here in the future!)"),
						}),
						t.div({
							id = "postcard-data",
							t.h2({
								t.mark("About me"),
							}),
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
				}),
				t.hr({}),
				t.h2("temp (pls ignore ugly links)"),
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
})
