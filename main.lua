-- main.lua
-- Compiles the website
--
-- This script searches through the 'content/' directory for .lua & .html files,
-- executing the .lua template files and outputting HTML to the 'docs/' directory
--
-- This script should be run before commiting the website to Github. There's a
-- pre-commit hook in place that does that, though obviosly it's not commited to
-- this repo (I should find a way to put it on another repo somewhere...)

require("io")
require("os")

local lfs = require("lfs")

-- Traverses a folder recursively and
--   - deletes file
--   - deletes folders recursively
local function traverse_and_cleanup_folder(dir)
	print("* FOLDER .... " .. dir)
	for entry in lfs.dir(dir) do
		-- Ignore self and previous directory
		if entry ~= "." and entry ~= ".." then
			local file = dir .. "/" .. entry
			local attr = lfs.attributes(file)
			assert(type(attr) == "table", "Could not retrieve attributes for file at: " .. file)

			if attr.mode == "directory" then
				-- Delete directories
				if entry ~= "assets" and entry ~= "css" and entry ~= "js" then
					traverse_and_cleanup_folder(file)
					assert(lfs.rmdir(file))
					print("* DELETED ... " .. file)
				end
			else
				-- Delete files
				os.remove(file)
				print("* DELETED ... " .. file)
			end
		end
	end
end

-- Traverses a folder recursively
--   - executes .lua files
--   - copies HTML files
--
-- Results are stored under the output dir
local function traverse_and_build_folder(input_dir, output_dir)
	print("* FOLDER .... " .. input_dir)

	for entry in lfs.dir(input_dir) do
		-- Ignore self and previous directory
		if entry ~= "." and entry ~= ".." then
			local input_filename = input_dir .. "/" .. entry
			local input_attr = lfs.attributes(input_filename)
			assert(type(input_attr) == "table", "Could not retrieve attributes for file at: " .. input_filename)

			-- Recursively traverse directories
			if input_attr.mode == "directory" then
				-- Ignore directories that start with "_"
				if entry:sub(1, 1) ~= "_" then
					-- Mirror folder in output directory
					local output = output_dir .. "/" .. entry
					assert(lfs.mkdir(output))

					-- Recurse
					traverse_and_build_folder(input_filename, output)
				end
			else
				-- Matches the extension of a filepath
				local ext = entry:match("^.+%.(.+)$")

				if ext == "lua" then
					print("* * BUILD ..... " .. input_filename)

					local output_filename = entry:match("^(.+)%..+$") .. ".html"
					local output_path = output_dir .. "/" .. output_filename

					local f = assert(io.open(output_path, "w"))
					assert(f, "Could not open output file '" .. output_path .. "'")

					-- Execute file
					local executable = assert(loadfile(input_filename))
					local result = tostring(executable(input_dir, input_filename, output_dir, output_filename))

					f:write(result)
					f:close()
				elseif ext == "html" then
					print("* * COPY .... " .. input_filename)

					-- Read file
					local f = assert(io.open(input_filename, "r"))
					assert(f, "Could not open input file '" .. input_filename .. "'")

					local contents = f:read("*a")
					f:close()

					local output_file = output_dir .. "/" .. entry
					f = assert(io.open(output_file, "w"))
					assert(f, "Could not open output file '" .. output_file .. "'")

					f:write(contents)
					f:close()
				end
			end
		end
	end
end

-- Cleans the output
local function clean(output_dir)
	print("CLEAN")
	traverse_and_cleanup_folder(output_dir)
	print("DONE!\n")
end

-- Builds the website
local function build(input_dir, output_dir)
	print("BUILD")
	traverse_and_build_folder(input_dir, output_dir)
	print("DONE!")
end

local function main()
	local input_dir = arg[1] or "content"
	local output_dir = arg[2] or "docs"

	clean(output_dir)
	build(input_dir, output_dir)
end

main()
