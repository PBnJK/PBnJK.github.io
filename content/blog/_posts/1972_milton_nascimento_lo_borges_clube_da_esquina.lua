local t = require("tmpl_lyrics")

local function additional(summary, body)
	return t.details.additional({
		t.summary({ t.i(summary) }),
		body,
	})
end

return t.Album({
	title = "Clube da Esquina",
	artist = "Milton Nascimento & Lô Borges",
	genre = "MPB",
	year = 1972,

	date = {
		year = 2025,
		month = 9,
		day = 29,
	},
}, {
	t.figure({
		t.ZoomableImage(
			"/assets/blog/covers/1972_milton_nascimento_lo_borges_clube_da_esquina.jpg",
			"Clube da Esquina album cover, depicting two young boys sitting by the road",
			400,
			400
		),
		t.figcaption([[
			Green, yellow, and barbed wire. Two friends unwittingly photographed on the
		side of the road became the face of this legendary album.
		]]),
	}),
	t.Note([[
		Big thank you to Eduardo from the Walterooski discord, who helped immensely
	with the context! To be completely honest, a proper introduction would fill up
	a whole book. So, to those that, like us, love this album and its history:
	please forgive any omissions!
	]]),
	t.p([[
		By 1972, eight years after the coup, the Years of Lead of the military dictatorship
	in Brazil were in full swing. Already, artists like Gilberto Gil and Caetano Veloso
	had been exiled—journalists, politicians, students, and all others opposed to the
	regime were being arrested, tortured, and killed.
	]]),
	additional("About the military dictatorship", {
		t.p([[
			The year was 1964 and president João Goulart was doing rallies defending
		the agrarian reform. Just a few years earlier in 1961, at the height of the
		Cold War, he went on a trade mission to China (also visiting the Soviet Union)
		and gave Che Guevara the Order of the Southern Cross—a sort of Brazilian Medal
		of Honor. He fancied himself a progressive;e should have known better. next
		there were marches with “Family, God and Freedom” banners, a US Navy ship stationed
		just off the Guanabara bay and tanks parading the streets. He was swiftly
		overthrown by the military.
		]]),
		t.p([[
			Their rule would later be called a “soft dictatorship.” And, matter of fact,
		things didn't change much for the general populace. It's not like Brazil was
		used to democracy anyways—it was kind of there from 1945 when Vargas (the last
		dictator) was deposed until 1964. So it was business as usual for the majority
		of the country. Except, of course, if you were a student, or an artist or a
		journalist or... Well, mostly if you weren't willing to stay in line. Then it
		wasn't soft at all.
		]]),
		t.figure({
			t.ZoomableImage(
				"/assets/blog/clube_da_esquina/jovem_ferido.jpg",
				"A wounded man being carried by four others.",
				564,
				418
			),
			t.figcaption([[
				A wounded man being carried during a student protest that became known
			as the Bloody Friday. 28 people died.
		]]),
		}),
		t.figure({
			t.ZoomableImage(
				"/assets/blog/clube_da_esquina/artistas_protestam.jpg",
				"Prominent Brazilian artists protesting during the “March of the 100.000.”",
				564,
				418
			),
			t.figcaption([[
				Prominent Brazilian artists protesting during the “March of the 100.000.” Left
			to right: Tônia Carrero, Eva Wilma, Odete Lara, Norma Bengell and Cacilda Becker,
			all actresses.
		]]),
		}),
		t.p([[
			The National Truth Comission, an organization established in 2011 to investigate
		the human rights violations that occurred from 1946-1988, officially stated that
		a grand total of 434 people were killed and/or “disappeared” by the government
		during that period. Compared to other dictatorships such as Argentina's, where
		that tally reached upwards of 30.000 people, it was indeed one of the laxer regimes.
		But just one is enough to say “never again.”
		]]),
	}),
	t.p([[
		It was in this environment of repression that a group of musician friends, led
	by 30-year-old Milton Nascimento and 20-year-old Beatlemaniac Lô Borges, decide
	to record a very unique album—one that was as much a document of their nights spent
	chatting and jamming on a street corner (the titular “Clube da Esquina”—the “Corner
	Club”) as it was a response to the times they were living in.
	]]),
	additional("About Milton and Lô", {
		t.figure({
			t.ZoomableImage(
				"/assets/blog/clube_da_esquina/milton_nascimento.jpg",
				"Milton Nascimento performing in 1969",
				640,
				396
			),
			t.figcaption("Milton Nascimento performing in 1969"),
		}),
		t.p([[
			In 1942 Maria do Carmo Nascimento was in a pickle. She was let down, left dry with
		a kid in her belly, another single mother, a heritage of former slaves that were
		freed in 1888 with neither donkey nor land. Housemaid she was, as was her own mother.
		At that time, if the girl got pregnant she was let go. Those worker rights were
		not yet, after all. However, her bosses didn't let her go. Still, she got depressed
		and, later on, tuberculosis.
		]]),
		t.p([[
			Milton Nascimento was born but his mom didn't make past his two years old. It
		happened that Lília, the bosses' daughter was recently married and couldn't get
		pregnant. She asked his grandmother if she could adopt him and granny acquiesced.
		See, Lília was a music teacher. Her husband had a radio station.
		]]),
		t.p([[
			Milton went to Rio, got invited to attend a house party. There he met singer
		Elis Regina, singer deity in the Brazilian pantheon. Milton went to her house—the
		concierge made him take the service elevator. Elis brought the house down, called
		a moving company and went to live in another building. Sometime later Milton would
		get invited to the TV show 'O Fino da Bossa' (The Bossa Class Acts) and then be
		promptly uninvited—apparently, nobody had told the producers he was black. Elis
		stormed out and said she wouldn't do the show without him. They brought Milton
		back. I should say her nickname was “little chilly pepper” (5'1" of sheer fierceness!)
		]]),
		t.hr(),
		t.figure({
			t.ZoomableImage("/assets/blog/clube_da_esquina/lo_borges.jpg", "Lô Borges on studio", 640, 389),
			t.figcaption("Lô Borges in studio. Unsure of date. Source: https://www.cafidigital.com.br"),
		}),
		t.p([[
			In 1962, 10 years old Lô Borges was sent to buy bread and milk for the afternoon
		snacks. He lived on the 17th floor. Reaching the street, he ended up stumbling
		upon a 20-something Milton Nascimento playing and singing on the street. Hearing
		his voice—one of which, in later years, Elis Regina would say: “if God were to sing,
		He'd sound like Milton Nascimento,”—Lô was enchanted. It was the beginning of their
		friendship.
		]]),
		t.p([[
			In 1967 there was a festival, it was the second edition of the International Song
		Festival in Rio. Milton Nascimento won as best interpreter, placed both second
		and seventh place with the songs “Travessia” (Crossing) and “Morro Velho” (Old
		Hill). Milton celebrated with Fernando Brant, co-author of “Travessia”, journalist
		and honorary member of the Corner Club. 15 year-old Lô Borges went to the store
		and bought himself a copy of Sgt Pepper's Lonely Hearts Club Band.
		]]),
		t.p([[
			The festival in the following year was iconic, especially for the songs “É Proibido
		Proibir” (To Forbid is Forbidden) by Caetano Veloso and “Caminhando e Cantando”
		(Singing While Walking) by Geraldo Vandré—both songs with heavy overtones of protest.
		]]),
		t.hr(),
		t.figure({
			t.ZoomableImage(
				"/assets/blog/clube_da_esquina/nadando.jpg",
				"Beto Guedes, Milton Nascimento, and Lô Borges swimming",
				640,
				360
			),
			t.figcaption("Beto Guedes, Milton Nascimento, and Lô Borges swimming"),
		}),
		t.p([[
			In December of 1968 came AI-5, ”Institutional Act Number 5”—a coup within a
		coup. Congress was closed down, civil rights like the habeas corpus were suspended,
		and extreme censorship were implemented, alongside institutionalized arbitrary
		detentions and torture.
		]]),
		t.p([[
			Geraldo Vandré was kindly invited to partake in an electric shock treatment
		and never recovered. Caetano Veloso, Gilberto Gil and Chico Buarque fled the country.
		Milton Nascimento went on tour throughout the United States and released the album
		“Coragem” (Courage). The Borges brothers, Márcio and Lô, were left behind, constantly
		moving houses, afraid to be taken in the middle of the night.
		]]),
	}),
	t.figure({
		t.ZoomableImage(
			"/assets/blog/clube_da_esquina/clube_da_esquina.jpg",
			"Part of the Clube da Esquina, sitting on a bench: Lô Borges, Fernando Brant, Márcio Borges, and Milton Nascimento. Ex-president of Brazil Juscelino Kubitscheck is also there, looking very serious in a black suit and tie",
			600,
			408
		),
		t.figcaption([[
			Some of the members of the club. From left to right: Lô Borges, Fernando Brant,
			Ex-president of Brazil Juscelino Kubitscheck (not part of the club,) Márcio
			Borges, and Milton Nascimento
		]]),
	}),
	t.p([[
		The creative process of the album was quite unique: the members of the “club”
	all worked on every part of the recording, composing, writing, playing, and improvising
	multiple parts, each bringing their own musical tastes and influences to the table,
	resulting in a beautiful, psychedelic, folk-infused pop trip.
	]]),
	additional("About the recording process", {
		t.p([[
			The recording of the album was, as to be expected from such a writing process,
		hectic and, even for the time, tremendously spartan—the majority of the sessions
		were conducted on a beach house in Rio de Janeiro, with the final recordings being
		done on antiquated two-channel equipment. This meant that most tracks were recorded
		basically live, with few overdubs, as any mistakes would ruin the whole track,
		and mixdowns would degrade the quality of the recording.
		]]),
		t.p([[
			The record was also unique for being a double album, one of the first in
		Brazilian history.
		]]),
	}),
	t.p([[
		Addendum: Lô Borges unfortunately passed away in November of 2025, at 73 years
	of age. He was still recording and touring albums, and, in fact, has left us with
	about four albums' worth of music, now planned to be released posthumously. RIP
	Lô!!!
	]]),
	t.p({
		"(Additionally... for contextual notes on certain words and concepts, you can hover/tap on ",
		t.InlineNote(
			"any text that's higlighted like this)",
			"This is what's known as a “tutorial” in video entertainment circles."
		),
	}),
	t.Song({
		title = "Tudo que Você Podia Ser",
		en_title = "Everything that You Could Ever Be",
		artist = "Milton Nascimento",
		writer = { "Lô Borges", "Márcio Borges" },
		personnel = {
			["Acoustic guitar"] = "Lô Borges",
			Bass = "Beto Guedes",
			Caxixi = "Luiz Alves",
			Congas = "Rubinho",
			Drums = "Robertinho Silva",
			["Electric guitar"] = "Toninho Horta",
			["Lead vocals"] = "Milton Nascimento",
			Organ = "Wagner Tiso",
			["12-string guitar"] = "Tavito",
		},
	}, {
		t.Lyric("00:11", "With sun and rain, you dreamed", "Com sol e chuva, você sonhava"),
		t.Lyric("00:21", "That it would get better later", "Que ia ser melhor depois"),
		t.Lyric(
			"00:24",
			"You wanted to be the great hero of the roads",
			"Você queria ser o grande herói das estradas"
		),
		t.Lyric("00:26", "Everything that you wanted to be", "Tudo que você queria ser"),
		t.br(),
		t.Lyric("00:40", "I know a secret: you're afraid", "Sei um segredo: você tem medo"),
		t.Lyric("00:50", "Now you just think about going back", "Só pensa agora em voltar"),
		t.Lyric("00:53", {
			"You don't talk about ",
			t.InlineNote("Zapata", "Emiliano Zapata, a leading figure in the Mexican Revolution"),
			"'s boot and ring anymore",
		}, "Não fala mais da bota e do anel de Zapata"),
		t.Lyric("00:56", "Everything that you should be—without fear", "Tudo que você devia ser—sem medo"),
		t.br(),
		t.Lyric("01:14", "You don't remember me anymore", "Não se lembra mais de mim"),
		t.Lyric(
			"01:16",
			"You didn't want me to talk about everything",
			"Você não quis deixar que eu falasse de tudo"
		),
		t.Lyric("01:19", "Everything that you could ever be—on the road", "Tudo que você podia ser—na estrada"),
		t.br(),
		t.Lyric("01:37", "Ah! Sun and rain on your road", "Ah! Sol e chuva na sua estrada"),
		t.Lyric("01:46", "But it doesn't matter, there's no problem", "Mas não importa, não faz mal"),
		t.Lyric("01:49", "You still think and it's better than nothing", "Você ainda pensa e é melhor do que nada"),
		t.Lyric("01:52", "Everything that you're able to be—or nothing", "Tudo que você consegue ser—ou nada"),
		t.br(),
		t.Lyric("02:09", "It doesn't matter, there's no problem", "Mas não importa, não faz mal"),
		t.Lyric("02:11", "You still think and it's better than nothing", "Você ainda pensa e é melhor do que nada"),
		t.Lyric("02:14", "Everything that you're able to be—or nothing", "Tudo que você consegue ser—ou nada"),
	}),
	t.Song({
		title = "Cais",
		en_title = "Pier",
		artist = "Milton Nascimento",
		writer = { "Milton Nascimento", "Ronaldo Bastos" },
		personnel = {
			["Acoustic bass"] = "Luiz Alves",
			["Acoustic guitar"] = "Milton Nascimento",
			["Lead vocals"] = "Milton Nascimento",
			Organ = "Wagner Tiso",
			Percussion = { "Robertinho Silva", "Toninho Horta" },
			Piano = "Milton Nascimento",
		},
	}, {
		t.Lyric("00:01", "To those that want to let go", "Para quem quer se soltar"),
		t.Lyric("00:03", "I invent the pier", "Invento o cais"),
		t.Lyric("00:09", "I invent more than what loneliness gives me", "Invento mais que a solidão me dá"),
		t.Lyric("00:17", "I invent a shining new moon", "Invento lua nova a clarear"),
		t.Lyric("00:24", "I invent love", "Invento o amor"),
		t.Lyric("00:27", "And I know the pain of launching off", "E sei a dor de me lançar"),
		t.br(),
		t.Lyric("00:39", "I wanted to be happy", "Eu queria ser feliz"),
		t.Lyric("00:45", "I invent the sea", "Invento o mar"),
		t.Lyric("00:48", "I invent in myself the dreamer", "Invento em mim o sonhador"),
		t.br(),
		t.Lyric("00:56", "To those that want to follow me", "Para quem quer me seguir"),
		t.Lyric("01:07", "I want more", "Eu quero mais"),
		t.Lyric("01:11", "I have the path to what I've always wanted ", "Tenho o caminho do que sempre quis"),
		t.Lyric("01:17", "And a boat ready to set sail", "E um saveiro pronto pra partir"),
		t.br(),
		t.Lyric("01:25", "I invent the pier", "Invento o cais"),
		t.Lyric("01:29", "And know the time to launch off", "E sei a vez de me lançar"),
	}),
	t.Song({
		title = "O Trem Azul",
		en_title = "The Blue Train",
		artist = "Lô Borges",
		writer = { "Lô Borges", "Ronaldo Bastos" },
		personnel = {
			["Backing vocals"] = { "Beto Guedes", "Lô Borges", "Toninho Horta" },
			Bass = "Beto Guedes",
			Drums = "Robertinho Silva",
			["Electric guitar"] = "Toninho Horta",
			["Lead vocals"] = "Lô Borges",
			["Rhythm guitar"] = "Lô Borges",
			Organ = "Wagner Tiso",
		},
	}, {
		t.Lyric("00:30", "Things that we forget to say", "Coisas que a gente se esquece de dizer"),
		t.Lyric(
			"00:38",
			"Phrases that the wind sometimes comes to remind me",
			"Frases que o vento vem as vezes me lembrar"
		),
		t.Lyric("00:46", "Things that went a long time unsaid", "Coisas que ficaram muito tempo por dizer"),
		t.Lyric("00:53", "Tirelessly they fly in the song of the wind", "Na canção do vento não se cansam de voar"),
		t.br(),
		t.Lyric("01:06", "You catch the blue train, the sun on your head", "Você pega o trem azul, o sol na cabeça"),
		t.Lyric("01:14", "The sun catches the blue train, you on its head", "O sol pega o trem azul, você na cabeça"),
		t.Lyric("01:21", "The sun on your head", "O sol na cabeça"),
		t.br(),
		t.Lyric("01:33", "Things that we forget to say", "Coisas que a gente se esquece de dizer"),
		t.Lyric(
			"01:39",
			"Phrases that the wind sometimes comes to remind me",
			"Frases que o vento vem as vezes me lembrar"
		),
		t.Lyric("01:47", "Things that went a long time unsaid", "Coisas que ficaram muito tempo por dizer"),
		t.Lyric("01:54", "Tirelessly they fly in the song of the wind", "Na canção do vento não se cansam de voar"),
		t.br(),
		t.Lyric("02:08", "You catch the blue train, the sun on your head", "Você pega o trem azul, o sol na cabeça"),
		t.Lyric("02:15", "The sun catches the blue train, you on its head", "O sol pega o trem azul, você na cabeça"),
		t.Lyric("02:22", "The sun on your head", "O sol na cabeça"),
		t.Text("(instrumental)"),
		t.Lyric("03:04", "You catch the blue train, the sun on your head", "Você pega o trem azul, o sol na cabeça"),
		t.Lyric("03:11", "The sun catches the blue train, you on its head", "O sol pega o trem azul, você na cabeça"),
		t.Lyric("03:19", "The sun on your head", "O sol na cabeça"),
		t.br(),
		t.Lyric("03:30", "You catch the blue train, the sun on your head", "Você pega o trem azul, o sol na cabeça"),
		t.Lyric("03:37", "The sun catches the blue train, you on its head", "O sol pega o trem azul, você na cabeça"),
		t.Lyric("03:45", "The sun on your head", "O sol na cabeça"),
	}),
	t.Song({
		title = "Saídas e Bandeiras №1",
		en_title = "Exits and Flags #1",
		artist = "Milton Nascimento & Beto Guedes",
		writer = { "Fernando Brant", "Milton Nascimento" },
		personnel = {
			["Acoustic guitar"] = "Milton Nascimento",
			Bass = "Beto Guedes",
			Drums = "Rubinho",
			["Electric guitar"] = "Nelson Angelo",
			["Lead vocals"] = { "Beto Guedes", "Milton Nascimento" },
			Percussion = { "Lô Borges", "Toninho Horta" },
		},
	}, {
		t.Note([[
			The title is a play on the “Entradas e Bandeiras” (Entries and Flags,) a term
			referring to the early expeditions into colonial Brazil that explored the
			uncharted inland in search for gold and silver. They also played a large part
			in the capturing and enslaving of the native populations.
		]]),
		t.Lyric(
			"00:04",
			"What would you say of this thing that is bottomless?",
			"O que vocês diriam dessa coisa que não dá mais pé?"
		),
		t.Lyric("00:09", "What would you do to escape the tide?", "O que vocês fariam pra sair dessa maré?"),
		t.Lyric("00:12", "What was dream turns to dirt", "O que era sonho vira terra"),
		t.Lyric("00:17", "Who will be the first to answer me?", "Quem vai ser o primeiro a me responder?"),
		t.br(),
		t.Lyric("00:23", "Leave this city, have life where it is", "Sair dessa cidade, ter a vida onde ela é"),
		t.Lyric("00:26", "Climb new mountains, search for diamonds", "Subir novas montanhas, diamantes procurar"),
		t.Lyric("00:30", "At the end of the road and of the dust", "No fim da estrada e da poeira"),
		t.Lyric("00:34", "The river will feed me with its food", "Um rio com seus frutos me alimentar"),
	}),
	t.Song({
		title = "Nuvem Cigana",
		en_title = "Gypsy Cloud",
		artist = "Milton Nascimento",
		writer = { "Lô Borges", "Ronaldo Bastos" },
		personnel = {
			["12-string Guitar"] = "Beto Guedes",
			["Acoustic bass"] = "Luiz Alves",
			Bass = "Toninho Horta",
			Drums = "Rubinho",
			["Electric guitar"] = "Lô Borges",
			["Lead bocals"] = "Milton Nascimento",
			Piano = "Milton Nascimento",
		},
	}, {
		t.Lyric("00:16", "If you want, I'll dance with you", "Se você quiser, eu danço com você"),
		t.Lyric("00:21", "On the dust of the road", "No pó da estrada"),
		t.Lyric("00:24", "Powder, dust, wind", "Pó, poeira, ventania"),
		t.Lyric("00:28", "If you let your feet loose on the road", "Se você soltar o pé na estrada"),
		t.Lyric("00:34", "Powder, dust", "Pó, poeira"),
		t.Lyric("00:36", "Whatever you dance, I'll dance with you", "Eu danço com você o que você dançar"),
		t.br(),
		t.Lyric(
			"00:48",
			"If you let the sun shine on your green hair",
			"Se você deixar o sol bater nos seus cabelos verdes"
		),
		t.Lyric("00:56", "Sun, dew, gold and silver", "Sol, sereno, ouro e prata"),
		t.Lyric("01:01", "Come out and follow me", "Sai e vem comigo"),
		t.Lyric("01:04", "Sun, seed, past midnight", "Sol, semente, madrugada"),
		t.Lyric("01:08", "I live in any part of your heart", "Eu vivo em qualquer parte do seu coração"),
		t.br(),
		t.Lyric("01:21", "If you let your heart beat without fear", "Se você deixar o coração bater sem medo"),
		t.Lyric("01:29", "If you let your heart beat without fear", "Se você deixar o coração bater sem medo"),
		t.Lyric("01:36", "If you let your heart beat without fear", "Se você deixar o coração bater sem medo"),
		t.br(),
		t.Lyric("01:45", "If you want, I'll dance with you", "Se você quiser, eu danço com você"),
		t.Lyric("01:51", "My name is cloud", "Meu nome é nuvem"),
		t.Lyric("01:54", "Powder, dust, movement", "Pó, poeira, movimento"),
		t.Lyric("01:57", "My name is cloud", "O meu nome é nuvem"),
		t.Lyric("02:01", "Wind, windflower", "Ventania, flor de vento"),
		t.Lyric("02:04", "Whatever you dance, I'll dance with you", "Eu danço com você o que você dançar"),
		t.br(),
		t.Lyric("02:17", "If you let your heart beat without fear", "Se você deixar o coração bater sem medo"),
		t.Lyric("02:25", "If you let your heart beat without fear", "Se você deixar o coração bater sem medo"),
		t.Lyric("02:33", "If you let your heart beat without fear...", "Se você deixar o coração bater sem medo..."),
	}),
	t.Song({
		title = "Cravo e Canela",
		en_title = "Clove and Cinnamon",
		artist = "Milton Nascimento & Lô Borges",
		writer = { "Milton Nascimento", "Ronaldo Bastos" },
		personnel = {
			["Acoustic guitar"] = "Toninho Horta",
			Bass = "Luiz Alves",
			Drums = "Robertinho Silva",
			["Electric guitar"] = "Tavito",
			["Lead vocals"] = { "Lô Borges", "Milton Nascimento" },
			Percussion = { "Beto Guedes", "Luiz Alves", "Robertinho Silva" },
			Piano = "Wagner Tiso",
			Surdo = "Lô Borges",
		},
	}, {
		t.Note([[
			According to Milton Nascimento, this song is an homage to her and co-writer
		Ronaldo Bastos' mutual friend, famous actress Dina Sfat. It is also interesting
		for being a samba in 3/4—quite unusual!
		]]),
		t.Lyric("00:31", {
			"Hey, ",
			t.InlineNote(
				"morena,",
				"May refer to a brunette, a black-skinned woman, or both. Also a term of endearment."
			),
			" who seasoned it?",
		}, "Ê, morena, quem temperou?"),
		t.Lyric("00:33", "Gypsy, who seasoned it?", "Cigana, quem temperou?"),
		t.Lyric("00:35", "The smell of clove", "O cheiro do cravo"),
		t.Lyric("00:37", "Gypsy, who seasoned it?", "Cigana, quem temperou?"),
		t.Lyric("00:39", "Morena, who seasoned it?", "Morena, quem temperou?"),
		t.Lyric("00:40", "The color of cinnamon", "A cor de canela"),
		t.br(),
		t.Lyric("00:43", "The morena moon", "A lua morena"),
		t.Lyric("00:44", "The dance of the wind", "A dança do vento"),
		t.Lyric("00:45", "The belly of the night", "O ventre da noite"),
		t.Lyric("00:46", "The morning sun", "O sol da manhã"),
		t.br(),
		t.Lyric("00:50", "The gypsy rain", "A chuva cigana"),
		t.Lyric("00:51", "The dance of the rivers", "A dança dos rios"),
		t.Lyric("00:52", "The cocoa honey", "O mel do cacau"),
		t.Lyric("00:53", "The morning sun", "O sol da manhã"),
		t.br(),
		t.Lyric("00:56", "Hey, morena, who seasoned it? ", "Ê, morena, quem temperou?"),
		t.Lyric("00:57", "Gypsy, who seasoned it?", "Cigana, quem temperou?"),
		t.Lyric("00:58", "The smell of clove", "O cheiro do cravo"),
		t.Lyric("01:01", "Gypsy, who seasoned it?", "Cigana, quem temperou?"),
		t.Lyric("01:03", "Morena, who seasoned it?", "Morena, quem temperou?"),
		t.Lyric("01:04", "The color of cinnamon", "A cor de canela"),
		t.br(),
		t.Lyric("01:26", "The morena moon", "A lua morena"),
		t.Lyric("01:27", "The dance of the wind", "A dança do vento"),
		t.Lyric("01:28", "The belly of the night", "O ventre da noite"),
		t.Lyric("01:29", "The morning sun", "O sol da manhã"),
		t.br(),
		t.Lyric("01:32", "The gypsy rain", "A chuva cigana"),
		t.Lyric("01:33", "The dance of the rivers", "A dança dos rios"),
		t.Lyric("01:34", "The cocoa honey", "O mel do cacau"),
		t.Lyric("01:35", "The morning sun", "O sol da manhã"),
		t.br(),
		t.Lyric("01:37", "Hey, morena, who seasoned it? ", "Ê, morena, quem temperou?"),
		t.Lyric("01:39", "Gypsy, who seasoned it?", "Cigana, quem temperou?"),
		t.Lyric("01:41", "The smell of clove", "O cheiro do cravo"),
		t.Lyric("01:44", "Gypsy, who seasoned it?", "Cigana, quem temperou?"),
		t.Lyric("01:45", "Morena, who seasoned it?", "Morena, quem temperou?"),
		t.Lyric("01:47", "The color of cinnamon", "A cor de canela"),
		t.Text("(repeat)"),
	}),
	t.Song({
		title = "Dos Cruces",
		en_title = "Two Crosses, in Spanish",
		artist = "Milton Nascimento",
		writer = "Carmelo Larrea",
		personnel = {
			["Acoustic bass"] = "Luiz Alves",
			["Acoustic guitar"] = { "Milton Nascimento", "Tavito" },
			["Backing vocals"] = "everyone on the studio",
			Bass = "Toninho Horta",
			Drums = "Rubinho",
			["Electric guitar"] = "Beto Guedes",
			["Lead vocals"] = "Milton Nascimento",
			Organ = "Wagner Tiso",
			Piano = "Wagner Tiso",
			Percussion = { "Beto Guedes", "Luiz Alves", "Nelson Angelo", "Robertinho Silva" },
		},
	}, {
		t.Note({
			"This song is a cover of a bolero composed by Carmelo Larrea, and is sung in Spanish. See footnote",
			t.Footnote(1),
			[[
			for the source of this translation. Milton Nascimento discovered the song while
		visiting Venezuela in 1971, where a local who he'd become friends with played a
		rendition of the tune for him.
		]],
		}),
		t.Lyric("00:01", "Sevilla had to be", "Sevilla tuvo que ser"),
		t.Lyric("00:11", "With its little silver moon", "Con su lunita plateada"),
		t.Lyric("00:21", "Witness to our love", "Testigo de nuestro amor"),
		t.Lyric("00:28", "Under the silent night", "Bajo la noche callada"),
		t.br(),
		t.Lyric("00:38", "And you and I loved each other", "Y nos quisimos tú y yo"),
		t.Lyric("00:47", "A love without sin", "Con un amor sin pecado"),
		t.Lyric("00:57", "But destiny has wanted us", "Pero el destino ha querido"),
		t.Lyric("01:03", "To live apart", "Que vivamos separados"),
		t.br(),
		t.Lyric("01:15", "Two crosses are nailed", "Están clavadas dos cruces"),
		t.Lyric("01:22", "On the hill of oblivion", "En el monte del olvido"),
		t.Lyric("01:30", "For two loves that have died", "Por dos amores que han muerto"),
		t.Lyric("01:38", "Without understanding each other", "Sin haberse comprendido"),
		t.br(),
		t.Lyric("01:46", "Two crosses are nailed", "Están clavadas dos cruces"),
		t.Lyric("01:55", "On the hill of oblivion", "En el monte del olvido"),
		t.Lyric("02:02", "For two loves that have died", "Por dos amores que han muerto"),
		t.Lyric("02:10", "Mine and yours", "Que son el tuyo y el mío"),
		t.br(),
		t.Lyric("02:31", "Oh, Santa Cruz neighbourhood", "Oh, barrio de Santa Cruz"),
		t.Lyric("02:39", "Oh, Doña Elvira square", "Oh, puerto de Doña Elvira"),
		t.Lyric("02:46", "I remember them again", "Os vuelvo yo a recordar"),
		t.Lyric("02:55", "And it seems unreal to me", "Y me parece mentira"),
		t.br(),
		t.Lyric("03:02", "All that has passed", "Ya todo aquello pasó"),
		t.Lyric("03:11", "All that has been forgotten", "Todo quedó en el olvido"),
		t.Lyric("03:19", "Our promises of love", "Nuestras promesas de amores"),
		t.Lyric("03:24", "Have vanished in the air", "En el aire se han perdido"),
		t.br(),
		t.Lyric("03:35", "Two crosses are nailed", "Están clavadas dos cruces"),
		t.Lyric("03:42", "On the hill of oblivion", "En el monte del olvido"),
		t.Lyric("03:47", "For two loves that have died", "Por dos amores que han muerto"),
		t.Lyric("03:53", "Without understanding each other", "Sin haberse comprendido"),
		t.br(),
		t.Lyric("03:59", "Two crosses are nailed", "Están clavadas dos cruces"),
		t.Lyric("04:07", "On the hill of oblivion", "En el monte del olvido"),
		t.Lyric("04:11", "For two loves that have died", "Por dos amores que han muerto"),
		t.Lyric("04:17", "Mine and yours", "Que son el tuyo y el mío"),
	}),
	t.Song({
		title = "Um Girassol da Cor de Seu Cabelo",
		en_title = "A Sunflower the Color of Your Hair",
		artist = "Lô Borges",
		writer = { "Lô Borges", "Márcio Borges" },
		arranger = "Eumir Deodato",
		conductor = "Paulo Moura",
		personnel = {
			["Backing Vocals"] = { "Beto Guedes", "Lô Borges", "Toninho Horta" },
			Bass = "Beto Guedes",
			Drums = "Rubinho",
			["Electric Guitar"] = { "Nelson Angelo", "Tavito" },
			["Lead Vocals"] = "Lô Borges",
			Organ = "Wagner Tiso",
			Piano = "Lô Borges",
		},
	}, {
		t.Note([[
			This song is inspired by Márcio Borges' (brother of Lô Borges) wife Duca Leal.
		]]),
		t.Lyric("00:14", "Solar wind and starfish", "Vento solar e estrelas do mar"),
		t.Lyric("00:20", "The Earth blue as the color of your dress", "A terra azul da cor do seu vestido"),
		t.Lyric("00:27", "Solar wind and starfish", "Vento solar e estrelas do mar"),
		t.Lyric("00:33", "You still want to live with me", "Você ainda quer morar comigo"),
		t.br(),
		t.Lyric("00:41", "And if I sing, don't cry", "Se eu cantar, não chore não"),
		t.Lyric("00:45", "It's just poetry", "É só poesia"),
		t.Lyric("00:48", "I just need to have you", "Eu só preciso ter você"),
		t.Lyric("00:52", "For one more day", "Por mais um dia"),
		t.Lyric("00:55", "I still like to dance", "Ainda gosto de dançar"),
		t.Lyric("00:59", "Good morning", "Bom dia"),
		t.Lyric("01:00", "How are you?", "Como vai você?"),
		t.br(),
		t.Lyric("01:08", "Sun, sunflower, green, solar wind", "Sol, girassol, verde, vento solar"),
		t.Lyric("01:12", "You still want to live with me", "Você ainda quer morar comigo"),
		t.Lyric("01:21", "Solar wind and starfish", "Vento solar e estrelas do mar"),
		t.Lyric("01:27", "A sunflower the color of your hair", "Um girassol da cor do seu cabelo"),
		t.br(),
		t.Lyric("01:35", "And if I die, don't cry", "E seu morrer, não chore não"),
		t.Lyric("01:39", "It's just the moon", "É só a lua"),
		t.Lyric("01:42", "It's your dress the color of a naked wonder", "É seu vestido cor de maravilha nua"),
		t.Lyric("01:48", "I still live on this same street", "Ainda moro nesta mesma rua"),
		t.Lyric("01:54", "How are you?", "Como vai você?"),
		t.Lyric("01:58", "Are you coming?", "Você vem?"),
		t.Lyric("02:01", "Or is it too late?", "Ou será que é tarde demais?"),
		t.Text("(instrumental)"),
		t.Lyric("03:06", "Do my thoughts have the color of your dress", "O meu pensamento tem a cor de seu vestido"),
		t.Lyric("03:12", "Or a sunflower the color of your hair?", "Ou um girassol que tem a cor de seu cabelo?"),
		t.Lyric("03:18", "Do my thoughts have the color of your dress", "O meu pensamento tem a cor de seu vestido"),
		t.Lyric("03:25", "Or a sunflower the color of your hair?", "Ou um girassol que tem a cor de seu cabelo?"),
		t.Text("(repeat)"),
	}),
	t.Song({
		title = "San Vicente",
		en_title = "San Vicente",
		artist = "Milton Nascimento",
		writer = { "Fernando Brant", "Milton Nascimento" },
		personnel = {
			["Acoustic guitar"] = "Tavito",
			["Backing vocals"] = "Tavito",
			Bass = "Beto Guedes",
			Carillon = "Beto Guedes",
			["Drums"] = "Rubinho",
			["Electric guitar"] = "Lô Borges",
			["Lead vocals"] = "Milton Nascimento",
			Percussion = { "Luiz Alves", "Nelson Angelo", "Paulinho Braga", "Robertinho Silva" },
			Piano = "Wagner Tiso",
		},
	}, {
		t.Note([[
			Written for a theater play, “Os Convalescentes” (The Convalescent,) which
		features a “fictional” Latin-american country struck by a military coup.
		]]),
		t.Lyric("00:01", "American heart", "Coração americano"),
		t.Lyric("00:05", "I woke up from a strange dream", "Acordei de um sonho estranho"),
		t.Lyric("00:11", "A taste of glass and cut", "Um gosto de vidro e corte"),
		t.Lyric("00:15", "A chocolate flavour", "Um sabor de chocolate"),
		t.Lyric("00:20", "On my body and on the city", "No corpo e na cidade"),
		t.Lyric("00:24", "A flavour of life and death", "Um sabor de vida e morte"),
		t.Lyric("00:30", "American heart", "Coração americano"),
		t.Lyric("00:34", "A flavour of glass and cut", "Um sabor de vidro e corte"),
		t.br(),
		t.Lyric("00:49", "Waiting on a great queue", "A espera na fila imensa"),
		t.Lyric("00:53", "And the black body forgot", "E o corpo negro se esqueceu"),
		t.Lyric("00:58", "It was in San Vicente", "Estava em San Vicente"),
		t.Lyric("01:02", "The city and its lights", "A cidade e suas luzes"),
		t.Lyric("01:08", "It was in San Vicente", "Estava em San Vicente"),
		t.Lyric("01:12", "The women and the men", "As mulheres e os homens"),
		t.Lyric("01:18", "American heart", "Coração americano"),
		t.Lyric("01:22", "A flavour of glass and cut", "Um sabor de vidro e corte"),
		t.br(),
		t.Lyric("01:37", "The hours could not be counted", "As horas não se contavam"),
		t.Lyric("01:41", "And what was black turned to night ", "E o que era negro anoiteceu"),
		t.Lyric("01:47", "While waiting", "Enquanto se esperava"),
		t.Lyric("01:51", "I was in San Vicente", "Eu estava em San Vicente"),
		t.Lyric("01:56", "While it happened", "Enquanto acontecia"),
		t.Lyric("02:00", "I was in San Vicente", "Eu estava em San Vicente"),
		t.Lyric("02:06", "American heart", "Coração americano"),
		t.Lyric("02:10", "A flavour of glass and cut", "Um sabor de vidro e corte"),
	}),
	t.Song({
		title = "Estrelas",
		en_title = "Stars",
		artist = "Lô Borges",
		writer = { "Lô Borges", "Márcio Borges" },
		arranger = "Eumir Deodato",
		conductor = "Paulo Moura",
		personnel = {
			["Acoustic guitar"] = "Lô Borges",
			["Backing vocals"] = {
				"Beto Guedes",
				"Luiz Gonzaga Jr.",
				"Milton Nascimento",
				"Robertinho Silva",
				"Toninho Horta",
				"Wagner Tiso",
			},
			["Lead vocals"] = "Lô Borges",
		},
	}, {
		t.Note("A brief intro to the next track."),
		t.Lyric("00:00", "Dust on the night", "Poeira na noite"),
		t.Lyric("00:05", "The party of night", "A festa da noite"),
		t.Lyric("00:09", "Warrior, death star", "Guerreira, estrela da morte"),
		t.Lyric("00:16", "Dark party, love", "Festa negra, amor"),
		t.Lyric("00:20", "But it's late", "Mas é tarde"),
	}),
	t.Song({
		title = "Clube da Esquina №2",
		en_title = "Corner Club #2",
		artist = "Milton Nascimento",
		writer = { "Lô Borges", "Márcio Borges", "Milton Nascimento" },
		arranger = "Eumir Deodato",
		conductor = "Paulo Moura",
		personnel = {
			["Acoustic guitar"] = "Milton Nascimento",
			Bass = "Luiz Alves",
			Drums = "Robertinho Silva",
			["Electric guitar"] = { "Lô Borges", "Nelson Angelo" },
			["Lead vocals"] = "Milton Nascimento",
			Organ = "Wagner Tiso",
		},
	}, {
		t.Note({
			[[
			Although the version on this album is an instrumental, lyrics would eventually
			be written for this track, with most future performances and re-recordings
			opting to use the version with lyrics instead. Refer to footnote]],
			t.Footnote(2),
			" for a translation of those future lyrics, if you're curious!",
			t.br(),
			"It is also worth nothing that there ",
			t.i("is"),
			" a “Corner Club ",
			t.b("#1"),
			",” released on the 1970 Milton Nascimento album “Milton.” The version on this album, ",
			t.b("#2,"),
			" is completely different from that earlier track.",
		}),
		t.Text("(instrumental)"),
	}),
	t.Song({
		title = "Paisagem da Janela",
		en_title = "Window Landscape",
		artist = "Lô Borges",
		writer = { "Fernando Brant", "Lô Borges" },
		personnel = {
			["Backing Vocals"] = { "Beto Guedes", "Milton Nascimento" },
			Bass = "Beto Guedes",
			Drums = "Rubinho",
			["Electric guitar"] = { "Nelson Angelo", "Tavito" },
			["Lead vocals"] = "Lô Borges",
			Piano = "Lô Borges",
		},
	}, {
		t.Lyric("00:18", "From the side window of the bedroom", "Da janela lateral do quarto de dormir"),
		t.Lyric("00:26", "I see a church, a sign of glory", "Vejo uma igreja, um sinal de glória"),
		t.Lyric("00:31", "I see a white wall and a bird in flight", "Vejo um muro branco e um vôo pássaro"),
		t.Lyric("00:36", "I see a fence, an old sign", "Vejo uma grade, um velho sinal"),
		t.br(),
		t.Lyric("00:42", "Natural messenger of natural things", "Mensageiro natural de coisas naturais"),
		t.Lyric("00:51", "When I spoke of these morbid colors", "Quando eu falava dessas cores mórbidas"),
		t.Lyric("00:55", "When I spoke of these sordid men", "Quando eu falava desses homens sórdidos"),
		t.Lyric("01:00", "When I spoke of this storm", "Quando eu falava desse temporal"),
		t.Lyric("01:05", "You didn't want to hear", "Você não escutou"),
		t.br(),
		t.Lyric("01:08", "You don't want to believe", "Você não quer acreditar"),
		t.Lyric("01:14", "But that's only natural", "Mas isso é tão normal"),
		t.Lyric("01:17", "You don't want to believe", "Você não quer acreditar"),
		t.Lyric("01:23", "And I was just an", "E eu apenas era"),
		t.br(),
		t.Lyric("01:25", "Outcast knight, washed in a stream", "Cavaleiro marginal, lavado em ribeirão"),
		t.Lyric("01:34", "Black knight that lived through mysteries", "Cavaleiro negro que viveu mistérios"),
		t.Lyric("01:38", "Knight and lord of the house and trees", "Cavaleiro e senhor de casa e árvores"),
		t.Lyric("01:43", "Not wanting any rest or Sunday school", "Sem querer descanso nem dominical"),
		t.br(),
		t.Lyric("01:50", "Outcast knight, washed in a stream", "Cavaleiro marginal, banhado em ribeirão"),
		t.Lyric("01:59", "I saw the towers and cemeteries", "Conheci as torres e os cemitérios"),
		t.Lyric("02:03", "I met the men and their funerals", "Conheci os homens e os seus velórios"),
		t.Lyric("02:08", "When I looked through the side window", "Quando olhava da janela lateral"),
		t.Lyric("02:13", "Of the bedroom", "Do quarto de dormir"),
		t.br(),
		t.Lyric("02:16", "You don't want to believe", "Você não quer acreditar"),
		t.Lyric("02:22", "But that's only natural", "Mas isso tão normal"),
		t.Lyric("02:25", "You don't want to believe", "Você não quer acreditar"),
		t.Lyric("02:31", "But that's only natural", "Mas isso tão normal"),
		t.Lyric("02:33", "An outcast knight, washed in a stream", "Um cavaleiro marginal, banhado em ribeirão"),
		t.Lyric("02:42", "You don't want to believe", "Você não quer acreditar"),
	}),
	t.Song({
		title = "Me Deixa em Paz",
		en_title = "Leave Me Alone",
		artist = "Milton Nascimento & Alaide Costa",
		writer = { "Ayrton Amorim", "Monsueto" },
		personnel = {
			["Acoustic guitar"] = "Milton Nascimento",
			Bass = "Luiz Alves",
			Drums = "Robertinho Silva",
			["Lead vocals"] = { "Alaide Costa", "Milton Nascimento" },
			Organ = "Wagner Tiso",
			Percussion = { "Beto Guedes", "Lô Borges", "Rubinho" },
			Piano = "Wagner Tiso",
			Surdo = "Nelson Angelo",
		},
	}, {
		t.Lyric("00:17", "If you didn't want me", "Se você não me queria"),
		t.Lyric("00:24", "Then you shouldn't look for me", "Não devia me procurar"),
		t.Lyric("00:32", "You shouldn't delude me", "Não devia me iludir"),
		t.Lyric("00:39", "Or let me fall in love", "Nem deixar eu me apaixonar"),
		t.br(),
		t.Lyric("00:48", "If you didn't want me", "Se você não me queria"),
		t.Lyric("00:54", "Then you shouldn't look for me", "Não devia me procurar"),
		t.Lyric("01:02", "You shouldn't delude me", "Não devia me iludir"),
		t.Lyric("01:09", "Or let me fall in love", "Nem deixar eu me apaixonar"),
		t.br(),
		t.Lyric("01:18", "Avoiding this pain is impossible", "Evitar a dor é impossível"),
		t.Lyric("01:32", "Avoiding this love, much more so", "Evitar esse amor é muito mais"),
		t.Lyric("01:47", "You ruined my life", "Você arruinou a minha vida"),
		t.Lyric("01:54", "Leave me alone", "Me deixa em paz"),
		t.br(),
		t.Lyric("01:58", "If you didn't want me", "Se você não me queria"),
		t.Lyric("02:02", "Then you shouldn't look for me", "Não devia me procurar"),
		t.Lyric("02:10", "You shouldn't delude me", "Não devia me iludir"),
		t.Lyric("02:18", "Or let me fall in love", "Nem deixar eu me apaixonar"),
		t.Lyric("02:25", "You shouldn't delude me", "Não devia me iludir"),
		t.Lyric("02:33", "Or let me fall in love", "Nem deixar eu me apaixonar"),
	}),
	t.Song({
		title = "Os Povos",
		en_title = "The Peoples",
		artist = "Milton Nascimento",
		writer = { "Márcio Borges", "Milton Nascimento" },
		personnel = {
			["Acoustic guitar"] = "Milton Nascimento",
			Bass = "Luiz Alves",
			Drums = "Robertinho Silva",
			["Lead vocals"] = "Milton Nascimento",
			Organ = "Wagner Tiso",
			Percussion = "Tavito",
			Piano = "Wagner Tiso",
		},
	}, {
		t.Note([[
			Remember the trip to Venezuela I mentioned on “Dos Cruces?” This song, alongside
		“Um Gosto de Sol,” coming up soon, were both composed during that trip, as homages
		to the Venezuelan friends he made there.
		]]),
		t.Lyric("00:08", "At the edge of the world", "Na beira do mundo"),
		t.Lyric("00:13", "Iron gate, dead village, a crowd", "Portão de ferro, aldeia morta, multidão"),
		t.Lyric("00:27", "My people, my people", "Meu povo, meu povo"),
		t.Lyric("00:32", "Didn't want to know of new things ever again", "Não quis saber do que é novo, nunca mais"),
		t.br(),
		t.Lyric("00:43", "Eh! My city", "Ê! minha cidade"),
		t.Lyric("00:48", "Dead village, gold ring, my love", "Aldeia morta, anel de ouro, meu amor"),
		t.Lyric("01:00", "At the edge of life", "Na beira da vida"),
		t.Lyric("01:05", "We meet again, alone", "A gente torna a se encontrar só"),
		t.br(),
		t.Lyric("01:16", "Bright house", "Casa iluminada"),
		t.Lyric("01:20", "Iron gate, padlock, heart", "Portão de ferro, cadeado, coração"),
		t.Lyric("01:33", "And I, reconquered", "E eu reconquistado"),
		t.Lyric("01:37", "Go on strolling, strolling and to die", "Vou passeando, passeando e morrer"),
		t.br(),
		t.Lyric("01:49", "Close to your eyes", "Perto de seus olhos"),
		t.Lyric("01:53", "Gold ring, birthday, my love", "Anel de ouro, aniversário, meu amor"),
		t.Lyric("02:04", "In my city", "Em minha cidade"),
		t.Lyric("02:08", "We learn to live alone", "A gente aprende a viver só"),
		t.br(),
		t.Lyric("02:20", "Ah, a day, any warm day", "Ah um dia, qualquer dia de calor"),
		t.Lyric("02:31", "Is always another day to remember", "É sempre mais um dia de lembrar"),
		t.Lyric("02:37", "The chain of dreams that night snuffed out", "A cordilheira de sonhos que a noite apagou"),
		t.br(),
		t.Lyric("02:48", "Eh! My city", "Ê! minha cidade"),
		t.Lyric("02:52", "Gold gate, dead village, solitude", "Portão de ouro, aldeia morta, solidão"),
		t.Lyric("03:04", "My people, my people", "Meu povo, meu povo"),
		t.Lyric("03:09", "Dead village, padlock, heart", "Aldeia morta, cadeado, coração"),
		t.br(),
		t.Lyric("03:19", "And I, reconquered", "E eu reconquistado"),
		t.Lyric("03:23", "Go on walking, walking and to die", "Vou caminhando, caminhando e morrer"),
		t.Lyric("03:34", "In your arms", "Dentro de seus braços"),
		t.Lyric("03:38", "We learn to die alone", "A gente aprende a morrer só"),
		t.br(),
		t.Lyric("03:49", "My people, my people", "Meu povo, meu povo"),
		t.Lyric("03:54", "All around the city, living alone", "Pela cidade a viver só"),
	}),
	t.Song({
		title = "Saídas e Bandeiras №2",
		en_title = "Exits and Flags #2",
		artist = "Milton Nascimento & Beto Guedes",
		writer = { "Fernando Brant", "Milton Nascimento" },
		personnel = {
			["Acoustic guitar"] = "Milton Nascimento",
			Bass = "Beto Guedes",
			Drums = "Rubinho",
			["Electric guitar"] = "Nelson Angelo",
			["Lead vocals"] = { "Beto Guedes", "Milton Nascimento" },
			Percussion = { "Lô Borges", "Toninho Horta" },
		},
	}, {
		t.Lyric(
			"00:05",
			"What would you say of this thing that is bottomless?",
			"O que vocês diriam dessa coisa que não dá mais pé?"
		),
		t.Lyric("00:10", "What would you do to escape the tide?", "O que vocês fariam pra sair dessa maré?"),
		t.Lyric("00:13", "What was stone turns to body", "O que era pedra vira corpo"),
		t.Lyric("00:17", "Who will be the second to answer me?", "Quem vai ser o segundo a me responder?"),
		t.br(),
		t.Lyric(
			"00:20",
			"Walk down avenues facing up to what I can't reach the bottom of",
			"Andar por avenidas enfrentando o que não dá mais pé"
		),
		t.Lyric(
			"00:27",
			"Gather all my strength to overcome the tide",
			"Juntar todas as forças pra vencer essa maré"
		),
		t.Lyric("00:30", "What was stone turns to man", "O que era pedra vira homem"),
		t.Lyric("00:33", "And man is more solid than the tide", "E o homem é mais sólido que a maré"),
	}),
	t.Song({
		title = "Um Gosto de Sol",
		en_title = "A Taste of Sun",
		artist = "Milton Nascimento",
		writer = { "Milton Nascimento", "Ronaldo Bastos" },
		arranger = "Eumir Deodato",
		conductor = "Paulo Moura",
		personnel = {
			["Lead vocals"] = "Milton Nascimento",
			Piano = "Milton Nascimento",
		},
	}, {
		t.Lyric("00:01", "Someone that I saw in passing", "Alguém que vi de passagem"),
		t.Lyric("00:07", "In a foreign city", "Numa cidade estrangeira"),
		t.Lyric("00:18", "Reminded me of the dreams that I had", "Lembrou os sonhos que eu tinha"),
		t.Lyric("00:26", "And forgot on the table", "E esqueci sobre a mesa"),
		t.Lyric("00:32", "Like a pear forgets", "Como uma pera se esquece"),
		t.Lyric("00:40", "Sleeping in a fruit basket", "Dormindo numa fruteira"),
		t.br(),
		t.Lyric("00:49", "Like the river sleeps", "Como adormece o rio"),
		t.Lyric("00:56", "Dreaming about the pear's flesh", "Sonhando na carne da pera"),
		t.Lyric("01:02", "In the shade, the sun forgets", "O sol na sombra se esquece"),
		t.Lyric("01:12", "Sleeping on a chair", "Dormindo numa cadeira"),
		t.br(),
		t.Lyric("01:20", "Someone smiled in passing", "Algum sorriu de passagem"),
		t.Lyric("01:31", "In a foreign city", "Numa cidade estrangeira"),
		t.Lyric("01:39", "Reminded me of the laughter I had", "Lembrou o riso que eu tinha"),
		t.Lyric("01:47", "And forgot between my teeth", "E esqueci entre os dentes"),
		t.Lyric("01:55", "Like a pear forgets", "Como uma pera se esquece"),
		t.Lyric("02:02", "Dreaming in a fruit basket", "Sonhando numa fruteira"),
	}),
	t.Song({
		title = "Pelo Amor de Deus",
		en_title = "For the Love of God",
		artist = "Milton Nascimento",
		writer = { "Fernando Brant", "Milton Nascimento" },
		personnel = {
			["Acoustic guitar"] = "Milton Nascimento",
			["Additional vocals"] = "Lô Borges",
			Bass = "Luiz Alves",
			Drums = "Rubinho",
			["Electric guitar"] = "Beto Guedes",
			["Electric Piano"] = "Wagner Tiso",
			["Lead vocals"] = "Milton Nascimento",
			Organ = "Wagner Tiso",
			Percussion = { "Robertinho Silva", "Toninho Horta" },
			Piano = "Nelson Angelo",
		},
	}, {
		t.Lyric("00:01", "Photos of an old party", "Fotos de uma velha festa"),
		t.Lyric("00:04", "Bones so ancient, facts so outdated", "Ossos tão antigos, fatos tão passados"),
		t.Lyric("00:09", "And in the middle of the photos, a gnawing rat ", "No meio das fotos vai roendo um rato"),
		t.Lyric("00:18", "Run, a rat, catch it! For the love of God!", "Corre um rato, pega, pelo amor de Deus!"),
		t.br(),
		t.Lyric("00:23", "Yesterday I read in an almanac", "Ontem li num almanaque"),
		t.Lyric("00:28", "The adventures of shepherds and lambs", "Aventuras de pastores e cordeiros"),
		t.Lyric("00:31", "As I finished, a voice from the street", "Quando eu terminava, uma voz de rua"),
		t.Lyric("00:38", "Said true things, for the love of God!", "Disse coisas certas, pelo amor de Deus!"),
		t.Text("(instrumental)"),
		t.Lyric("01:09", "Refusing dessert", "Recusando a sobremesa"),
		t.Lyric("01:13", "A gold plate and a glass of wine", "Um prato de ouro e um copo de vinho"),
		t.Lyric("01:18", "Like old Chaplin, I throw them on your face", "Como o velho Chaplin eu jogo na cara"),
		t.Lyric("01:22", "So many poor things, for the love of God!", "Tantas coisas pobres, pelo amor de Deus!"),
		t.Lyric("01:31", "For the love of God!", "Pelo amor de Deus!"),
		t.Lyric("01:32", "For the love of God!", "Pelo amor de Deus!"),
		t.br(),
		t.Lyric("01:36", "Bordering a window", "Beira-mar de uma janela"),
		t.Lyric("01:40", "Framing my nude partner", "Panoramizando nua companheira"),
		t.Lyric("01:45", "Body on body, skin on skin", "Corpo contra corpo, pele contra pele"),
		t.Lyric("01:51", "And her body is beautiful, for the love of God!", "E seu corpo é belo, pelo amor de Deus!"),
	}),
	t.Song({
		title = "Lilia",
		en_title = "Lilia",
		artist = "Milton Nascimento",
		writer = "Milton Nascimento",
		personnel = {
			["Acoustic guitar"] = "Milton Nascimento",
			Bass = "Luiz Alves",
			Drums = "Rubinho",
			["Electric guitar"] = "Tavito",
			["Lead vocals"] = "Milton Nascimento",
			Organ = "Wagner Tiso",
			Percussion = { "Beto Guedes", "Nelson Angelo", "Robertinho Silva", "Toninho Horta" },
		},
	}, {
		t.Note([[
			“Lilia” is the name of Milton Nascimento's adoptive mother. It is an
		instrumental because, as Milton said, “there are no words that could describe
		that woman.”
		]]),
		t.Text("(instrumental)"),
	}),
	t.Song({
		title = "Trem de Doido",
		en_title = "Crazy Train",
		artist = "Lô Borges",
		writer = { "Lô Borges", "Márcio Borges" },
		personnel = {
			["Backing vocals"] = "Beto Guedes, Lô Borges, Milton Nascimento",
			Bass = "Toninho Horta",
			Drums = "Rubinho",
			["Electric guitar"] = "Beto Guedes",
			["Lead vocals"] = "Lô Borges",
			Organ = "Wagner Tiso",
			["Rhythm guitar"] = "Lô Borges",
		},
	}, {
		t.Note({
			[[
			The title of this song refers to the train that used to ferry people to the
			Barbacena Colonial Hospital, a psychiatric institution that became infamous
			due to its inhuman treatment of its patients. This incident is referred to by
			many as the “Brazilian Holocaust,” not only due to the obvious parallels
			(the use of trains,) but also for the fact that many of the “patients” of the
			hospital did not suffer from any mental disorders, but were instead simply
			alcoholics, beggars, unwanted children, political enemies, homosexuals, etc.
			It was thankfully shut down in the 80s and now functions as a museum.
		]],
		}),
		t.Lyric("00:20", "Blue night, stone and ground", "Noite azul, pedra e chão"),
		t.Lyric("00:24", "Friends in a hotel", "Amigos num hotel"),
		t.Lyric("00:26", "Far beyond the sky", "Muito além do céu"),
		t.br(),
		t.Lyric("00:28", "Nothing to fear, nothing to conquer", "Nada a temer, nada a conquistar"),
		t.Lyric("00:33", "After this train starts going, going", "Depois que esse trem começa andar, andar"),
		t.Lyric("00:37", "Leaving behind", "Deixando pelo chão"),
		t.Lyric("00:39", "The dead rats on the square", "Os ratos mortos na praça"),
		t.Lyric("00:46", "On the market", "Do mercado"),
		t.br(),
		t.Lyric("00:53", "I want to be where they are", "Quero estar onde estão"),
		t.Lyric("00:57", "The dreams of this hotel", "Os sonhos desse hotel"),
		t.Lyric("01:00", "Far beyond the sky", "Muito além do céu"),
		t.br(),
		t.Lyric("01:02", "Nothing to fear, nothing to arrange", "Nada a temer, nada a combinar"),
		t.Lyric("01:07", "When it's time to find my place on the train", "Na hora de achar meu lugar no trem"),
		t.Lyric("01:11", "And to not be afraid", "E não sentir pavor"),
		t.Lyric("01:13", "Of the rats loose on the square", "Dos ratos soltos na praça"),
		t.Lyric("01:19", "My home", "Minha casa"),
		t.br(),
		t.Lyric("01:28", "You don't need to go too far beyond this road ", "Não precisa ir muito além dessa estrada"),
		t.Lyric("01:40", "The rats don't know how to die on the sidewalk", "Os ratos não sabem morrer na calçada"),
		t.br(),
		t.Lyric("01:47", "It's time for you to find the train", "É hora de você achar o trem"),
		t.Lyric("01:51", "And to not be afraid", "E não sentir pavor"),
		t.Lyric("01:53", "Of the rats loose at home", "Dos ratos soltos na casa"),
		t.Lyric("02:00", "Your home", "Sua casa"),
		t.br(),
		t.Lyric("02:53", "I want to be where they are", "Quero estar onde estão"),
		t.Lyric("02:57", "The dreams of this hotel", "Os sonhos desse hotel"),
		t.Lyric("02:00", "Far beyond the sky", "Muito além do céu"),
		t.br(),
		t.Lyric("02:07", "Nothing to fear, nothing to arrange", "Nada a temer, nada a combinar"),
		t.Lyric("02:15", "When it's time to find my place on the train", "Na hora de achar meu lugar no trem"),
		t.Lyric("02:21", "And to not be afraid", "E não sentir pavor"),
		t.Lyric("02:27", "Of the rats loose at home", "Dos ratos soltos na casa"),
		t.Lyric("02:35", "My home", "Minha casa"),
		t.br(),
		t.Lyric("02:42", "You don't need to go too far beyond this road ", "Não precisa ir muito além dessa estrada"),
		t.Lyric("02:50", "The rats don't know how to die on the sidewalk", "Os ratos não sabem morrer na calçada"),
		t.br(),
		t.Lyric("03:01", "Ah, it's time for you to find the train", "Ah, É hora de você achar o trem"),
		t.Lyric("03:06", "And to not be afraid", "E não sentir pavor"),
		t.Lyric("03:08", "Of the rats loose at home", "Dos ratos soltos na casa"),
		t.Lyric("03:16", "Your home", "Sua casa"),
	}),
	t.Song({
		title = "Nada Será Como Antes",
		en_title = "Nothing Will Be as It Was",
		artist = "Milton Nascimento & Beto Guedes",
		writer = { "Milton Nascimento", "Ronaldo Bastos" },
		personnel = {
			["Acoustic guitar"] = "Milton Nascimento",
			["Additional vocals"] = "Lô Borges",
			Bass = "Toninho Horta",
			Drums = "Robertinho Silva",
			["Electric guitar"] = { "Beto Guedes", "Tavito" },
			["Lead vocals"] = { "Beto Guedes", "Milton Nascimento" },
			Piano = "Wagner Tiso",
		},
	}, {
		t.Lyric("00:03", "I've already got my feet on the road", "Eu já estou com o pé na estrada"),
		t.Lyric("00:06", "Any of these days we'll be seeing each other", "Qualquer dia a gente se vê"),
		t.Lyric("00:10", "I know nothing will be as it was, tomorrow", "Sei que nada será como antes, amanhã"),
		t.br(),
		t.Lyric("00:18", "What news do they give of my friends?", "Que notícias me dão dos amigos?"),
		t.Lyric("00:21", "What news do they give me of you?", "Que notícias me dão de você?"),
		t.Lyric("00:25", "Turmoil in my heart", "Alvoroço em meu coração"),
		t.Lyric("00:29", "Tomorrow or the day after that", "Amanhã ou depois de amanhã"),
		t.Lyric(
			"00:32",
			"Resisting on the mouth of the night a taste of the sun",
			"Resistindo na boca da noite um gosto de sol"
		),
		t.br(),
		t.Lyric("00:41", "On any old Sunday, any time", "Num domingo qualquer, qualquer hora"),
		t.Lyric("00:44", "Wind blowing in any direction", "Ventania em qualquer direção"),
		t.Lyric("00:48", "I know nothing will be as it was, tomorrow", "Sei que nada será como antes, amanhã"),
		t.br(),
		t.Lyric("00:55", "What news do they give of my friends?", "Que notícias me dão dos amigos?"),
		t.Lyric("00:59", "What news do they give me of you?", "Que notícias me dão de você?"),
		t.Lyric("01:03", "I know nothing will be as it is", "Sei que nada será como está"),
		t.Lyric("01:06", "Tomorrow or the day after that", "Amanhã ou depois de amanhã"),
		t.Lyric(
			"01:10",
			"Resisting on the mouth of the night a taste of the sun",
			"Resistindo na boca da noite um gosto de sol"
		),
		t.Text("(instrumental)"),
		t.Lyric("02:08", "On any old Sunday, any time", "Num domingo qualquer, qualquer hora"),
		t.Lyric("02:10", "Wind blowing in any direction", "Ventania em qualquer direção"),
		t.Lyric("02:15", "I know nothing will be as it was, tomorrow", "Sei que nada será como antes, amanhã"),
		t.br(),
		t.Lyric("02:23", "What news do they give of my friends?", "Que notícias me dão dos amigos?"),
		t.Lyric("02:26", "What news do they give me of you?", "Que notícias me dão de você?"),
		t.Lyric("02:30", "I know nothing will be as it is", "Sei que nada será como está"),
		t.Lyric("02:34", "Tomorrow or the day after that", "Amanhã ou depois de amanhã"),
		t.Lyric(
			"02:37",
			"Resisting on the mouth of the night a taste of the sun",
			"Resistindo na boca da noite um gosto de sol"
		),
	}),
	t.Song({
		title = "Ao que Vai Nascer",
		en_title = "To the One that Will Be Born",
		artist = "Milton Nascimento",
		writer = { "Fernando Brant", "Milton Nascimento" },
		personnel = {
			["Acoustic guitar"] = "Milton Nascimento",
			Bass = { "Beto Guedes", "Luiz Alves" },
			Drums = "Rubinho",
			["Electric guitar"] = "Toninho Horta",
			["Lead vocals"] = "Milton Nascimento",
			Organ = "Wagner Tiso",
			Percussion = { "Luiz Alves", "Robertinho Silva" },
			Piano = "Wagner Tiso",
		},
	}, {
		t.Lyric("00:02", "Memories of so much waiting", "Memória de tanta espera"),
		t.Lyric("00:07", "Your body, growing, jumps off the ground", "Teu corpo crescendo, salta do chão"),
		t.Lyric("00:17", "And I can already see my body lowering", "E eu já vejo meu corpo descer"),
		t.br(),
		t.Lyric("00:21", "One day I'll meet you in the middle", "Um dia te encontro no meio"),
		t.Lyric("00:26", "Of the living room or of the street", "Da sala ou da rua"),
		t.Lyric("00:29", "I don't know what I'll tell you", "Não sei o que vou contar"),
		t.br(),
		t.Lyric("00:35", "Answers will come with time", "Respostas virão do tempo"),
		t.Lyric("00:43", "A bright and serene face tells me", "Um rosto claro e sereno me diz"),
		t.Lyric("00:53", "And I walk with stones in my hand", "E eu caminho com pedras na mão"),
		t.br(),
		t.Lyric(
			"00:58",
			"On the fringe of the days, I forget what's old",
			"Na franja dos dias esqueço o que é velho"
		),
		t.Lyric("01:04", "And what's limp, and it's like meeting you", "O que é manco, e é como te encontrar"),
		t.Lyric("01:10", "I run to meet with you", "Corro a te encontrar"),
		t.br(),
		t.Lyric(
			"01:18",
			"A mirror hurt my eye, and on the edge of the evening",
			"Um espelho feria meu olho e na beira da tarde"
		),
		t.Lyric("01:27", "A lady sees me", "Uma moça me vê"),
		t.Lyric(
			"01:29",
			"She wanted to tell me of a land with beaches on the north",
			"Queria falar de uma terra com praias no norte"
		),
		t.Lyric("01:36", "And wines on the south", "E vinhos no sul"),
		t.br(),
		t.Lyric("01:39", "The beach was dirty, and the wine, red", "A praia era suja e o vinho vermelho"),
		t.Lyric("01:44", "Red, dried out", "Vermelho, secou"),
		t.Lyric(
			"01:46",
			"The party is over, I put away my voice and my guitar",
			"Acabou a festa, guardo a voz e o violão"
		),
		t.Lyric("01:51", "Or I go out", "Ou saio por aí"),
		t.Lyric("01:57", "Scraping colors for mold to appear", "Raspando as cores que o mofo aparecer"),
		t.br(),
		t.Lyric("02:03", "My body answers for me", "Responde por mim o corpo"),
		t.Lyric("02:17", "With wrinkles that pain one day pointed out", "De rugas que um dia a dor indicou"),
		t.Lyric("02:24", "And I walk with stones in my hand", "E eu caminho com pedras na mão"),
		t.br(),
		t.Lyric(
			"02:27",
			"On the fringe of the days, I forget what's old",
			"Na franja dos dias esqueço o que é velho"
		),
		t.Lyric("02:35", "And what's limp, and it's like meeting you", "O que é manco, e é como te encontrar"),
		t.Lyric("02:44", "I run to meet with you", "Corro a te encontrar"),
		t.Lyric("02:55", "I run to meet with you", "Corro a te encontrar"),
		t.Lyric("03:00", "I run to meet with you", "Corro a te encontrar"),
		t.Lyric("03:07", "I run to meet with you...", "Corro a te encontrar..."),
	}),
	t.FootnoteSection({
		t.p({
			"The translation used to be here ",
			t.a({
				href = "https://www.lyricslayers.com/el-consorcio/1558603/english.html",
				"here,",
			}),
			" but it appears to be gone, and was not saved on the Internet Archive. Sorry!",
		}),
	}, {
		t.p({
			"The amazing Dr. Steven	K. Smith has a great translation on his ",
			t.a({
				href = "https://translationsmith.com/translations/clube-da-esquina-no-2-l-borges-1972?rq=borges",
				"website,",
			}),
			" which I encourage you to check out!",
		}),
	}),
})
