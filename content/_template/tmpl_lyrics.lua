local util = require("util")

local t = require("tmpl_blog")

--- Treat possible tables of strings (multi-names) by concatenating them
--- Other types are stringified normally
---
--- @param text any
--- @return string
local function treat_multi_names(text)
	if type(text) == "table" then
		return util.concat_fancy(text)
	end

	return tostring(text)
end

--- Builds the page heading
---
--- @param title any
--- @param artist any
--- @return table
local function build_heading(title, artist)
	title = title and treat_multi_names(title) or "Unknown title"
	artist = artist and treat_multi_names(artist) or "Unknown artist"

	return t.h1({ title, t.span["#heading-by"](" by "), artist })
end

local function build_characteristic(title, text)
	if type(text) == "table" then
		text = util.concat_fancy(text)
	end

	return t.div.characteristic({
		t.dt({ t.b(title) }),
		t.dd(tostring(text)),
	})
end

local function build_small_metadata(title, text)
	if text then
		text = treat_multi_names(text)
		return t.div.song_meta_small({
			t.dt({ t.b(title) }),
			t.dd(text),
		})
	end

	return ""
end

local function build_personnel(personnel)
	if personnel then
		local personnel_element = {}

		local a = {}
		for n in pairs(personnel) do
			table.insert(a, n)
		end
		table.sort(a)

		for _, key in ipairs(a) do
			local value = personnel[key]
			if type(value) == "table" then
				value = util.concat_fancy(value, ", ")
			end

			local role = key:lower():gsub("^%l", string.upper)
			table.insert(personnel_element, t.div({ t.dt({ t.b(role) }), t.dd(value) }))
		end

		return t.details.song_meta_personnel({
			t.summary("Personnel"),
			t.dl(personnel_element),
		})
	end

	return ""
end

function t.Song(metadata, def)
	return t.div({
		t.hr(),
		t.div({
			t.div.song_meta({
				t.p.song_meta_title(metadata.title),
				t.p.song_meta_en_title({
					"(",
					metadata.en_title or metadata.title,
					")",
				}),
				t.If(metadata.artist, t.p.song_meta_artist(metadata.artist), ""),
				t.dl({
					build_small_metadata("Adapted by", metadata.adapter),
					build_small_metadata("Written by", metadata.writer),
					build_small_metadata("Composed by", metadata.composer),
					build_small_metadata("Arranged by", metadata.arranger),
					build_small_metadata("Conducted by", metadata.conductor),
					build_small_metadata("Produced by", metadata.producer),
					build_small_metadata("Programmed by", metadata.programmer),
					build_small_metadata("Lyrics by", metadata.lyricist),
				}),
				build_personnel(metadata.personnel),
			}),
			t.div.song_contents(def),
		}),
	})
end

function t.Lyric(time, en_lyric, pt_lyric)
	return t.div.lyric_box({
		t.p.lyric_time({ t.i(time) }),
		t.div.lyric_text(en_lyric),
		t.div.lyric_og({ lang = "pt-BR", pt_lyric or en_lyric }),
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
		text,
	})
end

local inline_note_id = 0
function t.InlineNote(term, explanation)
	explanation = explanation:gsub("\n", " ")

	local id = "inline-note-" .. tostring(inline_note_id)
	inline_note_id = inline_note_id + 1

	return t.span.lyric_inline_note({
		data_title = explanation,
		t.span(term),
		t.button({
			aria_label = "View inline note",
			popovertarget = id,
		}),
		t.div({
			id = id,
			popover = "",
			explanation,
		}),
	})
end

-- TODO: what is this bro
function t.Credits(links)
	return t.li(treat_multi_names(links))
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
			t.EmbedRootCSS(),
			t.link({ href = "/css/blog.css", rel = "stylesheet" }),
			t.script({ src = "/js/script.js" }),
			t.script({ src = "/js/blog.js" }),
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
					t.header["#article-header"]({
						build_heading(metadata.title, metadata.artist),
						t.hr(),
						t.dl({
							build_characteristic("Released in", metadata.year or "Unknown year"),
							build_characteristic("Genre", metadata.genre or "Unknown genre"),
						}),
					}),
					t.main({
						t.ColorSchemeToggle(),
						def,
					}),
				}),
				t.Footer(),
			}),
		}),
	})

	doc.metadata = metadata

	return doc
end

return t
