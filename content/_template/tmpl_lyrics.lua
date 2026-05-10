local t = require("tmpl_blog")

local function build_heading(title, artist)
	title = title or "Unknown title"
	artist = artist or "Unknown artist"

	return t.h1({ title, t.span["#heading-by"](" by "), artist })
end

local function build_characteristic(title, text)
	if type(text) == "table" then
		text = table.concat(text, ", ")
	end

	return t.p.characteristic({
		t.span({ t.i(title) }),
		tostring(text),
	})
end

function t.Song(metadata, def)
	return t.div({
		t.hr(),
		t.div({
			t.div.song_meta({
				t.p.song_title(metadata.title),
				t.p.song_en_title({
					"(",
					metadata.en_title or metadata.title,
					")",
				}),
			}),
			t.div.song_contents(def),
		}),
	})
end

function t.Lyric(time, en_lyric, pt_lyric)
	return t.div.lyric_box({
		t.p.lyric_time({ t.i(time) }),
		t.div.lyric_text(en_lyric),
		t.div.lyric_og(pt_lyric),
	})
end

function t.Text(text)
	return t.p.lyric_note({
		t.i(text),
	})
end

function t.Note(text)
	return t.p.lyric_tl_note({
		t.br(),
		t.i(text),
	})
end

function t.InlineNote(term, explanation)
	return t.span.lyric_inline_note({
		data_title = explanation,
		term,
	})
end

function t.Album(metadata, def)
	if metadata.tags == nil then
		metadata.tags = {}
	end

	local doc = t.Document({
		lang = "en",
		t.head({
			t.meta({ charset = "UTF-8" }),
			t.meta({ name = "viewport", content = "width=device-width, initial-scale=1" }),
			t.title("pedrob's blog"),
			t.link({ href = "/css/root.css", rel = "stylesheet" }),
			t.link({ href = "/css/blog.css", rel = "stylesheet" }),
			t.script({ src = "/js/script.js" }),
			t.script({ src = "/js/blog.js" }),
		}),
		t.body({
			t.div["#wrapper"]({
				t.main({
					t.article({
						t.header["#article-header"]({
							build_heading(metadata.title, metadata.artist),
							t.hr(),
							build_characteristic("Released in: ", metadata.year or "Unknown year"),
							build_characteristic("Genre: ", metadata.genre or "Unknown genre"),
						}),
					}),
					t.ColorSchemeToggle(),
					def,
				}),
			}),
		}),
	})

	doc.metadata = metadata

	return doc
end

return t
