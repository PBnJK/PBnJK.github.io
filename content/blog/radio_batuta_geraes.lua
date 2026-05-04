local t = require("tmpl_blog")

local function aside(content, aside_content)
	return t.div.p_with_aside({
		t.p({
			content,
		}),
		t.aside({
			t.p({
				aside_content,
			}),
		}),
	})
end

local function cite(def)
	return t.blockquote.citation({ def })
end

local function author(name)
	return t.p.quote_author({ name })
end

local function song(title, en_title, def)
	return t.div.song({
		t.hr(),
		t.div({
			t.div.song_meta({
				t.p.song_title(title),
				t.p.song_en_title({
					"(",
					en_title,
					")",
				}),
			}),
			t.div.song_contents(def),
		}),
		t.hr(),
	})
end

local function lyric(time, en_lyric, pt_lyric)
	return t.div.lyric_box({
		t.p.lyric_time({ t.i(time) }),
		t.p.lyric_text(en_lyric),
		t.p.lyric_og(pt_lyric),
	})
end

local function note(text)
	return t.p.lyric_note({
		t.i(text),
	})
end

return t.Blog({
	title = "‘Geraes’: Minas, world, Milton (in English)",
	date = {
		year = 2026,
		month = 5,
		day = 3,
	},
	tags = { "music", "translation" },
}, {
	t.h2("Preamble"),
	t.p({
		"This is an English translation of a podcast special done by ",
		t.i("Rádio Batuta, "),
		"an online radio station managed by the ",
		t.i("Insituto Moreira Salles"),
		"—a Brazilian cultural institute.",
	}),
	t.p([[
		The special consists of a track-by-track analysis of Milton Nascimento's
		1976 album “Geraes”, detailing its history, meaning, and cultural context
		behind the album and the artists responsible for it.
	]]),
	t.p("From this paragraph on, all content is translated directly from the original. Enjoy!"),
	t.h2("‘Geraes’: Minas, mundo, Milton"),
	t.p([[
		After “Minas” (1975), “Geraes” (1976). Milton Nascimento's record that forms a
		pair with its predecessor turns 50 years old in 2026. In it, the singer takes
		a stroll through rural life, goes to Latin America (accompanied by Mercedes Sosa
		and the chilean group Água), touches on sensitive topics in Brazilian history,
		dives into the folklore of Bahia, and has strong encounters with Chico Buarque
		and Clementina de Jesus. Village and planet are connected by Milton's unique voice,
		then at its peak. Researched Otavio Filho, author of other Batuta specials, goes
		track-by-track (with excerpts of recordings from other records) to show the dimensions
		of this work that made a mark and remains intense. The journey is filled with information
		without lacking excitement.
	]]),
	t.p({
		t.b("Script and presentation: "),
		"Otavio Filho",
	}),
	t.p({
		t.b("Editing: "),
		"Otavio Filho and Filipe Di Castro",
	}),
	t.p({
		t.b("Translation: "),
		"Pedro B.",
	}),
	t.h2("Side A – Memory, Mercedes, Chico"),
	t.p("Rádio Batuta presents: ‘Geraes’: Minas, world, Milton. With Otavio Filho."),
	t.p([[
		To enter the universe of Milton Nascimento, we are listening to Luiz Eça at the
		piano and strings paying homage to Milton with “Nosso Homem em Três Pontas” (Our
		Man in Três Pontas), a piece by Dori Caymmi inspired by the beauty of Milton's
		music, that overflows with harmonies into his land, from which sprouts sonic
		foundations, the blemishes of his country, the roots of his continent—and so
		Milton wins the universe.
	]]),
	t.p([[
		And all of these qualities are gathered in “Geraes”, the theme of our program,
		a record that turns 50 now in 2026, and that, to be celebrated, deserves to
		be listened to properly. Which we'll do, track-by-track, mixing in excerpts from
		other songs as well, and revisiting stories from Milton and hist friends, transforming
		history, political movements, and the richness of popular culture into music.
	]]),
	aside(
		{
			[[
		And this Dori Caymmi theme also plays into the cover art for “Geraes”, an illustration
		by Milton Nascimento depicting the 
	]],
			t.i("Serra de Três Pontas, "),
			[[
		his childhood home, in a simple yet meaningful drawing that had already illustrated
		the liner notes of “Minas”, the 1975 that began the “Minas Geraes” diptych.
	]],
		},
		[[
		Serra de Trẽs Pontas translates roughly to “Three Peaks Mountains”, owing to
		the mountain range's peculiar, self-explanatory shape
	]]
	),
	t.p([[
		In that LP, there is an electrified sound sound and hints of jazzy accents,
		flirting with the urban world and its lost Panair airplanes; the modern city,
		in dialogue and conflict, like in the archaism of “Trastevere”; the modernity
		of the free woman in the homage to Leila Diniz, friend of Milton; and
		transformation of a landscape and its people, with the end of the Bahia-Minas
		railroad in “Ponta de Areia”.
	]]),
	aside(
		{
			[[
		On the other hand, in “Geraes”, we will, starting with the outdated spelling
		of its title, set off to reclaim lost spaces and social customs on the edge
		of extinction; make an effort to comprehend, as well as
	]],
			t.i("feel "),
			"the wish to manifest oneself politically.",
		},
		[[
		“Geraes” is an archaic spelling of “gerais”, meaning “general”. “Minas Gerais”
		translates to “General Mines”, after the region's many gold mines found in
		colonial times.
	]]
	),
	t.p([[
		The sound of “Geraes” is that of the land. But what land? Milton explained at the
		release of the LP:
	]]),
	cite([[
		When we recorded “Minas”, I already wanted to do “Geraes”. But it had only
  		been a year, it was too early. If before I'd already never identified myself
  		with the music of a given region, or with this or that group, now I have left
  		Brazil completely, in the sense that I'm not making music that is completely
  		regionalistic.
	]]),
	t.p([[
		...he said. And indeed: Milton's sound seemed more and more unable to recognise
		frontiers.
	]]),
	t.p({
		[[
		In “Geraes”, the music, as representative of his land as it is expressive in an
		universal language of emotion, will integrate itself with Andean sounds. To his
		usual friends of sound from Belo Horizonte—like Nelson Angelo, Toninho Horta and
		Novelli—will be added the
	]],
		t.i("hermanos "),
		[[
		of the Chilean group Água, as well as the
		Argentinian, universally Latin, Mercedes Sosa. There will also be Francis Hime,
		arranger of the record's greatest hit, and Milton's then newest collaborator,
		Chico Buarque de Hollanda. Above all, sovereign, in a samba that seemed to be
		made just for her, the great party of the record will be led by Clementina de
		Jesus.
	]],
	}),
	t.p([[
		These appearances, so diverse and stellar, reflected the aesthetic disquietude
		of Milton—the new airs of his music. But also his prestige and central importance.
	]]),
	aside(
		t.blockquote({
			"You already have the name of a doctor, brother",
			t.br(),
			"And you're the one that will command now, it is your mission",
			t.br(),
			"Singing together with the crowd",
			t.br(),
			author("— “Nosso Homem em Três Pontas”, by Dori Caymmi"),
		}),
		[[
        Important or well-educated people were often referred to as “doctors” by the
  		folks from poorer or simpler backgrounds as a way of recognising their
  		authority, regardless of their actual academic formation. Paulo César Pinheiro
  		is using the term to highlight Milton Nascimento's cultural importance.
		]]
	),
	t.p([[
		Years later, Paulo César Pinheiro would write these verses over the melody of
		“Nosso Homem em Três Pontas”.
	]]),
	t.p([[
		And after becoming a central figure in festivals, Milton turned into one of the
		greatest idols in jazz in his American incursions. He showed the world the new
		sound of “Clube da Esquina”; suffered through and responded to the hell of censorship
		in “Milagre dos Peixes”; and, at last, achieved commercial success in “Minas”,
		his first hundred thousand copies sold, at a time when he was already attracting
		crowds to stadiums, theaters, and college auditoriums—as shown, by the way, in
		the photos present in the liner notes of “Minas” and “Geraes”.
	]]),
	t.p([[
		A young audience, aware of the sacredness of his all-encompassing song; of the
		magnetism of his overwhelming presence. In the words of his collaborator Ronaldo
		Bastos:
	]]),
	cite({
		[[
		Milton arrived ready, took the leap and fronted the most transcendental fusion
		of continents and musical eras of the world that I've ever witnessed. Nothing
		was as it was. Sophisticated, Milton changed Brazilian music practically at the
		same time as he became an inspiration and a new parameter for jazz. Crowds
		sensitive to him started following him and filling up stadiums. His Latin song
		is the common language of new generations of artists around the world—]],
		t.i("especially "),
		"in Latin America, where his art provoked a modern rebirth of that music.",
	}),
	t.p([[
		And that's where we're headed: the fusion of continents and cultures, their sounds
		gathered in the transcendentality of Milton Nascimento's artistic genius. A man
		that is the sound of enchantment and fright; that, with his song, brings forth
		destruction.
	]]),
	t.p("Like in “Simples”, by Nelson Angelo, the closing song of “Minas”:"),
	song("Simples", "Simple", {
		note("(excerpt)"),
		t.br(),
		lyric("06:28", "Look: the gold of the mine turned to poison", "Olha: o ouro da mina virou veneno"),
		lyric("06:41", "The blood on the earth turned into a toy", "O sangue na terra virou brinquedo"),
		lyric("06:47", "And that child sitting there...!", "E aquela criança ali sentada...!"),
	}),
	t.p("wow man just like wow boy man"),

	t.hr(),
	t.h2("Side B – America, love, Clementina"),
})
