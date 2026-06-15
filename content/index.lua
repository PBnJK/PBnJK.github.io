local t = require("template")

local function starSticker(name)
	return t.dt({
		t.svg({
			xmlns = "http://www.w3.org/2000/svg",
			width = 16,
			height = 16,
			alt = "Star icon",
			aria_label = "Star icon",

			t.g({
				transform = "matrix(1.2560052,-0.01957609,0.01864766,1.3185391,-37.670964,-10.463164)",
				t.path.star_sticker({
					d = "M 34.196021,17.2592 24.645062,12.656539 16.799254,19.435395 18.225237,8.9295928 9.3536736,3.5625676 19.785938,1.6722863 22.148818,-8.4235735 27.17033,0.91397027 37.502233,0.04141094 30.173434,7.7026117 Z",
					transform = "matrix(0.444352,0.06452325,-0.06452325,0.444352,25.8736,10.78767)",
					fill = "currentColor",
				}),
			}),
		}),
		t.b(" " .. name),
	})
end

return t.Document({
	lang = "en",
	t.head({
		t.meta({ charset = "UTF-8" }),
		t.meta({ name = "viewport", content = "width=device-width, initial-scale=1" }),
		t.title("pedrob's website"),
		t.EmbedRootCSS(),
		t.link({ href = "/css/style.css", rel = "stylesheet" }),
		t.script({ src = "/js/script.js" }),
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
					t.h1("Hello & Welcome!"),
				}),
				t.hr(),
				t.main({
					t.ColorSchemeToggle(),

					t.h2("About me"),
					t.figure.right({
						t.img({
							src = "assets/placeholder_selfie.jpg",
							alt = "Monochrome, stylised portrait of a young man with glasses and scraggly hair. He has a big smile on his face, and appears to be wearing a dress shirt",
							width = 225,
							height = 300,
						}),
						t.figcaption({ t.i("Author's depiction of the author") }),
					}),
					t.p({
						"I'm Pedro. I'm a 19 year old ",
						t.i("Computer Science"),
						[[
					student. I enjoy learning about computers, programming them, and sometimes
					building them. I have dipped my toes into a variety of languages and projects,
					and consider myself quick to learn, but I have an affinity with C, Go, Python,
					and general webdev—be it React or plain HTML/CSS/JS.
				]],
					}),
					t.h3("Goals"),
					t.p({
						[[
					I'm looking to study up on backend design this year, mostly with Go—In fact,
					I've started working on a very simple
				]],
						t.a({
							href = "https://github.com/pbnjk/chat",
							"messenging app",
						}),
						" in Go! There's not much there yet, but maybe something will come out of it.",
					}),
					t.p([[
					I would also like to get a job. With the state of the job market nowadays,
					it's seeming a little tough for little junior me, but I have faith...
					At the very least, I'd like to get a job as a TA at my college.
				]]),

					t.h2("Personal life"),
					t.p([[
					Outside of tech, I also enjoy literature, drawing, and have an ardent passion
					for music. I really want to get more into film, but haven't yet.
				]]),
					t.figure.left({
						t.img({
							src = "assets/business_pleasure.jpg",
							alt = "Two books, the Brazilian Portuguese edition of “Design Patterns,” and “Gravity's Rainbow”",
							width = 368,
						}),
						t.figcaption({ t.i("Pictured: business and pleasure") }),
					}),
					t.h3("Faves"),
					t.dl.faves({
						starSticker("Books"),
						t.dd({
							" My favourite author is, by far, Thomas Pynchon. I read ",
							t.i("“Vineland”"),
							" and ",
							t.i("“The Crying of Lot 49”"),
							" love them dearly. Very excited to dive into ",
							t.i("“Gravity's Rainbow”"),
							" this year! ",
						}),
						t.br({}),
						starSticker("Music"),
						t.dd({
							[[
						My favourite musicians are too numerous to count... but, right now, I'm
					really into
					]],
							t.i("Geese"),
							" and ",
							t.i("Milton Nascimento "),
						}),
						t.br({}),
						starSticker("Art"),
						t.dd({
							[[
						I would like to have a favourite painter at some point. Please check back
					in a year!
					]],
						}),
						t.br({}),
						starSticker("Film"),
						t.dd({
							[[
						Well, again, I am not an avid movie watcher. Maybe Wes Anderson? Please
					check back in a year.
					]],
						}),
					}),
					t.h2("Personal talents"),
					t.p("I sometimes create things unrelated to the bossing-around of computers."),
					t.h3("Talents musical"),
					t.p([[
						I play a decent guitar—not good, mind, but decent. I've been learning how
					to properly utilise my right-hand recently—I'm self-taught, you see, and as
					such have created all sorts of nasty habits on the instrument. For example,
					until recently, I really did think I could fare pretty well by just attacking
					the strings with my index finger (“strumming.”) “Picking” seemed the realm
					of the classical, boisterous, conservatory players. But, as it would turn out,
					you can't do a good samba without learning how to make your thumb, index,
					middle, and ring fingers dance on the strings.
					]]),
					t.p("So I'm working on that."),
					t.p({
						[[
						I also like doing something resembling electronic music, and for a good	
					while, younger me entertained himself by writing little video-game-y instrumental
					pieces on
					]],
						t.abbr({
							title = "Linux Multi Media Studio",
							"LMMS",
						}),
						" using free soundfonts I found online.",
					}),
					t.p([[
						By younger me I of course mean current me. I still do that. It's a blast!
						You should try.
					]]),
					t.h3("...and talents literary"),
					t.p([[
						This website is literature! In more ways than one, as, besides the normal
					blog posts, I also host a lithany of album translations here. I also plan
					on trying my hand at writing poetry—maybe even a webnovel? Or... multiple
					webnovels?!
					]]),
					t.p("...only time will tell."),
					t.p([[
						Well, besides website-related ventures, I also once wrote a four-part piece
					of fanfiction once. It was not any good at all—Heavens no!—but it was, like,
					a good fifteen thousand (15,000) words that made up a cohesive, even somewhat
					interesting story.
					]]),
					t.p("I am happy about that one."),
					t.h2("About this website"),
					t.p({
						"This website uses a “fork” of ",
						t.span({
							lang = "ja",
							title = "Riki Moe",
							style = "text-decoration: underline dotted;",
							"りき萌",
						}),
						"'s ",
						t.a({
							href = "https://riki.house/lua-html",
							"HTML templating engine,",
						}),
						" which uses Lua to build static pages. It's sort of like an ad-hoc, Brazil-washed ",
						t.a({
							href = "gohugo.io",
							"Hugo.",
						}),
					}),
					t.p([[
					To be honest, this website is very hacked
				together... the little toy engine struggles to become a framework, and I'm
				looking forward to refactoring this later down the line (right now, I just
				need something I can jot down on—I can deal with the cruft...)
				]]),
				}),
			}),
			t.Footer(),
		}),
	}),
})
