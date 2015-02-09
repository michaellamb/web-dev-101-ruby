def translate(str)
	vowels = ["a", "e", "i", "o", "u", "y"]
	# put str into array with each word an element
	arr = str.split
	# go through array with map altering translating each to pig latin
	res = arr.map do |word|
		cap = (word[0] == word[0].capitalize)
	# 	check if 'qu' is in word, if so move it and everything preceeding it to the end
		if position = word.index("qu")
			word = "#{word[(position+2)..-1]}#{word[0..(position+1)]}"
		end	
		word.length.times do
		# 	check the first letter to see if it's a consonant and needs to be moved to the end
			if !vowels.include?(word[0])
				word = "#{word[1..-1]}#{word[0]}"
			else
				break
			end
			#word = consonants.include?(word[0]) ? "#{word[1..-1]}#{word[0]}" : break
		end	
	# 	when finished moving letters, append 'ay' to end of word
		word << "ay"
		word = cap ? word.capitalize : word
	end
	res.join(" ")
end

puts translate("apple")
puts translate("the quick brown Fox")