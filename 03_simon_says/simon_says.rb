def echo(words)
	words
end

def shout(words)
	words.upcase
end

def repeat(words, reps = 2)
	res = words
	(reps - 1).times {|n| res += " #{words}"}
	res
end

def start_of_word(str, num)
	str.slice(0, num)
end

def first_word(str)
	str.split[0]
end

def titleize(str)
	small_words = ["the", "in", "a", "of", "and", "or", "over"]
	res = str.split.map.with_index {|e, i| (i == 0 || !small_words.include?(e)) ? e.capitalize : e}
	res.join(" ")
end

# puts repeat("hello")
# puts repeat("hello", 1)
# puts repeat("hello", 3)
# puts repeat("hello", 4)

#puts titleize("jaws")
# small_words = ["the", "in", "a", "of"]
# str = "jaws in the sea"
# a = str.split.map.with_index {|e, i| (i == 0 || !small_words.include?(e)) ? e.capitalize : e}
# puts a.join(" ")