-- main.lua
-- Compiles the website
--
-- This script searches through the 'content/' directory for .lua & .html files,
-- executing the .lua template files and outputting HTML to the 'site/' directory
--
-- This script should be run before commiting the website to Github. There's a
-- pre-commit hook in place that does that, though obviosly it's not commited to
-- this repo (I should find a way to put it on another repo somewhere...)

require("io")
require("os")

local lfs = require("lfs")

-- Cleans the output directory
local function cleanup_output(path)
	print("Cleaning up...")

	for entry in lfs.dir(path) do
		if entry ~= "." and entry ~= ".." then
			local file = path .. "/" .. entry
			local attr = lfs.attributes(file)
			assert(type(attr) == "table", "Could not retrieve attributes for file at: " .. file)

			if attr.mode == "directory" then
				if entry ~= "assets" and entry ~= "css" and entry ~= "js" then
					lfs.rmdir(file)
					print("- deleted folder .... " .. file)
				end
			else
				os.remove(file)
				print("- deleted file ...... " .. file)
			end
		end
	end

	print("Cleaned up!\n")
end

-- Traverses a folder recursively, executing .lua files & copying HTML files to
-- the output directory
local function traverse_folder(input_dir, output_dir, path)
	local input_path
	if path then
		input_path = input_dir .. "/" .. path
	else
		input_path = input_dir
	end

	print("- building folder ... " .. input_path)

	for entry in lfs.dir(input_path) do
		if entry ~= "." and entry ~= ".." then
			local file = input_path .. "/" .. entry
			local attr = lfs.attributes(file)
			assert(type(attr) == "table", "Could not retrieve attributes for file at: " .. file)

			-- Recursively traverse directories that don't start with '_'
			if attr.mode == "directory" and entry:sub(1, 1) ~= "_" then
				-- Next folder to recurse to
				local next
				if path then
					next = path .. "/" .. entry
				else
					next = entry
				end

				-- Mirror folder in output directory
				local output = output_dir .. "/" .. next
				lfs.mkdir(output)

				-- Recurse
				traverse_folder(input_dir, output_dir, next)
			else
				-- Matches the extension of a filepath
				local ext = entry:match("^.+%.(.+)$")

				if ext == "lua" then
					print("* - building file ... " .. file)
					local result = tostring(dofile(file))

					local filename = entry:match("^(.+)%..+$") .. ".html"

					local output_file = output_dir .. "/"
					if path then
						output_file = output_file .. path .. "/" .. filename
					else
						output_file = output_file .. filename
					end

					local f = io.open(output_file, "w")
					assert(f, "Could not open output file '" .. output_file .. "'")

					f:write(result)
					f:close()
				elseif ext == "html" then
					print("* - copying file ..... " .. file)
					local f = io.open(file, "r")
					assert(f, "Could not open input file '" .. file .. "'")

					local contents = f:read("*a")
					f:close()

					local output_file = output_dir .. "/"
					if path then
						output_file = output_file .. path .. "/" .. entry
					else
						output_file = output_file .. entry
					end

					f = io.open(output_file, "w")
					assert(f, "Could not open output file '" .. output_file .. "'")

					f:write(contents)
					f:close()
				end
			end
		end
	end

	return 0
end

local function build(input_dir, output_dir)
	print("Building...")
	return traverse_folder(input_dir, output_dir)
end

local function main()
	local input_dir = arg[1] or "./content"
	local output_dir = arg[2] or "./site"

	cleanup_output(output_dir)
	local err = build(input_dir, output_dir)

	os.exit(err)
end

main()
