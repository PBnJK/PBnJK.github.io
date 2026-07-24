local t = require("tmpl_lyrics")

local perc_group = {
	"Ariovaldo Contesini",
	"Djalma Corrêa",
	"Hermes Contesini",
}

local personnel = {
	Atabaques = perc_group,
	["Backing vocals"] = { "Cláudia Telles", "Evinha", "Marisa Fossa", "Regina Werneck", "Waldyr" },
	["Bass guitar"] = "Dadi",
	Congas = perc_group,
	Cornet = { "Marcio Montarroyos", "Darcy da Cruz" },
	Drums = "Pedrinho Batera",
	Flute = "José Carlos",
	Guitar = "Jorge Ben",
	Percussion = {
		"Doutor (Edmundo Pires)",
		"Gustavo Schroeter",
		"João Parahyba",
		"Neném da Cuica (Nelson França)",
		"Wilson Canegal",
	},
	Piano = "João “Bum”",
	Saxophone = { "José Carlos", "Oberdan Magalhães" },
	Surdo = "Luna (Roberto Bastos)",
	Timbales = "Wilson das Neves",
	Tumbas = perc_group,
}

local function song(title, en_title, data)
	return t.Song({
		title = title,
		en_title = en_title,
		writer = "Jorge Ben",
		personnel = personnel,
	}, data)
end

return t.Album({
	title = "África Brasil",
	artist = "Jorge Ben",
	genre = { "Samba", "MPB", "Funk", "Rock" },
	year = 1976,

	date = {
		year = 2026,
		month = 6,
		day = 22,
	},
}, {
	t.figure.img_row({
		t.div({
			t.ZoomableImage(
				"/assets/blog/covers/1976_jorge_ben_africa_brasil.jpg",
				"Cover art for Jorge Ben's África Brasil, depicting Jorge Ben singing",
				400,
				400
			),
			t.ZoomableImage(
				"/assets/blog/covers/1976_jorge_ben_africa_brasil_back.jpg",
				"Back cover art for Jorge Ben's África Brasil, depicting Jorge Ben's backing band",
				400,
				400
			),
		}),
		t.figcaption({
			[[
			Front and back covers, with the back cover depicting Jorge Ben's backing band
		for this album, “Admiral Jorge V,” formed for his previous record, “Solta o Pavão”
		(1975) (+ additional musicians)
		]],
		}),
	}),
	t.p({
		[[
		África Brasil (1976) is Jorge Ben's 14th studio album. By this point, Jorge had
	been releasing albums for 13 years, steadily honing his distinct “samba-rock” style
	to perfection, going through a variety of backing band changes and experimenting with
	different moods and styles but always retaining one central aspect: the acoustic guitar.
	Following “A Tábua de Esmeralda,” however, Jorge Ben was looking for a new challenge,
	and, after jamming with Gilberto Gil on “Ogum Xangô” and amplifying his guitar on
	“Solta o Pavão,” he took his most daring leap yet: he went
	]],
		t.i("electric."),
	}),
	t.p([[
		This album sees Jorge Ben totally abandon the acoustic guitar for the electric,
	bringing the American funk and soul elements of his sound to the forefront while at
	the same time deftly fusing them with samba-rock and Afro-Brazilian percussion.
	Despite this dramatic shift in direction, the album was a great success at the
	time.
	]]),
	song("Ponta de Lança Africano (Umbabarauma)", "African Second Striker (Umbabarauma)", {
		t.Note({
			[[
			This song was inspired by a very skilled African striker named “Babaraum,”
		who Jorge saw play while visiting Paris. In this song, Babaraum becomes “Umbabarauma,”
		and is assigned the position of second striker, which, in Brazil, is known as
		the “ponta de lança,” meaning “spear tip”—possibly harkening to the weapons of
		traditional African warriors.
		]],
		}),
		t.Lyric("00:16", "Umbabarauma, goal man", "Umbabarauma, homem gol"),
		t.Lyric("00:21", "Umbabarauma, goal man", "Umbabarauma, homem gol"),
		t.Lyric("00:26", "Umbabarauma, goal man", "Umbabarauma, homem gol"),
		t.Lyric("00:31", "Umbabarauma, goal man", "Umbabarauma, homem gol"),
		t.br(),
		t.Lyric("00:36", "Play ball, play ball", "Joga bola, joga bola"),
		t.Lyric("00:40", "Corocondô", "Corocondô"),
		t.Lyric("00:47", "Play ball, play ball", "Joga bola, joga bola"),
		t.Lyric("00:50", "Player", "Jogador"),
		t.br(),
		t.Lyric("00:56", "Jump, jump, fall down, get up", "Pula, pula, cai, levanta"),
		t.Lyric("00:57", "Go up, go down, run", "Sobe e desce e corre"),
		t.Lyric("00:59", "Kick, clear up space", "Chuta, abre espaço"),
		t.Lyric("01:00", "Celebrate and give thanks", "Vibra e agradece"),
		t.br(),
		t.Lyric("01:06", "The whole city", "Olha que a cidade"),
		t.Lyric("01:07", "Emptied out", "Toda ficou vazia"),
		t.Lyric("01:08", "On this beautiful afternoon", "Nessa tarde bonita"),
		t.Lyric("01:10", "Just to see you play", "Só pra te ver jogar"),
		t.br(),
		t.Lyric("01:16", "Umbabarauma, goal man", "Umbabarauma, homem gol"),
		t.Lyric("01:21", "Umbabarauma, goal man", "Umbabarauma, homem gol"),
		t.Lyric("01:26", "Umbabarauma, goal man", "Umbabarauma, homem gol"),
		t.br(),
		t.Lyric("01:34", "Play ball, player", "Joga bola, jogador"),
		t.Lyric("01:37", "Play ball, corocondô", "Joga bola, corocondô"),
		t.Lyric("01:39", "(Play ball, player)", "(Joga bola, jogador)"),
		t.Lyric("01:42", "(Play ball, corocondô)", "(Joga bola, corocondô)"),
		t.br(),
		t.Lyric("01:44", "Rere, rere, rere", "Rere, rere, rere"),
		t.Lyric("01:45", "Player", "Jogador"),
		t.Lyric("01:47", "Rere, rere, rere", "Rere, rere, rere"),
		t.Lyric("01:48", "Corocondô", "Corocondô"),
		t.Lyric("01:49", "(Rere, rere, rere)", "(Rere, rere, rere)"),
		t.Lyric("01:50", "(Player)", "(Jogador)"),
		t.Lyric("01:52", "(Rere, rere, rere)", "(Rere, rere, rere)"),
		t.Lyric("01:53", "(Corocondô)", "(Corocondô)"),
		t.br(),
		t.Lyric("01:54", "Tchererê, tchererê", "Tchererê, tchererê"),
		t.Lyric("01:56", "Tchererê, tchererê", "Tchererê, tchererê"),
		t.Lyric("01:57", "Tchererê, goal man", "Tchererê, homem gol"),
		t.Lyric("01:59", "(Tchererê, tchererê)", "(Tchererê, tchererê)"),
		t.Lyric("02:01", "(Tchererê, tchererê)", "(Tchererê, tchererê)"),
		t.Lyric("02:02", "(Tchererê, goal man)", "(Tchererê, homem gol)"),
		t.br(),
		t.Lyric("02:08", "Umbabarauma, goal man", "Umbabarauma, homem gol"),
		t.Lyric("02:13", "Umbabarauma, goal man", "Umbabarauma, homem gol"),
		t.Lyric("02:18", "Umbabarauma, goal man", "Umbabarauma, homem gol"),
		t.Lyric("02:23", "Umbabarauma, goal man", "Umbabarauma, homem gol"),
		t.Lyric("02:28", "Umbabarauma, goal man", "Umbabarauma, homem gol"),
		t.br(),
		t.Lyric("02:36", "Play ball, player", "Joga bola, jogador"),
		t.Lyric("02:39", "Play ball, corocondô", "Joga bola, corocondô"),
		t.Lyric("02:41", "(Play ball, player)", "(Joga bola, jogador)"),
		t.Lyric("02:44", "(Play ball, corocondô)", "(Joga bola, corocondô)"),
		t.br(),
		t.Lyric("02:46", "Rere, rere, rere", "Rere, rere, rere"),
		t.Lyric("02:47", "Player", "Jogador"),
		t.Lyric("02:49", "Rere, rere, rere", "Rere, rere, rere"),
		t.Lyric("02:50", "Corocondô", "Corocondô"),
		t.Lyric("02:51", "(Rere, rere, rere)", "(Rere, rere, rere)"),
		t.Lyric("02:52", "(Player)", "(Jogador)"),
		t.Lyric("02:54", "(Rere, rere, rere)", "(Rere, rere, rere)"),
		t.Lyric("02:55", "(Corocondô)", "(Corocondô)"),
		t.br(),
		t.Lyric("02:56", "Tchererê, tchererê", "Tchererê, tchererê"),
		t.Lyric("02:58", "Tchererê, tchererê", "Tchererê, tchererê"),
		t.Lyric("02:59", "Tchererê, goal man", "Tchererê, homem gol"),
		t.Lyric("03:01", "(Tchererê, tchererê)", "(Tchererê, tchererê)"),
		t.Lyric("03:03", "(Tchererê, tchererê)", "(Tchererê, tchererê)"),
		t.Lyric("03:04", "(Tchererê, goal man)", "(Tchererê, homem gol)"),
		t.br(),
		t.Lyric("03:08", "Umbabarauma", "Umbabarauma"),
		t.Lyric("03:09", "— That's the story of Umbabarauma", "— Essa é a história de Umbabarauma"),
		t.Lyric("03:12", "— An African second striker", "— Um ponta de lança africano"),
		t.Lyric("03:14", "— A resolute second striker", "— Um ponta de lança decidido"),
		t.Lyric("03:17", "Umbabarauma", "Umbabarauma"),
	}),
	song("Hermes Trismegisto Escreveu", "Hermes Trismegistus Wrote", {
		t.Note([[
			In this track, Jorge calls back to the hermeticist themes of “A Tábua de
			Esmeralda,” singing yet another ode to Hermes Trismegistus.
		]]),
		t.Lyric("00:14", "— 2000 years before Christ", "— Há 2000 anos antes de Cristo"),
		t.Lyric("00:16", "— Pharaoh Hermes Trismegistus wrote", "— O Faraó Hermes Trismegisto escreveu"),
		t.Lyric("00:19", "— A wonderful hermetic treatise", "— O maravilhoso tratado hermético"),
		t.Lyric("00:22", "— With a diamond tip", "— Com uma ponta de diamante"),
		t.Lyric("00:24", "— And an emerald tablet", "— E uma lâmina de esmeralda"),
		t.Lyric("00:26", "— That was found many centuries later", "— Que foi encontrado vários séculos depois"),
		t.Lyric("00:30", "— By the soldiers of Alexander, the Great", "— Pelos soldados de Alexandre, o Grande"),
		t.Lyric("00:32", "— In the famous pyramid of Kinzer!", "— Na famosa pirâmide de Kinzer!"),
		t.Lyric(
			"00:36",
			"— Hail Hermes Trismegistus who has the three parts",
			"— Salve Hermes Trismegisto que tem as três partes"
		),
		t.Lyric("00:39", "— Of the Universal Philosophy", "— Da Filosofia Universal"),
		t.Lyric("00:41", {
			t.InlineNote(
				"— “It's the truth, without lie, certain, very truthful”",
				"The first line of the Emerald Tablet, also featured on the cover art of “A Tábua de Esmeralda”"
			),
		}, "— “É verdade, é mentira, certo, muito verdadeiro”"),
		t.br(),
		t.Lyric("00:49", "The Emerald Tablet", "A tábua de esmeralda"),
		t.Lyric("00:51", "It was Hermes Trismegistus who wrote it", "Foi Hermes Trismegisto quem escreveu"),
		t.Lyric("00:57", "With a diamond tip", "Com uma ponta de diamante"),
		t.Lyric("00:59", "On an emerald tablet", "Em uma lâmina de esmeralda"),
		t.Lyric("01:01", "He wrote", "Ele escreveu"),
		t.br(),
		t.Lyric("01:06", "“What is below", "“O que está em baixo"),
		t.Lyric("01:07", "Is like that which is above", "É como o que está no alto"),
		t.Lyric("01:10", "What is above", "O que está no alto"),
		t.Lyric("01:13", "Is like that which is below”", "É como o que está em baixo”"),
		t.Lyric("01:14", "He wrote", "Ele escreveu"),
		t.br(),
		t.Lyric("01:40", "Hermes Trismegistus", "Hermes Trismegisto"),
		t.Lyric("01:45", "Hermes Trismegistus", "Hermes Trismegisto"),
		t.Lyric("01:50", "Hermes Trismegistus", "Hermes Trismegisto"),
		t.Text("(repeat)"),
	}),
	song("O Filósofo", "The Philosopher", {
		t.Lyric("00:21", "He arrived all carefree", "Ele chegou descontraído"),
		t.Lyric(
			"00:28",
			"Philosophizing in a sort of angelic tone of voice",
			"Chegou filosofando num tom de voz meio angelical"
		),
		t.Lyric("00:37", "Speaking of the beautiful things", "Falando das coisas belas"),
		t.Lyric("00:39", "And of the simple things", "E das coisas simples"),
		t.Lyric("00:44", "Showing how the beautiful can be simple", "Mostrando como o belo pode ser simples"),
		t.Lyric("00:47", "And how the simple can be beautiful, ay, ay, ay", "E o simples pode ser belo, ai, ai, ai"),
		t.br(),
		t.Lyric("00:53", "He arrived all carefree", "Ele chegou descontraído"),
		t.Lyric(
			"01:00",
			"Philosophizing in a sort of angelic tone of voice",
			"Chegou filosofando num tom de voz meio angelical"
		),
		t.Lyric("01:09", "Explaining the phenomenon", "Explicando o fenômeno"),
		t.Lyric(
			"01:13",
			"And the comprehension of the celestial agriculture",
			"E a compreensão da agricultura celeste"
		),
		t.Lyric("01:21", "Of love and of the heart", "Do amor e do coração"),
		t.br(),
		t.Lyric("01:25", "Like life he asked them", "Como vida lhe pediu"),
		t.Lyric("01:29", "To try and comprehend him", "Que tentassem lhe compreender"),
		t.Lyric("01:33", "He thanked for the attention he was given", "Agradeceu a atenção dispensada"),
		t.Lyric("01:37", "Distributing roses he picked from the air", "Distribuindo rosas que colhia no ar"),
		t.Lyric("01:45", "Distributing roses he picked from the air", "Distribuindo rosas que colhia no ar"),
		t.br(),
		t.Lyric("01:54", "He arrived all carefree", "Ele chegou descontraído"),
		t.Lyric(
			"02:01",
			"Philosophizing in a sort of angelic tone of voice",
			"Chegou filosofando num tom de voz meio angelical"
		),
		t.Lyric("02:10", "(He arrived all carefree)", "(Ele chegou descontraído)"),
		t.Lyric(
			"02:17",
			"(Philosophizing in a sort of angelic tone of voice)",
			"(Chegou filosofando num tom de voz meio angelical)"
		),
		t.Text("(repeat)"),
	}),
	song("Meus Filhos, Meu Tesouro", "My Children, My Treasure", {
		t.Lyric("00:12", "Arthur Miró", "Arthur Miró"),
		t.Lyric("00:18", "Say, boy", "Diga lá, menino"),
		t.Lyric("00:25", "What do you want to be when you grow up?", "O que é que você quer ser quando crescer?"),
		t.Lyric("00:37", "I want to be a football player", "Eu quero ser jogador de futebol"),
		t.Lyric("00:41", "A football player", "Jogador de futebol"),
		t.br(),
		t.Lyric("00:44", "Anabela Gorda", "Anabela Gorda"),
		t.Lyric("00:46", "Say, girl", "Diga lá, menina"),
		t.Lyric("00:50", "What do you want to be when you grow up?", "O que é que você quer ser quando crescer?"),
		t.Lyric(
			"00:53",
			"I want to be a housewife or a millionaire's wife",
			"Eu quero ser dona de casa atuante ou mulher de milionário"
		),
		t.Lyric("01:00", "A housewife or a millionaire's wife", "Dona de casa atuante ou mulher de milionário"),
		t.br(),
		t.Lyric("01:05", "Jesus Correia", "Jesus Correia"),
		t.Lyric("01:08", "Say, boy", "Diga lá, menino"),
		t.Lyric("01:11", "What do you want to be when you grow up?", "O que é que você quer ser quando crescer?"),
		t.Lyric(
			"01:15",
			"I want to be a president-treasurer or a liberal like you",
			"Eu quero ser tesoureiro-presidente ou liberal como você"
		),
		t.Lyric("01:21", "A president-treasurer or a liberal like you", "Tesoureiro-presidente ou liberal como você"),
		t.br(),
		t.Lyric("01:38", "These are my three little children", "Estes são meus três filhinhos"),
		t.Lyric("01:42", "Artur Miró, Anabela Gorda, Jesus Correia", "Artur Miró, Anabela Gorda, Jesus Correia"),
		t.Lyric("01:52", {
			"These are my three ",
			t.InlineNote(
				"little angels",
				[[
				Some lyric websites have it as “tri-gênios” (tri-geniuses) or “trigêmeos”
			(triplets,) but he sings it as “anjinhos” live so I went with that. The truth
			is he kinda stumbled over the word in this recording...
			]]
			),
		}, "Estes são meus três anjinhos"),
		t.Lyric("01:57", "Jesus Correia, Anabela Gorda, Artur Miró", "Jesus Correia, Anabela Gorda, Artur Miró"),
		t.br(),
		t.Lyric("02:06", "My children, my treasure", "Meus filhos, meu tesouro"),
		t.Lyric("02:10", "My future, my children", "Meu futuro, meus filhos"),
		t.Lyric("02:15", "My treasure, my future", "Meu tesouro, meu futuro"),
		t.Text("(repeat)"),
	}),
	song("O Plebeu", "The Plebeian", {
		t.Lyric("00:09", "Lalalala-la", "Lálalala-la"),
		t.Lyric("00:11", "Lala-la, lala", "Lála-lá, lála"),
		t.br(),
		t.Lyric("00:20", "I know I'm poor", "Sei que sou pobre"),
		t.Lyric("00:22", "I cannot marry you", "Contigo não posso casar"),
		t.Lyric("00:26", "Oh my love, oh my love", "Ó meu amor, ó meu amor"),
		t.Lyric("00:31", "But I'll weep with joy", "Mas chorarei de alegria"),
		t.Lyric("00:33", "When someone takes you to the altar", "Quando alguém te levar ao altar"),
		t.br(),
		t.Lyric("00:37", "Oh my love", "Ó meu amor"),
		t.Lyric("00:40", "Never forget me", "Nunca me esqueças"),
		t.Lyric("00:43", "Because we would be happy", "Pois nós seriamos felizes"),
		t.Lyric("00:45", "Were it not for my poverty", "Se não fosse a minha pobreza"),
		t.br(),
		t.Lyric("00:48", "I know and you know", "Eu sei e você sabe"),
		t.Lyric("00:51", "That that doesn't matter", "Que isso não importa"),
		t.Lyric("00:54", "But there's someone", "Mas existe alguém"),
		t.Lyric("00:56", "That doesn't approve of our love", "Que do nosso amor não gosta"),
		t.br(),
		t.Lyric("01:01", "You are a princess", "Você é uma princesa"),
		t.Lyric("01:04", "And I am a plebeian", "E eu sou um plebeu"),
		t.Lyric("01:07", "Lalalala-la", "Lálalala-lá"),
		t.Lyric("01:08", "Lala-la, lala", "Lála-lá, lála"),
		t.br(),
		t.Lyric("01:12", "The least shall be first", "O último será o primeiro"),
		t.Lyric("01:15", "And I am the least", "E o último sou eu"),
		t.Lyric("01:18", "Lalalala-la", "Lálalala-la"),
		t.Lyric("01:19", "Lala-la, lala", "Lála-lá, lála"),
		t.br(),
		t.Lyric("01:29", "I know and you know", "Eu sei e você sabe"),
		t.Lyric("01:33", "That that doesn't matter", "Que isso não importa"),
		t.Lyric("01:39", "But there's someone", "Mas existe alguém"),
		t.Lyric("01:44", "That doesn't approve of our love", "Que do nosso amor não gosta"),
		t.br(),
		t.Lyric("01:51", "You are a princess", "Você é uma princesa"),
		t.Lyric("01:53", "And I am a plebeian", "E eu sou um plebeu"),
		t.Lyric("01:56", "Lalalala-la", "Lálalala-la"),
		t.Lyric("01:58", "Lala-la, lala", "Lála-lá, lála"),
		t.br(),
		t.Lyric("02:01", "The least shall be first", "O último será o primeiro"),
		t.Lyric("02:04", "And I am the least", "E o último sou eu"),
		t.Lyric("02:07", "Lalalala-la", "Lálalala-la"),
		t.Lyric("02:08", "Lala-la, lala", "Lála-lá, lála"),
		t.Text("(repeat)"),
	}),
	song("Taj Mahal", "Taj Mahal", {
		t.Note([[
			One of Jorge Ben's greatest hits—arguably his most popular song ever.
			This version is a re-recording, with the original track having been first
			released on his 1972 record “Ben.”
		]]),
		t.Lyric("00:03", "— Taj Mahal...", "— Taj Mahal..."),
		t.br(),
		t.Lyric("00:23", "Taj Mahal, Taj Mahal", "Taj Mahal, Taj Mahal"),
		t.Lyric("00:30", "Taj Mahal, Taj Mahal", "Taj Mahal, Taj Mahal"),
		t.br(),
		t.Lyric("00:37", "Te-te, rete-re-te, tete, rete-re-te", "Te-te, rete-re-te, tete, rete-re-te"),
		t.Lyric("00:41", "Te-te, rete-re-te, re", "Te-te, rete-re-te, re"),
		t.Lyric("00:44", "Te-te, rete-re-te, tete, rete-re-te", "Te-te, rete-re-te, tete, rete-re-te"),
		t.Lyric("00:48", "Te-te, rete-re-te, re", "Te-re-te-re-te-re"),
		t.br(),
		t.Lyric("00:51", "It was a beautiful love story, oh-oh", "Foi uma linda história de amor, oh-oh"),
		t.Lyric("00:58", {
			t.InlineNote(
				"That I've ever been told",
				[[
				Yes, this line is a bit incoherent. Either the previous line should be
			“it's *the* most beautiful love story” (like he sings in the version on the
			“Gil e Jorge” album) or this line should be “That I was told and now will tell
			you” (like he sings live.) Here, he sings it this way instead... Who
			knows, maybe it's some super advanced symbolism, breaking the rules of grammar
			as a metaphor for etc. etc.—or maybe it's just a fun song, and the lyrics
			don't matter that much.
			]]
			),
		}, "Que até hoje eu já ouvi contar"),
		t.br(),
		t.Lyric("01:04", "About the love of Prince Shah Jahan", "Do amor do príncipe Shah Jahan"),
		t.Lyric("01:08", "For Princess Mumtaz Mahal", "Pela princesa Mumtaz Mahal"),
		t.Lyric("01:12", "About the love of Prince Shah Jahan", "Do amor do príncipe Shah Jahan"),
		t.Lyric("01:15", "For Princess Mumtaz Mahal", "Pela princesa Mumtaz Mahal"),
		t.br(),
		t.Lyric("01:18", "Taj Mahal, Taj Mahal", "Taj Mahal, Taj Mahal"),
		t.Lyric("01:25", "Taj Mahal, Taj Mahal", "Taj Mahal, Taj Mahal"),
		t.br(),
		t.Lyric("01:33", "Te-te, rete-re-te, tete, rete-re-te", "Te-te, rete-re-te, tete, rete-re-te"),
		t.Lyric("01:37", "Te-te, rete-re-te, re", "Te-te, rete-re-te, re"),
		t.Lyric("01:40", "Te-te, rete-re-te, tete, rete-re-te", "Te-te, rete-re-te, tete, rete-re-te"),
		t.Lyric("01:43", "Te-te, rete-re-te, re", "Te-te, rete-re-te, re"),
		t.br(),
		t.Lyric("01:46", "Taj Mahal, Taj Mahal", "Taj Mahal, Taj Mahal"),
		t.Lyric("01:53", "Taj Mahal, Taj Mahal", "Taj Mahal, Taj Mahal"),
		t.br(),
		t.Lyric("02:04", "— Taj Mahal", "— Taj Mahal"),
		t.Lyric("02:05", "— A monument in honor of love", "— Um monumento em homenagem ao amor"),
		t.Lyric("02:08", "— Built in the Hijri year 1040", "— Construído em 1040 no ano Hégira"),
		t.Lyric("02:13", "— A gift from Prince Shah Jahan", "— Um presente do príncipe Shah Jahan"),
		t.Lyric("02:16", "— To his beloved, Princess Mumtaz Mahal", "— Para a sua amada Mumtaz Mahal"),
		t.br(),
		t.Lyric("02:21", "Te-te, rete-re-te, tete, rete-re-te", "Te-te, rete-re-te, tete, rete-re-te"),
		t.Lyric("02:25", "Te-te, rete-re-te, re", "Te-te, rete-re-te, re"),
		t.Lyric("02:28", "Te-te, rete-re-te, tete, rete-re-te", "Te-te-re-te-re-te-re, te-re-te-re-te-re"),
		t.Lyric("02:32", "Te-te, rete-re-te, re", "Te-te, rete-re-te, re"),
		t.Text("(repeat)"),
	}),
	song("Xica da Silva", "Xica da Silva", {
		t.Note([[
			Jorge Ben will explain it pretty thoroughly, but, for completeness: Francisca
			da Silva de Oliveira (1732-1796,) nicknamed “Chica”/“Xica,” was a slave who,
			after becoming her master's lover, was granted freedom, going on to live an
			extragavagant lifestyle as the lover of a nobleman. Her story is very famous
			in Brazil, and has been much mythologised, with everything from soap operas
			to books (and, as you'll hear, songs) being made in honor of her confrontation
			of the gender and racial norms of the time.
		]]),
		t.Lyric("00:26", "Xica da, Xica da", "Xica da, Xica da"),
		t.Lyric("00:28", "Xica da, Xica da Silva", "Xica da, Xica da Silva"),
		t.Lyric("00:31", "The black woman", "A negra"),
		t.br(),
		t.Lyric("00:33", "Xica da, Xica da", "Xica da, Xica da"),
		t.Lyric("00:35", "Xica da, Xica da Silva", "Xica da, Xica da Silva"),
		t.Lyric("00:38", "The black woman", "A negra"),
		t.br(),
		t.Lyric("00:41", "Xica da Silva", "Xica da Silva"),
		t.Lyric("00:44", "The black woman, the black woman", "A negra, a negra"),
		t.Lyric("00:49", "From slave to lover", "De escrava à amante"),
		t.Lyric("00:51", {
			"Wife, wife of nobleman ",
			t.InlineNote(
				"contratador",
				[[
				In colonial times, a “contratador” (contractor) was a person that had a
				contract with the Portuguese crown that allowed them to mine for diamonds
			]]
			),
			" João Fernandes",
		}, "Mulher, mulher do fidalgo contratador João Fernandes"),
		t.Lyric("01:01", "Ay, ay, ay", "Ai, ai, ai"),
		t.br(),
		t.Lyric("01:03", "Xica da, Xica da", "Xica da, Xica da"),
		t.Lyric("01:05", "Xica da, Xica da Silva", "Xica da, Xica da Silva"),
		t.Lyric("01:08", "The black woman", "A negra"),
		t.br(),
		t.Lyric("01:10", "Xica da, Xica da", "Xica da, Xica da"),
		t.Lyric("01:12", "xica da, xica da silva", "xica da, xica da silva"),
		t.Lyric("01:15", "The black woman", "A negra"),
		t.br(),
		t.Lyric("01:18", {
			"The ",
			t.InlineNote(
				"Tijuco",
				"A small mining village by the Tijuco river that'd later grow to become the city of Diamantina"
			),
			" empress",
		}, "A imperatriz do Tijuco"),
		t.Lyric("01:21", {
			"The Lady of ",
			t.InlineNote("Diamantina", "City in the Brazilian state of Minas Gerais, where Xica lived"),
		}, "A dona de Diamantina"),
		t.Lyric("01:25", "Lived with her court", "Morava com a sua corte"),
		t.Lyric(
			"01:29",
			{ "Surrounded by beautiful ", t.InlineNote("slaves", "Xica did indeed own slaves herself.") },
			"Cercada de belas mucamas"
		),
		t.Lyric(
			"01:32",
			{ "In a castle on the ", t.InlineNote("Palha", "Neighbourhood in Diamantina"), " ranch" },
			"Num castelo na Chácara da Palha"
		),
		t.Lyric("01:36", "Of solid and refined architecture", "De arquitetura sólida e requintada"),
		t.Lyric("01:40", "Where there was even an artificial lake", "Onde tinha até um lago artifical"),
		t.Lyric("01:44", "And a luxurious crowd", "E uma luxuosa galera"),
		t.Lyric("01:47", "That her love, João Fernandes, the contractor", "Que seu amor, João Fernandes, o tratador"),
		t.Lyric("01:51", "Ordered to be built", "Mandou fazer"),
		t.Lyric("01:52", "Just for her", "Só para ela"),
		t.br(),
		t.Lyric("01:55", "Xica da, Xica da", "Xica da, Xica da"),
		t.Lyric("01:57", "Xica da, Xica da Silva", "Xica da, Xica da Silva"),
		t.Lyric("02:00", "The black woman", "A negra"),
		t.br(),
		t.Lyric("02:02", "Xica da, Xica da", "Xica da, Xica da"),
		t.Lyric("02:04", "Xica da, Xica da Silva", "Xica da, Xica da Silva"),
		t.Lyric("02:07", "The black woman", "A negra"),
		t.br(),
		t.Lyric("02:11", "Very rich and envied", "Muito rica e invejada"),
		t.Lyric("02:14", "Feared and hated", "Temida e odiada"),
		t.Lyric("02:18", "Because with her wigs", "Pois com as suas perucas"),
		t.Lyric("02:21", "Each one in a different color", "Cada uma de uma cor"),
		t.Lyric("02:26", "Jewels, exotic clothes", "Jóias, roupas exóticas"),
		t.Lyric("02:29", "From the Indies, Lisbon, and Paris", "Das Índias, Lisboa e Paris"),
		t.Lyric("02:33", "The black woman had to be treated", "A negra era obrigada a ser recebida"),
		t.Lyric("02:38", "Like a great lady", "Como uma grande senhora"),
		t.Lyric("02:40", "Of the court of King Louis", "Da corte do Rei Luís"),
		t.Lyric("02:48", "Of the court of King Louis", "Da corte do Rei Luís"),
		t.br(),
		t.Lyric("02:54", "Xica da, Xica da", "Xica da, Xica da"),
		t.Lyric("02:56", "Xica da, Xica da Silva", "Xica da, Xica da Silva"),
		t.Lyric("02:59", "The black woman", "A negra"),
		t.Text("(repeat)"),
	}),
	song("A História de Jorge", "The Story of Jorge", {
		t.Lyric("00:02", {
			"— Hey, ",
			t.InlineNote(
				"xará!",
				[[
				“Xará,” from the indigenous tupi “xa'ra,” means someone with the same name
				as you. It's common for friends with the same name to refer to eachother
				using this word.
			]]
			),
		}, "— Ei, xará!"),
		t.Lyric("00:04", "— Hey, xará!", "— Ei, xará!"),
		t.Lyric("00:06", "— Hey, xará!", "— Ei, xará!"),
		t.br(),
		t.Lyric("00:09", "— Look, this is the story of a boy", "— Olha, essa é a história de um menino"),
		t.Lyric(
			"00:11",
			"— That had a friend that could fly named Jorge ",
			"— Que tinha um amigo que voava e Jorge se chamava"
		),
		t.Lyric(
			"00:15",
			"— No one believed the boy that couldn't fly",
			"— Ninguém acreditava no menino que não voava"
		),
		t.Lyric("00:18", "— When he would say that he had a friend", "— Quando ele dizia que tinha um amigo"),
		t.Lyric("00:19", "— That talked, played and even flew", "— Que falava, brincava e até voava"),
		t.Lyric("00:23", "— Everyone made fun of him", "— Todo mundo dele caçoava"),
		t.Lyric(
			"00:24",
			"— One day, Jorge got word of this and flew for all to see",
			"— Um dia, Jorge soube de tudo e voou para toda gente ver"
		),
		t.Lyric("00:29", "— They were awestruck", "— O espanto foi geral"),
		t.Lyric(
			"00:30",
			"— And the boy that couldn't fly, happy as can be, yelled:",
			"— E o menino que não voava, feliz da vida gritava:"
		),
		t.Lyric("00:33", "— “Fly, Jorge!”", "— “Voa, Jorge!”"),
		t.Lyric("00:35", "— “Fly, Jorge!”", "— ”Voa, Jorge!”"),
		t.Lyric("00:37", "— “Fly, Jorge!”", "— ”Voa, Jorge!”"),
		t.br(),
		t.Lyric("00:45", "Fly, Jorge, fly", "Voa, Jorge, voa"),
		t.Lyric("00:48", "Fly, Jorge, fly", "Voa, Jorge, voa"),
		t.Lyric("00:52", "Fly, Jorge, Jorge, Jorge, fly", "Voa, Jorge, Jorge, Jorge, voa"),
		t.Lyric("00:57", "Fly, Jorge, Jorge, Jorge, fly", "Voa, Jorge, Jorge, Jorge, voa"),
		t.br(),
		t.Lyric("01:03", "Fly way high, Jorge", "Voa bem alto, Jorge"),
		t.Lyric("01:05", "And bring a star back for me", "E traz uma estrela pra mim"),
		t.Lyric("01:07", "Fly way high, Jorge", "Voa bem alto, Jorge"),
		t.Lyric("01:09", "And bring a star back for me", "E traz uma estrela pra mim"),
		t.br(),
		t.Lyric("01:11", "Jorge, my friend", "Jorge amigo meu"),
		t.Lyric("01:13", "My friend Jorge", "Meu amigo Jorge"),
		t.Lyric("01:15", "Jorge, angel friend", "Jorge amigo anjo"),
		t.Lyric("01:17", "Angel friend Jorge", "Anjo amigo Jorge"),
		t.br(),
		t.Lyric("01:19", "Fly way high, Jorge", "Voa bem alto, Jorge"),
		t.Lyric("01:21", "And bring a star back for me", "E traz uma estrela pra mim"),
		t.Lyric("01:24", "Fly way high, Jorge", "Voa bem alto, Jorge"),
		t.Lyric("01:26", "And bring a star back for me", "E traz uma estrela pra mim"),
		t.Lyric("01:28", "Jorge, my friend", "Jorge amigo meu"),
		t.Lyric("01:30", "My friend Jorge", "Meu amigo Jorge"),
		t.Lyric("01:32", "Jorge", "Jorge"),
		t.Text("(instrumental)"),
		t.Lyric("02:04", "Fly, Jorge, Jorge flies", "Voa, Jorge, Jorge voa"),
		t.Lyric("02:09", "(Fly, Jorge, Jorge flies)", "(Voa, Jorge, Jorge voa)"),
		t.Lyric("02:13", "Fly, Jorge, fly", "Voa, Jorge, voa"),
		t.Lyric("02:15", "Fly, Jorge, fly", "Voa, Jorge, voa"),
		t.br(),
		t.Lyric("02:17", "— Hey, xará! (Fly, Jorge)", "— Ei, xará! (Voa, Jorge)"),
		t.Lyric("02:20", "— Jorge is my friend (Jorge flies)", "— Jorge é meu amigo (Jorge voa)"),
		t.Lyric(
			"02:22",
			"— Jorge is my friend that flies, xará (Fly, Jorge, Jorge flies)",
			"— Jorge é meu amigo que voa, xará (Voa, Jorge, Jorge voa)"
		),
		t.Lyric(
			"02:24",
			"— I have a friend that flies, xará (Fly, Jorge)",
			"— Eu tenho um amigo que voa, xará (Voa, Jorge)"
		),
		t.Lyric(
			"02:27",
			"— I have a friend that flies, xará (Jorge flies)",
			"— Eu tenho um amigo que voa, xará (Jorge voa)"
		),
		t.Lyric(
			"02:29",
			"— Look, my friend is flying, fly, Jorge (Fly, Jorge, Jorge flies)",
			"— Olha lá o meu amigo voando, voa, Jorge (Voa, Jorge, Jorge voa)"
		),
		t.Text("(etc.)"),
	}),
	song("Camisa 10 da Gávea", "#10 from the Gávea", {
		t.Note([[
			This song is an ode to Zico, largely considered the greatest player in the
			history of Flamengo, Jorge Ben's favourite football team. Like many great
			footballers, Zico wore the #10 jersey.
		]]),
		t.Lyric("00:31", "A foul near the penalty box", "É falta na entrada da área"),
		t.Lyric("00:31", "Guess who's going to kick?", "Adivinha quem vai bater?"),
		t.Lyric("00:36", {
			"It's the #10 from the ",
			t.InlineNote("Gávea", "A neighbourhood in Rio de Janeiro, where Flamengo is based"),
		}, "É o camisa 10 da Gávea"),
		t.Lyric("00:40", "It's the #10 from the Gávea", "É o camisa 10 da Gávea"),
		t.br(),
		t.Lyric("00:46", "He has a style", "Ele tem uma dinâmica"),
		t.Lyric("00:50", "That is physical, rich and rhythmic", "Física, rica e rítmica"),
		t.Lyric("00:55", "His lucid reflexes", "Seus reflexos lúcidos"),
		t.Lyric("01:00", "Plays, bewildering dribbles", "Lançamentos, dribles desconcertantes"),
		t.Lyric("01:02", "Cunning kicks", "Chutes maliciosos"),
		t.Lyric("01:08", "Are like electrifying flashes", "São como flashes eletrizantes"),
		t.br(),
		t.Lyric("01:11", "Blowing out the net", "Estufando a rede"),
		t.Lyric("01:13", {
			"In a possibly ",
			t.InlineNote(
				"amazing goal",
				[[
				I translated it as “amazing” but the real expression used is a fun bit of
			trivia: In 1961, Pelé scored a goal so incredible that a plaque was built
			on the stadium to commemorate it. After that, it became common to refer to
			beautiful or impressive goals as “plaque goals”—as if to say that they too
			deserve to be put on a plaque. That's the term that Jorge Ben is using in
			the original Portuguese.
			]]
			),
		}, "Num possível gol de placa"),
		t.Lyric("01:16", "Blowing out the net", "Estufando a rede"),
		t.Lyric("01:18", "In a possibly amazing goal", "Num possível gol de placa"),
		t.Lyric("01:20", "Goal, goal!", "É gol, é gol!"),
		t.br(),
		t.Lyric("01:22", "A foul near the penalty box", "É falta na entrada da área"),
		t.Lyric("01:25", "Guess who's going to kick?", "Adivinha quem vai bater?"),
		t.Lyric("01:30", "It's the #10 from the Gávea", "É o camisa 10 da Gávea"),
		t.Lyric("01:34", "It's the #10 from the Gávea", "É o camisa 10 da Gávea"),
		t.br(),
		t.Lyric("01:40", {
			"The ",
			t.InlineNote(
				"galinho de Quintino",
				[[
				Zico's nickname, literally, “cockerel from Quintino.” Quintino is the name
			of the neighbourhood he lived in as a child, and “cockerel” came from his lean
			build.
			]]
			),
			" is here",
		}, "O galinho de Quintino chegou"),
		t.Lyric("01:43", "Oh-oh, oh-oh-oh", "Ô-ôô, ô-ô-ôô"),
		t.Lyric("01:48", "With grit, strength of will, and love", "Com garra fibra e amor"),
		t.Lyric("01:52", "Oh-oh, oh-oh-oh", "Ô-ôô, ô-ô-ôô"),
		t.br(),
		t.Lyric("01:57", "He may not be a perfect player", "Pode não ser um jogador perfeito"),
		t.Lyric("02:01", "But his cunning makes him be remembered", "Mas a sua malícia o faz com que seja lembrado"),
		t.Lyric("02:05", "Because even when he's not inspired", "Pois mesmo quando não está inspirado"),
		t.Lyric("02:09", "He searches for inspiration", "Ele procura a inspiração"),
		t.br(),
		t.Lyric("02:14", "And each goal, each pass, each play", "E cada gol, cada toque, cada jogada"),
		t.Lyric(
			"02:18",
			"Is a delight for the lovers of the british sport",
			"É um deleite para os apaixonados do esporte bretão"
		),
		t.Lyric("02:23", "And each goal, each pass, each play", "E cada gol, cada toque, cada jogada"),
		t.Lyric(
			"02:28",
			"Is a delight for the lovers of the british sport",
			"É um deleite para os apaixonados do esporte bretão"
		),
		t.Lyric("02:32", "Zico!", "Zico!"),
		t.br(),
		t.Lyric("02:33", "A foul near the penalty box", "É falta na entrada da área"),
		t.Lyric("02:41", "Guess who's going to kick?", "Adivinha quem vai bater?"),
		t.Lyric("02:42", "It's the #10 from the Gávea", "É o camisa 10 da Gávea"),
		t.Lyric("02:46", "It's the #10 from the Gávea", "É o camisa 10 da Gávea"),
		t.br(),
		t.Lyric("02:50", "A foul near the penalty box", "É falta na entrada da área"),
		t.Lyric("02:55", "Guess who's going to kick?", "Adivinha quem vai bater?"),
		t.Lyric("02:57", "It's the #10 from the Gávea", "É o camisa 10 da Gávea"),
		t.Lyric("03:04", "It's the #10 from the Gávea", "É o camisa 10 da Gávea"),
		t.br(),
		t.Lyric("03:08", "It's the #10 from the Gávea", "É o camisa 10 da Gávea"),
		t.Lyric("03:13", "It's the #10 from the Gávea", "É o camisa 10 da Gávea"),
		t.Lyric("03:17", "It's the #10 from the Gávea", "É o camisa 10 da Gávea"),
		t.Lyric("03:22", "It's the #10 from the Gávea", "É o camisa 10 da Gávea"),
		t.Text("(repeat)"),
	}),
	song("Cavaleiro do Cavalo Imaculado", "Knight of the Immaculate Horse", {
		t.Note([[
			A very interesting song, loaded with relgious imagery and allegory.
		Here, Jorge Ben appears to relate St. George (whose name, in Portuguese,
		is written “São Jorge”) to Zambi, a god of the Kongo religion.
		]]),
		t.Lyric("00:37", "He's the lion of the empire", "Ele é leão do império"),
		t.Lyric("00:43", "Knight of the immaculate horse", "Cavaleiro do cavalo imaculado"),
		t.Lyric(
			"00:50",
			{ "Minister of ", t.InlineNote("Zambi", "Supreme god of the Kongo religion"), " on Earth" },
			"Ministro de Zambi na Terra"
		),
		t.Lyric("00:56", "The prince of all Africa", "O príncipe de toda África"),
		t.br(),
		t.Lyric("01:03", "Hail the knight", "Salve o cavaleiro"),
		t.Lyric("01:05", "Knight of the immaculate horse", "Cavaleiro do cavalo imaculado"),
		t.Lyric("01:10", "Hail the knight", "Salve o cavaleiro"),
		t.Lyric("01:11", "Knight of the immaculate horse", "Cavaleiro do cavalo imaculado"),
		t.Text("(repeat)"),
	}),
	song("África Brasil (Zumbi)", "Africa Brazil (Zumbi)", {
		t.Note({
			[[
			In the same vein as “Taj Mahal,” this is a new version of the track “Zumbi”
		from his album “A Tábua de Esmeralda.” Please refer to that album's
		]],
			t.a({
				href = "https://pbnjk.github.io/lyrics/1974_jorge_ben_jor_a_tabua_de_esmeralda.html",
				"translation page",
			}),
			" for context on the historical figure of Zumbi.",
		}),
		t.Lyric("00:18", "— I want to see what will happen", "— Eu quero ver o que vai acontecer"),
		t.Lyric("00:21", "— I want to see what will happen", "— Eu quero ver o que vai acontecer"),
		t.Lyric("00:24", "— I want to see what will happen", "— Eu quero ver o que vai acontecer"),
		t.Lyric("00:26", "— When Zumbi arrives", "— Quando o Zumbi chegar"),
		t.Lyric("00:30", "— Zumbi is the lord of war", "— Zumbi é senhor das guerras"),
		t.Lyric("00:31", "— The lord of demands", "— Senhor das demandas"),
		t.Lyric("00:33", "— When Zumbi arrives", "— Quando Zumbi chega"),
		t.Lyric("00:34", "— Zumbi takes charge ", "— É Zumbi é que manda"),
		t.Lyric("00:36", "— I want to see, I want to see", "— Eu quero ver, eu quero ver"),
		t.Lyric("00:38", "— Greetings, my people", "— Salve, meu povo"),
		t.Lyric(
			"00:40",
			"— I want to see what will happen when Zumbi arrives",
			"— Eu quero ver quando o Zumbi chegar o que vai acontecer"
		),
		t.Lyric("00:45", "— Zumbi is the lord of war", "— Zumbi é Senhor das guerras"),
		t.Lyric("00:48", "— The lord of demands", "— Zumbi é Senhor das demandas"),
		t.Lyric("00:50", "— I want to see...", "— Eu quero ver..."),
		t.br(),
		t.Lyric("00:52", "Angola, Congo, Benguela", "Angola, Congo, Benguela"),
		t.Lyric("00:56", "Monjolo, Capinda, Nina", "Monjolo, Capinda, Nina"),
		t.Lyric("01:01", "Quiloa, Rebolo", "Quiloa, Rebolo"),
		t.br(),
		t.Lyric("01:05", "Angola, Congo, Benguela", "Angola, Congo, Benguela"),
		t.Lyric("01:10", "Monjolo, Capinda, Nina", "Monjolo, Capinda, Nina"),
		t.Lyric("01:14", "Quiloa, Rebolo", "Quiloa, Rebolo"),
		t.br(),
		t.Lyric("01:18", "Angola, Congo, Benguela", "Angola, Congo, Benguela"),
		t.Lyric("01:23", "Monjolo, Capinda, Nina", "Monjolo, Capinda, Nina"),
		t.Lyric("01:27", "Quiloa, Rebolo", "Quiloa, Rebolo"),
		t.br(),
		t.Lyric("01:32", "Here where the men stand", "Aqui onde estão os homens"),
		t.Lyric("01:36", "There's a great auction", "Há um grande leilão"),
		t.Lyric("01:40", "They say there is a princess for sale in it", "Dizem que nele há uma princesa à venda"),
		t.Lyric("01:45", "Brought here with her subjects", "Que veio junto com seus súditos"),
		t.Lyric("01:49", "Chained, chained to ox-carts", "Acorrentados, acorrentados em carros de boi"),
		t.br(),
		t.Lyric("01:54", "When Zumbi arrives, I want to see", "Eu quero ver quando Zumbi chegar"),
		t.Lyric(
			"01:57",
			"I want to see what will, what will, what will happen",
			"Eu quero ver o que vai, o que vai, o que vai acontecer"
		),
		t.br(),
		t.Lyric("02:02", "Zumbi is the lord of war", "Zumbi é senhor das guerras"),
		t.Lyric("02:04", "Zumbi is the lord of demands", "Zumbi é senhor das demandas"),
		t.Lyric("02:07", "When Zumbi arrives", "Quando Zumbi chega"),
		t.Lyric("02:09", "Zumbi takes charge", "É Zumbi é quem manda"),
		t.br(),
		t.Lyric("02:11", "Because here where the men stand", "Pois aqui onde estão os homens"),
		t.Lyric("02:15", "On one side, sugarcane", "Dum lado, cana-de-açúcar"),
		t.Lyric("02:20", "On the other, an immense coffee plantation", "Do outro lado, um imenso cafezal"),
		t.Lyric("02:25", "In the middle, the slavemasters sit", "Ao centro, senhores sentados"),
		t.Lyric("02:29", "Watching the white cotton", "Vendo a colheita do algodão branco"),
		t.Lyric("02:33", "Be picked by black hands", "Sendo colhidos por mãos negras"),
		t.br(),
		t.Lyric("02:37", "When Zumbi arrives, I want to see", "Eu quero ver quando Zumbi chegar"),
		t.Lyric(
			"02:41",
			"I want to see what will, what will, what will happen",
			"Eu quero ver, eu quero ver o que vai acontecer"
		),
		t.Lyric("02:45", "I want to see", "Eu quero ver"),
		t.Lyric("02:46", "Zumbi is the lord of war", "Zumbi é senhor das guerras"),
		t.br(),
		t.Lyric("02:50", "Angola, Congo, Benguela", "Angola, Congo, Benguela"),
		t.Lyric("02:55", "Monjolo, Capinda, Nina", "Monjolo, Capinda, Nina"),
		t.Lyric("02:59", "Quiloa, Rebolo", "Quiloa, Rebolo"),
		t.br(),
		t.Lyric("03:04", "Angola, Congo, Benguela", "Angola, Congo, Benguela"),
		t.Lyric("03:08", "Monjolo, Capinda, Nina", "Monjolo, Capinda, Nina"),
		t.Lyric("03:12", "Quiloa, Rebolo", "Quiloa, Rebolo"),
		t.br(),
		t.Lyric("03:17", "Angola, Congo, Benguela", "Angola, Congo, Benguela"),
		t.Lyric("03:21", "Monjolo, Capinda, Nina", "Monjolo, Capinda, Nina"),
		t.Lyric("03:25", "Quiloa, Rebolo", "Quiloa, Rebolo meu povo"),
	}),
})
