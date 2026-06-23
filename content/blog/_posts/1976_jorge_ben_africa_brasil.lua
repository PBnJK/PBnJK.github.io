local t = require("tmpl_lyrics")

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
	t.ZoomableImage("/assets/blog/covers/1976_jorge_ben_africa_brasil.jpg", 400, 400),
	t.p({
		"África Brasil is an album.",
	}),
	t.figure({
		t.ZoomableImage(
			"/assets/blog/jorge_ben_das_guitarras.webp",
			"Jorge Ben playing an electric guitar on stage",
			400,
			556
		),
		t.figcaption([[
			Jorge Ben playing on stage in 1976. Photo by: Giorgio Piredda
		]]),
	}),
	t.p([[
		Features the Guitar(tm)
	]]),
	t.Song({
		title = "Ponta de Lança Africano (Umbabarauma)",
		en_title = "African Second Striker (Umbabarauma)",
	}, {
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
		t.Lyric("00:56", "Jump, jump, fall, get up", "Pula, pula, cai, levanta"),
		t.Lyric("00:57", "Up and down and run", "Sobe e desce e corre"),
		t.Lyric("00:59", "Kick, clear up space", "Chuta, abre espaço"),
		t.Lyric("01:00", "Celebrate and give thanks", "Vibra e agradece"),
		t.br(),
		t.Lyric("01:06", "Even the whole city", "Olha que a cidade"),
		t.Lyric("01:07", "Emptied out", "Toda ficou vazia"),
		t.Lyric("01:08", "On this beautiful evening", "Nessa tarde bonita"),
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
})
