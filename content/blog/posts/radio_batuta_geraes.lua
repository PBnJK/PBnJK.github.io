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

local function author(name)
	return t.p.quote_author({ t.i({ "— ", name }) })
end

local function cite(def, who)
	return t.blockquote.citation({ def, t.br(), author(who) })
end

local function song(title, en_title, def)
	return t.div({
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
		piano, alongside a profusion of strings, paying homage to Milton with “Nosso Homem
		em Três Pontas” (Our Man in Três Pontas), a piece by Dori Caymmi inspired by
		the beauty of Milton's music, that overflows with harmonies into his land, from
		which sprouts sonic foundations, the blemishes of his country, the roots of his
		continent—and so Milton encompasses the universe.
	]]),
	t.p([[
		And all of these qualities are gathered in “Geraes”, the theme of our program,
		a record that turns 50 now in 2026, and that, to be celebrated, deserves to
		be listened to properly. Which we'll do, track-by-track, mixing in excerpts from
		other songs as well, and revisiting stories from Milton and his friends, transforming
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
		flirting with the urban world and its lost Panair airplanes; also the modern city,
		in dialogue and conflict, like in the archaism of “Trastevere”; there is too modernity
		of the free woman in the homage to Leila Diniz, friend of Milton; and also the
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
	cite(
		[[
		When we recorded “Minas”, I already wanted to do “Geraes”. But it had only
  		been a year, it was too early. If before I'd already never identified myself
  		with the music of a given region, or with this or that group, now I have left
  		Brazil completely, in the sense that I'm not making music that is completely
  		regionalistic.
	]],
		"Milton Nascimento"
	),
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
			author("“Nosso Homem em Três Pontas”, by Dori Caymmi"),
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
	}, "Ronaldo Bastos"),
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
	t.p([[
		To arrive at “Geraes”, it was first needed to stop by “Minas”, said Milton Nascimento
		when he presented his LP. It was needed to stop by the child frightened by the wounded
		earth to then walk to the farm, and its wonder to be relived through memories.
	]]),
	t.p([[
    	The same chord that closes out “Simples” in “Minas” is the one that opens “Geraes” with
    	“Fazenda”.
	]]),
	t.p("Let us catch that little train drawn so sweetly by Milton on the cover of his record:"),
	song("Fazenda", "Farm", {
		lyric("00:00", "Water to drink", "Água de beber"),
		lyric("00:00", "Spigot on the backyard", "Bica no quintal"),
		lyric("00:00", "A thirst for living it all", "Uma sede de viver tudo"),
		t.br(),
		lyric("00:00", "And to forget", "E o esquecer"),
		lyric("00:00", "Was so normal", "Era tão normal"),
		lyric("00:00", "That time stopped", "Que o tempo parava"),
		t.br(),
		lyric("00:00", "And the boys", "E a meninada"),
		lyric("00:00", "Breathed in the wind", "Respirava o vento"),
		lyric("00:00", "Until night fell", "Até vir a noite"),
		lyric("00:00", "And the old folks spoke", "E os velhos falavam"),
		lyric("00:00", "Of the things of this life", "Coisas dessa vida"),
		t.br(),
		lyric("00:00", "I was a child", "Eu era criança"),
		lyric("00:00", "Today, it's you", "Hoje, é você"),
		lyric("00:00", "And tomorrow, us", "E no amanhã, nós"),
		t.br(),
		lyric("00:00", "I was a child", "Eu era criança"),
		lyric("00:00", "Today, it's you", "Hoje, é você"),
		lyric("00:00", "And tomorrow, us", "E no amanhã, nós"),
		t.br(),
		lyric("00:00", "Water to drink", "Água de beber"),
		lyric("00:00", "Spigot on the backyard", "Bica no quintal"),
		lyric("00:00", "A thirst for living it all", "Uma sede de viver tudo"),
		t.br(),
		lyric("00:00", "And to forget", "E o esquecer"),
		lyric("00:00", "Was so normal", "Era tão normal"),
		lyric("00:00", "That time stopped", "Que o tempo parava"),
		t.br(),
		lyric("00:00", "There were songbirds", "Tinha sabiá"),
		lyric("00:00", "There were orange trees", "Tinha laranjeira"),
		lyric("00:00", "There were mangoes", "Tinha manga rosa"),
		lyric("00:00", "There was the morning", "Tinha o sol da manhã"),
		t.br(),
		lyric("00:00", "And at farewell", "E na despedida"),
		lyric("00:00", "Aunt and uncle on the porch", "Tios na varanda"),
		lyric("00:00", "Jeep on the road", "Jipe na estrada"),
		lyric("00:00", "And my heart stayed there", "E o coração lá"),
		t.br(),
		lyric("00:00", "Aunt and uncle on the porch", "Tios na varanda"),
		lyric("00:00", "Jeep on the road", "Jipe na estrada"),
		lyric("00:00", "And my heart stayed there", "E o coração lá"),
		t.br(),
		lyric("00:00", "Aunt and uncle on the porch", "Tios na varanda"),
		lyric("00:00", "Jeep on the road", "Jipe na estrada"),
		lyric("00:00", "And my heart stayed there", "E o coração lá"),
	}),
	t.p([[
		And so we enter the world of “Geraes”: with a farm asleep in memories and awakened
		in the memory that lasts for the duration of the song.
	]]),
	t.p([[
	   	If the orchestral chord of “Simples” tied together “Minas” and “Geraes”—that child,
	   	that contemplated the destruction of the sun transformed into a wound; spring
	   	water into sadness; gold into poison; and blood into a toy—now that child is seen
	   	through the eyes of a nostalgic adult in “Fazenda”, with Nelson Angelo's lyrics
		remembering the integration of nature and the very human desire to drink it up,
		in a thirst for living it all—its waters, orchards, fauna, family saying amenities.
	]]),
	t.p([[
		Then, a farewell at the porch, a jeep traverses the road, but the feeling—the
		heart—remains there.
	]]),
	t.p([[
		This engine drives home the distance of the place, but not of the memory, that will
		now be manifested via the revisited and adapted oral culture of Minas Gerais.
	]]),
	aside(
		{
			"We are speaking of “Calix Bento”, a ",
			t.i("Congada "),
			[[
		that's part of the celebrations for Our Lady of the Rosary that take up the streets
		of the districts of Jatobá and Montes Claros.
	]],
		},
		[[
		A “Congada” is a style of afro-Brazilian procession syncretising Catholic and
		African beliefs. The name is derived from one of the meanings of the event,
		a symbolic recreation of the coronation of a Congolese king.
	]]
	),
	t.p([[
		A black party, here reimagined by Tavinho Moura, and, adapting its collective and
		ritualistic character, answering Milton Nascimento's solos with a choir formed
		by Francis Hime, Toninho Horta, and Novelli. Also present are the talents of Nelson
		Angelo, Robertinho Silva, and Dominguinhos, these last three that, respectively,
		not only sing but also provide the melody and rhythm with viola, percussion and
		accordion.
	]]),
	t.p({
		"A good ",
		t.i("Congada, "),
		"no?",
	}),
	t.p({
		[[
		Well, yes. But the reason why we use expressions like revisited, adapted, reimagined,
		adapted is because the track is not actually intened for documenting the popular
		religiosity of Minas Gerais—even because, at the release of the record,
		Milton was objective:
	]],
		t.q("I've always felt more than I've researched."),
	}),
	t.p([[
		And like Tavinho Moura said, the adapter of the religious song, in an interview
		with Dr. Sheyla Diniz:
	]]),
	cite(
		[[
		Look, it's no use going there and listening to a folkloric theme, a popular
		song, and thinking you can come here and translate it in a nice way. Because you
		don't belong to that, you have another formation—even social class, let's put
		it that way. Your way of playing is different, so what happens is that it ends
		up being the result of all of your acquired knowledge, that goes way beyond
		folkloric themes. In my case, it even passes through Bossa Nova, and through
		the perception of the other musicians in the Clube da Esquina, and what they
		were doing: Lô, Milton, everybody.
	]],
		"Tavinho Moura"
	),
	t.p({
		"And what ",
		t.i("had "),
		"“everybody” of the Clube da Esquina been doing?",
	}),
	t.p({
		[[
		Well, “Calix Bento” has in “Minas” its sister song, with faith, the ground, the
		salt of the earth, the bread, and the wine, elements of religious significance
		that had great importance to the poetry of the group and to Milton's religiosity,
		enveloped in an electric sound and given fearless, combative lyrics: “Fé Cega,
		Faca Amolada”, the second track from that 1975 record, much like the second track
		from “Geraes”, “Calix Bento”—but this one now with a devotion to the ground, a
		Catholicism extracted from the people, celebrating the oratory that houses the
		wine chalice and the bread of the consecrated
	]],
		t.i("host"),
		"—the Communion wafer.",
	}),
	t.p([[
		That is, a faith that is not blind, but instead vigorous, for it is shared by a
		community and stays alive in its tradition, that of the Congadas, now transformed
		into the aesthetic project of Milton Nascimento's feeling, with an acoustic atmosphere,
		tellurian, announcing in its verses a promised saviour—verses, in fact, sourced
		from the messianic and overtly political writings of the prophet Isaiah, which we
		now read:
	]]),

	cite(
		[[
  And there shall come forth a rod out of the stem of Jesse, and a Branch shall
  grow out of his roots: And the spirit of the Lord shall rest upon him [...]
  And he shall not judge after the sight of his eyes, neither reprove after the
  hearing of his ears: but with righteousness shall he judge the poor, and reprove
  with equity for the meek of the earth.
	]],
		"Isaiah 11 (KJV, paraphrased)"
	),

	song("Calix Bento", "Blessed Chalice, in latin", {
		lyric("00:00", "O God, save the oratory", "Ó Deus salve o oratório"),
		lyric("00:00", "O God, save the oratory", "Ó Deus salve o oratório"),
		lyric("00:00", "Where God made His dwelling, oiá, my God", "Onde Deus fez a morada, oiá, meu Deus"),
		lyric("00:00", "Where God made His dwelling, oiá", "Onde Deus fez a morada, oiá"),
		t.br(),
		lyric("00:00", "Where resides the Calix Bento", "Onde mora o Calix Bento"),
		lyric("00:00", "Where resides the Calix Bento", "Onde mora o Calix Bento"),
		lyric("00:00", "And the consecrated host, oiá, my God", "E a hóstia consagrada, oiá, meu Deus"),
		lyric("00:00", "And the consecrated host, oiá", "E a hóstia consagrada, oiá"),
		t.br(),
		lyric("00:00", "From Jesse came the rod", "De Jessé nasceu a vara"),
		lyric("00:00", "From Jesse came the rod", "De Jessé nasceu a vara"),
		lyric("00:00", "And from the rod grew a branch, oiá, my God", "E da vara nasceu a flor, oiá, meu Deus"),
		lyric("00:00", "And from the rod grew a branch, oiá", "E da vara nasceu a flor, oiá"),
		t.br(),
		lyric("00:00", "And from the branch was born Mary", "E da flor nasceu Maria"),
		lyric("00:00", "And from the branch was born Mary", "E da flor nasceu Maria"),
		lyric("00:00", "From Mary, our Saviour, oiá, my God", "De Maria, o Salvador, oiá, meu Deus"),
		lyric("00:00", "From Mary, our Saviour, oiá", "De Maria, o Salvador, oiá"),
		t.br(),
		lyric("00:00", "O God, save the oratory", "Ó Deus salve o oratório"),
		lyric("00:00", "O God, save the oratory", "Ó Deus salve o oratório"),
		lyric("00:00", "Where God made His dwelling, oiá, my God", "Onde Deus fez a morada, oiá, meu Deus"),
		lyric("00:00", "Where God made His dwelling, oiá", "Onde Deus fez a morada, oiá"),
		t.br(),
		lyric("00:00", "Where resides the Calix Bento", "Onde mora o Calix Bento"),
		lyric("00:00", "Where resides the Calix Bento", "Onde mora o Calix Bento"),
		lyric("00:00", "And the consecrated host, oiá, my God", "E a hóstia consagrada, oiá, meu Deus"),
		lyric("00:00", "And the consecrated host, oiá", "E a hóstia consagrada, oiá"),
		t.br(),
		lyric("00:00", "From Jesse came the rod", "De Jessé nasceu a vara"),
		lyric("00:00", "From Jesse came the rod", "De Jessé nasceu a vara"),
		lyric("00:00", "And from the rod grew a branch, oiá, my God", "E da vara nasceu a flor, oiá, meu Deus"),
		lyric("00:00", "And from the rod grew a branch, oiá", "E da vara nasceu a flor, oiá"),
		t.br(),
		lyric("00:00", "And from the branch was born Mary", "E da flor nasceu Maria"),
		lyric("00:00", "And from the branch was born Mary", "E da flor nasceu Maria"),
		lyric("00:00", "From Mary, our Saviour, oiá, my God", "De Maria, o Salvador, oiá, meu Deus"),
		lyric("00:00", "From Mary, our Saviour, oiá", "De Maria, o Salvador, oiá"),
	}),
	t.p("It's beautiful."),
})

--t.hr(),
--t.h2("Side B – America, love, Clementina"),
