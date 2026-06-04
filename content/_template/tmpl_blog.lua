require("os")
require("math")

local t = require("template")

-- Words-per-minute (used for computing average reading time)
local WPM = 180

-- Builds the element containing the list of blog post tags
local function build_tags_element(tags)
	if tags == nil then
		return nil
	end

	-- Collate tags
	local tags_elements = {}
	for _, tag in ipairs(tags) do
		table.insert(
			tags_elements,
			t.li({
				t.a({
					href = "/blog/tags/" .. tag .. ".html",
					"#" .. tag,
				}),
			})
		)
	end

	return t.ul.tags(tags_elements)
end

-- Builds the element containing the publishing date of the blog post
local function build_time_element(timetable)
	if timetable == nil then
		return t.time({
			datetime = "0000-00-00",
			"Unknown publishing date",
		})
	end

	local time = os.time(timetable)

	-- Date for the <time> element 'datetime' attribute
	local datetime_string = os.date("%Y-%m-%d", time)

	-- Date displayed to the user
	local usertime_string = os.date("%B %d, %Y", time)

	return t.time({
		datetime = datetime_string,
		usertime_string,
	})
end

-- Returns the word count in a given block of text
local function get_word_count(text)
	return select(2, text:gsub("%S+", ""))
end

-- Calculates the average reading time of the blog post
local function get_reading_time(def)
	local reading_time = 0

	for _, child in ipairs(def) do
		if type(child) == "string" then
			reading_time = reading_time + get_word_count(child)
		elseif type(child) == "table" and getmetatable(child) == t.HtmlStr then
			reading_time = reading_time + get_word_count(child.text)
		elseif type(child) == "table" then
			reading_time = reading_time + get_reading_time(child)
		end
	end

	return reading_time
end

-- Builds the element containing the average reading time of the blog post
local function build_reading_time_element(def)
	local function round(n)
		return math.floor(n + 0.5)
	end

	local reading_time = get_reading_time(def) / WPM

	local time
	if reading_time < 1 then
		time = round(reading_time * 60) .. " second read"
	elseif reading_time < 60 then
		time = round(reading_time) .. " minute read"
	else
		time = round(reading_time / 60) .. " hour read"
	end

	return t.p["#reading-time"](time)
end

function t.Subtitle(text)
	return t.p.subtitle({
		t.i(text),
	})
end

function t.Footnote(num)
	return t.a.footnote({
		id = "rev-foot-" .. num,
		href = "#foot-" .. num,
		t.b({ t.sup(tostring(num)) }),
	})
end

function t.FootnoteSection(...)
	local items = {}
	for idx, footnote in ipairs({ ... }) do
		table.insert(
			items,
			t.li["#foot-" .. idx]({
				footnote,
				t.a.rev_footnote({
					href = "#rev-foot-" .. idx,
					t.b("↩"),
				}),
			})
		)
	end

	return t.div({
		t.hr(),
		t.h2("Footnotes"),
		t.ol(items),
	})
end

function t.SpoilerImage(src, alt, width, height)
	return t.div.spoiler_img({
		t.ZoomableImage(src, alt, width, height),
		t.p.spoiler_img_info("(hover to reveal)"),
	})
end

function t.Aside(content, aside_content)
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

function t.Author(name)
	return t.p.quote_author({ t.i({ "— ", name }) })
end

function t.Cite(def, who)
	return t.blockquote.citation({ def, t.br(), t.Author(who) })
end

function t.Pronounce(text, audio)
	audio = "/assets/audio/" .. audio
	return t.span.pronounce({
		title = "Click the speaker to hear the pronounciation",
		t.i({
			lang = "pt-BR",
			text,
		}),
		t.button({
			aria_label = "Pronounce",
			t.audio.audio_normal({
				t.source({
					src = audio .. ".mp3",
					type = "audio/mpeg",
				}),
				t.source({
					src = audio .. ".ogg",
					type = "audio/ogg",
				}),
			}),
		}),
	})
end

function t.ZoomableImage(src, alt, width, height)
	return t.div.zoomable_img({
		t.label({
			t.input({
				aria_label = "Zoom-in",
				type = "checkbox",
			}),
			t.img({
				src = src,
				alt = alt,
				width = width,
				height = height,
				loading = "lazy",
			}),
		}),
	})
end

function t.Blog(metadata, def)
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
				href = "/favicon.ico",
				type = "image/x-icon",
			}),
		}),
		t.body({
			t.div["#wrapper"]({
				t.main({
					t.article({
						t.header["#article-header"]({
							t.h1(metadata.title or "Untitled"),
							t.hr(),
							t.div["#metadata"]({
								build_time_element(metadata.date),
								build_reading_time_element(def),
								build_tags_element(metadata.tags),
							}),
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
