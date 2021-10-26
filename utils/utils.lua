
function split_string(cuvant, token)

	local word = ""
	local split_start = 0
	local words_array = {}

	for x=1, #cuvant, 1 do
		char = string.sub(cuvant, x, x)
		if char == token then 
			if split_start == 0 then
				for y = 1, x - 1, 1 do
					word = word .. string.sub(cuvant, y, y)
				end
				table.insert(words_array, word)
				word = ""
			end
			if split_start > 0 then
				for z = split_start, x -1, 1 do
					word = word .. string.sub(cuvant, z, z)
				end
				table.insert(words_array, word)
				word = ""
			end
			split_start = x + 1
		end

		if x == #cuvant then
			for w = split_start, x, 1 do
				word = word .. string.sub(cuvant, w, w)
			end
			table.insert(words_array, word)
		end
	end
	return words_array
end
