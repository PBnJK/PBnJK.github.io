-- blog
-- Blog index
--
-- This is responsible for compiling the blog posts and tag pages

local lfs = require("lfs")

local t = require("template")

local metadata_map = {}
local input_dir, _, output_dir, _ = ...

-- Compiles blog posts, located under the '_posts' directory
local function compile_blog_posts()
	local posts = {}

	local input_posts_dir = input_dir .. "/" .. "_posts"
	local output_posts_dir = output_dir .. "/" .. "posts"

	lfs.mkdir(output_posts_dir)

	for entry in lfs.dir(input_posts_dir) do
		-- Ignore self and previous directory
		if entry ~= "." and entry ~= ".." then
			local input_filename = input_posts_dir .. "/" .. entry
			local input_attr = lfs.attributes(input_filename)
			assert(type(input_attr) == "table", "Could not retrieve attributes for file at: " .. input_filename)

			if input_attr.mode == "file" then
				local ext = entry:match("^.+%.(.+)$")
				if ext == "lua" then
					print("* * * POST ...... " .. input_filename)

					local output_filename = entry:match("^(.+)%..+$") .. ".html"
					local output_path = output_posts_dir .. "/" .. output_filename

					local f = io.open(output_path, "w")
					assert(f, "Could not open output file '" .. output_path .. "'")

					-- Execute file
					local executable = assert(loadfile(input_filename))

					local result = executable(input_dir, input_filename, output_posts_dir, output_filename)
					result.metadata.path = "/blog/posts/" .. output_filename
					for _, tag in ipairs(result.metadata.tags) do
						if metadata_map[tag] == nil then
							metadata_map[tag] = { result.metadata }
						else
							table.insert(metadata_map, result.metadata)
						end
					end

					table.insert(posts, result)

					local result_str = tostring(result)
					f:write(result_str)
					f:close()
				end
			end
		end
	end

	return posts
end

-- Compiles blog tags, located under the '_tags' directory
local function compile_blog_tags()
	local input_tags_dir = input_dir .. "/" .. "_tags"
	local output_tags_dir = output_dir .. "/" .. "tags"

	lfs.mkdir(output_tags_dir)

	for entry in lfs.dir(input_tags_dir) do
		-- Ignore self and previous directory
		if entry ~= "." and entry ~= ".." then
			local input_filename = input_tags_dir .. "/" .. entry
			local input_attr = lfs.attributes(input_filename)
			assert(type(input_attr) == "table", "Could not retrieve attributes for file at: " .. input_filename)

			if input_attr.mode == "file" then
				local ext = entry:match("^.+%.(.+)$")
				if ext == "lua" then
					print("* * * TAG ....... " .. input_filename)

					local output_no_ext = entry:match("^(.+)%..+$")
					local output_filename = output_no_ext .. ".html"
					local output_path = output_tags_dir .. "/" .. output_filename

					local f = io.open(output_path, "w")
					assert(f, "Could not open output file '" .. output_path .. "'")

					-- Execute file
					local executable = assert(loadfile(input_filename))
					local result = tostring(executable(metadata_map[output_no_ext]))
					f:write(result)
					f:close()
				end
			end
		end
	end
end

local posts = compile_blog_posts()
compile_blog_tags()

table.sort(posts, function(a, b)
	local date_a, date_b = a.metadata.date, b.metadata.date
	if date_b.year < date_a.year then
		return true
	elseif date_a.year < date_b.year then
		return false
	end

	if date_b.month < date_a.month then
		return true
	elseif date_a.month < date_b.month then
		return false
	end

	if date_b.day < date_a.day then
		return true
	end

	return false
end)

local posts_element = {}
for _, value in ipairs(posts) do
	table.insert(
		posts_element,
		t.div({
			t.a({
				href = value.metadata.path,
				value.metadata.title,
			}),
		})
	)
end

return t.Document({
	lang = "en",
	t.head({
		t.meta({ charset = "UTF-8" }),
		t.meta({ name = "viewport", content = "width=device-width, initial-scale=1" }),
		t.title("pedrob's blog"),
		t.link({ href = "/css/style.css", rel = "stylesheet" }),
	}),
	t.body({
		t.div(posts_element),
	}),
})
