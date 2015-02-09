class Book
	def title=(new_title)
		@title = titleize(new_title)
	end

	def title
		@title
	end

	def titleize(str)
	small_words = ["the", "in", "a", "an", "of", "and", "or", "over"]
	res = str.split.map.with_index {|e, i| (i == 0 || !small_words.include?(e)) ? e.capitalize : e}
	res.join(" ")
	end
end