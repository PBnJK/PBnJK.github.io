local t = require("tmpl_lyrics")

local personnel = {
	["Acoustic guitar"] = "João Gilberto",
	["Bass guitar"] = "Sebastião Neto",
	Drums = "Milton Banana",
	Piano = "Antônio Carlos Jobim",
	["Tenor saxophone"] = "Stan Getz",
	Vocals = "João Gilberto",
}

local personnel_with_astrud = {
	["Additional Vocals"] = "Astrud Gilberto",
	["Acoustic guitar"] = "João Gilberto",
	["Bass guitar"] = "Sebastião Neto",
	Drums = "Milton Banana",
	Piano = "Antônio Carlos Jobim",
	["Tenor saxophone"] = "Stan Getz",
	Vocals = "João Gilberto",
}

return t.Album({
	title = "Getz/Gilberto",
	artist = { "Stan Getz", "João Gilberto" },
	year = 1964,
	genre = { "Bossa Nova", "Samba", "Jazz" },

	date = {
		day = 15,
		month = 1,
		year = 2026,
	},
}, {
	t.figure({
		t.ZoomableImage(
			"/assets/blog/covers/1964_stan_getz_joao_gilberto_getz_gilberto.jpg",
			"Cover for Getz/Gilberto, featuring an abstract painting, mostly in oranges with yellow and black highlights",
			400,
			400
		),
		t.figcaption({
			"Featured in the cover art: ",
			t.i("Alla Africa,"),
			" by Puerto Rican artist Olga Albizu",
		}),
	}),
	t.p({
		t.i("Getz/Gilberto"),
		[[
		(1964) is a collaboration between American saxophonist Stan Getz
		and Brazilian guitarist
	]],
		--t.Pronounce("João Gilberto.", "joao_gilberto"),
		"João Gilberto.",
		[[
		Though it wasn't the first bossa nova album released outside of Brazil, it was
		the one responsible for turning the genre into a worldwide phenomenon.
	]],
	}),
	t.p({
		[[
		Bossa nova—roughly “new wave” or “new trend”—appeared in late 50s Brazil,
		blending the local samba with outside influences like American cool jazz to
		create a genre that was as subtle as it was danceable. At a time when jazz
		was losing its place at the top of the charts, American jazz musicians saw
		in this new style an opportunity to breathe fresh air into the genre, with
		a surge of albums mimicking the style popping up in the early 60s.
	]],
	}),
	t.p({
		"Of these efforts, ",
		t.i("Getz/Gilberto"),
		[[
		was by far the most successful, selling two million copies in 1964 and
		taking up the #2 spot in the
	]],
		t.i("Billboard"),
		" charts for ",
		t.i("96 weeks straight"),
		" (losing only to the Beatles' ",
		t.i("A Hard Days' Night.)"),
	}),
	t.figure.img_row({
		t.div({
			t.ZoomableImage(
				"/assets/blog/gilberto_jobim_e_getz.jpg",
				"Recording session photo, with João Gilberto on guitar, Antônio Carlos Jobim on piano, and Stan Getz on tenor saxophone",
				560,
				375
			),
			t.ZoomableImage("/assets/blog/astrud_gilberto_1966.jpg", "Astrud Gilberto performing in 1966", 250, 375),
		}),
		t.figcaption.big({
			[[
			Left: Pictured are (from left to right) João Gilberto (guitar,) Antônio Carlos
			Jobim (piano,) and Stan Getz (saxophone.)
		]],
			t.br(),
			"Right: Astrud Gilberto performing in Amsterdam in 1966, two years after the release of the record.",
		}),
		t.figcaption.small({
			[[
			Top: Recording session. Pictured are, from left to right: João Gilberto (guitar,)
			Antônio Carlos Jobim (piano,) and Stan Getz (tenor saxophone.)
		]],
			t.br(),
			"Bottom: Astrud Gilberto performing in Amsterdam in 1966, two years after the release of the record.",
		}),
	}),
	t.p({
		"Featured in the recording are ",
		--t.Pronounce("Antônio Carlos Jobim", "antonio_carlos_jobim"),
		"Antônio Carlos Jobim",
		" on piano—who, alongside Gilberto, composed many of the songs on the album—and ",
		--t.Pronounce("Astrud Gilberto,", "astrud_gilberto"),
		"Astrud Gilberto,",
		[[
		João Gilberto's wife, whose enchanting performances in “The Girl from Ipanema”
		and “Corcovado” would turn her into a household name.
	]],
	}),
	t.p({
		[[
		An aside: the recording process for this record was quite troubled. João Gilberto
	and Stan Getz did not speak a common language, and often struggled to communicate their
	creative visions to each other, with Jobim often having to work double-time as their
	translator.
	]],
	}),
	t.p({
		[[
		It did not help that João Gilberto strongly disagreed with many of Getz's
	decisions—from the volume of his saxophone on the mix to his unsubtle playing
	style—to the point where, at one moment, he's said to have asked Jobim, in Portuguese,
	to “tell this
	]],
		t.i("gringo"),
		[[
		he's an idiot!” Which Jobim, turning to Getz, dutifully translated: “Stan, João
		is saying that his dream always was to record with you.”
	]],
	}),
	t.Song({
		title = "The Girl from Ipanema",
		artist = "Stan Getz & João Gilberto (feat. Astrud Gilberto)",
		writer = { "Antônio Carlos Jobim", "Norman Gimbel", "Vinicius de Moraes" },
		personnel = personnel_with_astrud,
	}, {
		t.Note([[
			Ipanema is a famous neighbourhood and beach in the city of Rio de Janeiro.
			Jobim had to fight to keep the reference in, as Norman Gimbel, the lyricist
			responsible for the English portion of the song, thought the foreign word
			might hamper the song's popularity.
		]]),
		t.Lyric(
			"00:07",
			"Look what a beautiful thing, so full of grace",
			"Olha que coisa mais linda, mais cheia de graça"
		),
		t.Lyric("00:12", "She's the girl that comes and passes by", "É ela a menina que vem e que passa"),
		t.Lyric("00:16", "With a sweet sway, on her way to the sea", "Num doce balanço a caminho do mar"),
		t.br(),
		t.Lyric("00:22", "Girl with her body golden from the Ipanema sun", "Moça do corpo dourado do sol de Ipanema"),
		t.Lyric("00:27", "Her sway is more than a poem", "O seu balançado é mais que um poema"),
		t.Lyric(
			"00:31",
			"It's the most beautiful thing that I've ever seen pass by",
			"É a coisa mais linda que eu já vi passar"
		),
		t.br(),
		t.Lyric("00:37", "Ah, why am I so alone?", "Ah, por que estou tão sozinho?"),
		t.Lyric("00:44", "Ah, why is everything so sad?", "Ah, por que tudo é tão triste?"),
		t.Lyric("00:52", "Ah, the beauty that exists", "Ah, a beleza que existe"),
		t.br(),
		t.Lyric("00:59", "Beauty that is not just mine", "A beleza que não é só minha"),
		t.Lyric("01:03", "That also passes by alone", "Que também passa sozinha"),
		t.br(),
		t.Lyric("01:07", "Ah, if only she knew", "Ah, se ela soubesse"),
		t.Lyric("01:09", "That when she passes by", "Que quando ela passa"),
		t.Lyric("01:12", "The world, smiling, is filled with grace", "O mundo sorrindo se enche de graça"),
		t.Lyric("01:15", "And becomes more beautiful because of love", "E fica mais lindo por causa do amor"),
		t.br(),
		t.Lyric("01:21", "Tall and tan and young and lovely"),
		t.Lyric("01:25", "The girl from Ipanema goes walking"),
		t.Lyric("01:29", "And when she passes, each one she passes goes ah!"),
		t.br(),
		t.Lyric("01:36", "When she walks she's like a samba"),
		t.Lyric("01:39", "That swings so cool and sways so gently"),
		t.Lyric("01:43", "That when she passes, each one she passes goes ah!"),
		t.br(),
		t.Lyric("01:51", "Oh, but he watches so sadly"),
		t.Lyric("01:58", "How can he tell her he loves her?"),
		t.br(),
		t.Lyric("02:06", "Yes, he would give his heart gladly"),
		t.Lyric("02:13", "But each day when she walks to the sea"),
		t.Lyric("02:16", "She looks straight ahead not at him"),
		t.br(),
		t.Lyric("02:20", "Tall and tan and young and lovely"),
		t.Lyric("02:24", "The girl from Ipanema goes walking"),
		t.Lyric("02:28", "And when she passes he smiles"),
		t.Lyric("02:31", "But she doesn't see"),
		t.Text("(instrumental)"),
		t.Lyric("04:17", "Oh, but he sees her so sadly"),
		t.Lyric("04:25", "How can he tell her he loves her?"),
		t.br(),
		t.Lyric("04:33", "Yes, he would give his heart gladly"),
		t.Lyric("04:40", "But each day when she walks to the sea"),
		t.Lyric("04:43", "She looks straight ahead not at him"),
		t.br(),
		t.Lyric("04:47", "Tall and tan and young and lovely"),
		t.Lyric("04:51", "The girl from Ipanema goes walking"),
		t.Lyric("04:55", "And when she passes he smiles"),
		t.Lyric("04:58", "But she doesn't see"),
		t.Lyric("05:01", "She just doesn't see"),
		t.Lyric("05:05", "No, she doesn't see"),
		t.Lyric("05:08", "But she doesn't see"),
		t.Lyric("05:12", "She doesn't see"),
		t.Lyric("05:16", "No, she doesn't see"),
	}),
	t.Song({
		title = "Doralice",
		artist = "Stan Getz & João Gilberto",
		writer = { "Antônio Almeida", "Dorival Caymmi" },
		personnel = personnel,
	}, {
		t.Note([[
			Now, for something slightly different: this song is a rendition of an older
			Samba tune in the Bossa Nova style.
		]]),
		t.Lyric("00:11", "Doralice, didn't I tell you?", "Doralice eu bem que te disse"),
		t.Lyric("00:13", "Loving is foolish, it's silly, an illusion ", "Amar é tolice, é bobagem, ilusão"),
		t.Lyric("00:16", "I prefer to live alone", "Eu prefiro viver tão sozinho"),
		t.Lyric("00:19", "To the sound of my guitar's lament", "Ao som do lamento do meu violão"),
		t.br(),
		t.Lyric("00:24", "Doralice, didn't I tell you?", "Doralice eu bem que te disse"),
		t.Lyric("00:25", "Look at the mess I'll get myself into", "Olha essa embrulhada em que vou me meter"),
		t.Lyric("00:29", "Now love, Doralice my dear", "Agora amor, Doralice meu bem"),
		t.Lyric("00:32", "What are we going to do?", "Como é que nós vamos fazer?"),
		t.br(),
		t.Lyric("00:35", "One beautiful day you appeared to me", "Um belo dia você me surgiu"),
		t.Lyric("00:39", "I wanted to flee but you insisted", "Eu quis fugir mas você insistiu"),
		t.Lyric("00:42", "Something had been warning me", "Alguma coisa bem que andava me avisando"),
		t.Lyric("00:45", "It was almost like I could guess it", "Até parece que eu estava adivinhando"),
		t.Lyric("00:51", "I didn't want to marry you", "Eu bem que não queria me casar contigo"),
		t.Lyric(
			"00:52",
			"I didn't want to face this danger, Doralice",
			"Bem que não queria enfrentar esse perigo Doralice"
		),
		t.Lyric("01:01", "Now you've got to tell me", "Agora você tem que me dizer"),
		t.Lyric("01:09", "What are we going to do?", "Como é que nós vamos fazer?"),
	}),
	t.Song({
		title = "Para Machucar Meu Coração",
		en_title = "To Hurt My Heart",
		artist = "Stan Getz & João Gilberto",
		writer = "Ary Barroso",
		personnel = personnel,
	}, {
		t.Note([[
			This track is also a reimagining of a vintage Samba hit.
		]]),
		t.Lyric("00:11", "It's been a year and a half, love", "Tá fazendo um ano e meio, amor"),
		t.Lyric("00:18", "Since our home fell apart", "Que o nosso lar desmoronou"),
		t.Lyric("00:26", "My bird, my guitar", "Meu sabiá, meu violão"),
		t.Lyric("00:33", "And a cruel disillusion are all that remains", "E uma cruel desilusão foi tudo que ficou"),
		t.Lyric("00:43", "Remains to hurt my heart", "Ficou pra machucar meu coração"),
		t.Text("(repeat)"),
		t.Lyric("01:39", "Who knows, maybe it was better this way", "Quem sabe, não foi bem melhor assim"),
		t.Lyric("01:46", "Better for you and better for me", "Melhor pra você e melhor pra mim"),
		t.Lyric("01:52", "Life is a school where we must learn", "A vida é uma escola que a gente precisa aprender"),
		t.Lyric("02:01", "The science of living so as not to suffer", "A ciência de viver pra não sofrer"),
	}),
	t.Song({
		title = "Desafinado",
		en_title = "Out of Tune",
		artist = "Stan Getz & João Gilberto",
		writer = { "Antônio Carlos Jobim", "Newton Mendonça" },
		personnel = personnel,
	}, {
		t.Note({
			[[
			Though “The Girl from Ipanema” is the definitive hit of this album, “Desafinado”
			earns the distinction of being one of, if not
		]],
			t.i("the"),
			[[
			first Bossa Nova tune to enter the “jazz canon,” with many, many musicians of the
		time covering it, such as Quincy Jones and Ella Fitzgerald.
		]],
		}),
		t.Lyric("00:04", "When you tell me I go out of tune, love", "Se você disser que eu desafino amor"),
		t.Lyric("00:10", "Know that this causes me immense pain", "Saiba que isto em mim provoca imensa dor"),
		t.Lyric("00:16", "Only the privileged have ears like yours", "Só privilegiados tem o ouvido igual ao seu"),
		t.Lyric("00:23", "I have only what God gave to me", "Eu possuo apenas o que deus me deu"),
		t.br(),
		t.Lyric("00:30", "If you insist on categorizing", "Se você insiste em classificar"),
		t.Lyric("00:36", "My behaviour as anti-musical", "Meu comportamento de anti-musical"),
		t.Lyric("00:43", "Even if lying, I must argue", "Eu mesmo mentindo devo argumentar"),
		t.Lyric(
			"00:50",
			"That this is Bossa Nova, that this is very natural ",
			"Que isto é Bossa Nova, que isto é muito natural"
		),
		t.br(),
		t.Lyric("00:56", "What you don't know, and never suspected", "O que você não sabe nem sequer pressente"),
		t.Lyric(
			"01:03",
			"Is that the out of tune ones also have a heart",
			"É que os desafinados também tem um coração"
		),
		t.Lyric(
			"01:09",
			{ "I photographed you with my ", t.InlineNote("Rolleiflex", "Old line of analog cameras") },
			"Fotografei você na minha Rolleiflex"
		),
		t.Lyric("01:15", {
			"And your great ingratitude was ",
			t.InlineNote(
				"revealed",
				"A pun: the word used in Portuguese for “developing” a photo is “revealing.”"
			),
		}, "Revelou-se a sua enorme ingratidão"),
		t.br(),
		t.Lyric(
			"01:23",
			"The only person you can't talk like this about is my love",
			"Só não poderá falar assim do meu amor"
		),
		t.Lyric("01:30", "He's the greatest you can find", "Ele é o maior que você pode encontrar"),
		t.Lyric("01:35", "You, with your music, forgot the main thing", "Você com a sua música esqueceu o principal"),
		t.Lyric("01:42", "That in the chest of the out of tune ones", "Que no peito dos desafinados"),
		t.Lyric("01:45", "The bottom of the chest", "Do fundo do peito"),
		t.Lyric(
			"01:49",
			"It beats silently, that in the chest of the out of tunes",
			"Bate calado, que no peito dos desafinados"
		),
		t.Lyric("01:52", "Also beats a heart", "Também bate um coração"),
	}),
	t.Song({
		title = "Corcovado (Quiet Nights of Quiet Stars)",
		artist = "Stan Getz & João Gilberto (feat. Astrud Gilberto)",
		writer = { "Antônio Carlos Jobim", "Gene Lees" },
		personnel = personnel_with_astrud,
	}, {
		t.Note([[
			Intro sung by Astrud Gilberto. The Corcovado is a mountain in the city of Rio
			de Janeiro, famous for the statue located at its peak, Christ the Redeemer.
		]]),
		t.Lyric("00:01", "Quiet nights of quiet stars"),
		t.Lyric("00:05", "Quiet chords from my guitar"),
		t.Lyric("00:08", "Floating on the silence that surrounds us"),
		t.Lyric("00:14", "Quiet thoughts and quiet dreams"),
		t.Lyric("00:18", "Quiet walks by quiet streams"),
		t.Lyric("00:22", "And a window that looks out on Corcovado "),
		t.Lyric("00:28", "Oh, how lovely"),
		t.Text("(instrumental)"),
		t.Lyric("01:33", "I want life to always be like this", "Quero a vida sempre assim"),
		t.Lyric("01:37", "With you close to me", "Com você perto de mim"),
		t.Lyric("01:41", "Until the snuffing of the old flame", "Até o apagar da velha chama"),
		t.br(),
		t.Lyric("01:47", "And I, that used to be sad", "E eu que era triste"),
		t.Lyric("01:52", "And did not believe in the world", "Descrente desse mundo"),
		t.Lyric("01:55", "After meeting you I understood", "Ao encontrar você eu conheci"),
		t.Lyric("02:02", "What happiness was, my love", "O que é felicidade, meu amor"),
	}),
	t.Song({
		title = "Só Danço Samba",
		en_title = "I Only Dance Samba",
		artist = "Stan Getz & João Gilberto",
		writer = { "Antônio Carlos Jobim", "Vinicius de Moraes" },
		personnel = personnel,
	}, {
		t.Lyric("00:05", "I only dance Samba", "Só danço samba"),
		t.Lyric("00:07", "I only dance Samba", "Só danço samba"),
		t.Lyric("00:09", "Go, go, go, go, go", "Vai, vai, vai, vai, vai"),
		t.Lyric("00:11", "I only dance Samba", "Só danço samba"),
		t.Lyric("00:13", "I only dance Samba", "Só danço samba"),
		t.Lyric("00:14", "Go", "Vai"),
		t.br(),
		t.Lyric("00:17", "I only dance Samba", "Só danço samba"),
		t.Lyric("00:18", "I only dance Samba", "Só danço samba"),
		t.Lyric("00:20", "Go, go, go, go, go", "Vai, vai, vai, vai, vai"),
		t.Lyric("00:23", "I only dance Samba", "Só danço samba"),
		t.Lyric("00:24", "I only dance Samba", "Só danço samba"),
		t.Lyric("00:26", "Go", "Vai"),
		t.br(),
		t.Lyric("00:28", "I've danced the twist a lot", "Já dancei o twist até demais"),
		t.Lyric("00:35", "But I don't know, I got tired", "Mas não sei, me cansei"),
		t.Lyric("00:37", "Of everything, from calypso to cha-cha-cha", "Do calipso ao chá-chá-chá"),
		t.br(),
		t.Lyric("00:40", "I only dance Samba", "Só danço samba"),
		t.Lyric("00:41", "I only dance Samba", "Só danço samba"),
		t.Lyric("00:43", "Go, go, go, go, go", "Vai, vai, vai, vai, vai"),
		t.Lyric("00:46", "I only dance Samba", "Só danço samba"),
		t.Lyric("00:48", "I only dance Samba", "Só danço samba"),
		t.Lyric("00:49", "Go", "Vai"),
	}),
	t.Song({
		title = "O Grande Amor",
		en_title = "The Great Love",
		artist = "Stan Getz & João Gilberto",
		writer = { "Antônio Carlos Jobim", "Vinicius de Moraes" },
		personnel = personnel,
	}, {
		t.Lyric("01:10", "Come what may", "Haja o que houver"),
		t.Lyric("01:16", "There's always a man for a woman", "Há sempre um homem para uma mulher"),
		t.Lyric("01:24", "And there will always be, to be forgetten", "E há de sempre haver para esquecer"),
		t.Lyric("01:30", "A false love and a wish for death", "Um falso amor e uma vontade de morrer"),
		t.br(),
		t.Lyric("01:37", "However it is, the great love shall win", "Seja como for, há de vencer o grande amor"),
		t.Lyric("02:01", "That shall be in the heart", "Que há de ser no coração"),
		t.Lyric("02:04", "As forgiveness to those that cried", "Como perdão pra quem chorou"),
	}),
	t.Song({
		title = "Vivo Sonhando",
		en_title = "I'm Always Dreaming",
		artist = "Stan Getz & João Gilberto",
		writer = "Antônio Carlos Jobim",
		personnel = personnel,
	}, {
		t.Lyric("00:00", "I'm always dreaming, dreaming", "Vivo sonhando, sonhando"),
		t.Lyric("00:02", "For a thousand hours on end", "Mil horas sem fim"),
		t.Lyric("00:06", "Time in which I ask myself", "Tempo em que vou perguntando"),
		t.Lyric("00:09", "If you like me", "Se gostas de mim"),
		t.br(),
		t.Lyric("00:13", "Time to speak of the stars", "Tempo de falar em estrelas"),
		t.Lyric("00:16", "Speak of the sea, of a sky like this", "Falar de um mar, de um céu assim"),
		t.Lyric("00:20", "Speak of the good things I have", "Falar do bem que se tem"),
		t.Lyric("00:22", "But you don't come, don't come", "Mas você não vem, não vem"),
		t.br(),
		t.Lyric("00:27", "If you don't come, don't come", "Você não vindo, não vindo"),
		t.Lyric("00:29", "Life will have an end", "A vida tem fim"),
		t.Lyric("00:33", "People laughing, talking", "Gente se rindo, falando"),
		t.Lyric("00:35", "Making fun of me", "Zombando de mim"),
		t.br(),
		t.Lyric("00:39", "And me, talking about stars", "E eu a falar em estrelas"),
		t.Lyric("00:44", "Sea, love, moonlight", "Mar, amor, luar"),
		t.Lyric("00:46", "Poor me", "Pobre de mim"),
		t.Lyric("00:48", "That only knows to love you", "Que só sei te amar"),
	}),
})
