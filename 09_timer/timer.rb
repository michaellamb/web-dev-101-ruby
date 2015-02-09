class Timer
	def initialize
		@seconds = 0
	end

	def seconds=(new_secs)
		@seconds = new_secs
	end

	def seconds
		@seconds
	end

	def time_string
		h = @seconds / 3600
		m = @seconds % 3600 / 60
		s = @seconds % 60 / 1
		"#{h > 9 ? h.to_s : '0'+h.to_s}:#{m > 9 ? m.to_s : '0'+m.to_s}:#{s > 9 ? s.to_s : '0'+s.to_s}"
	end
end

# a = Timer.new
# puts a.time_string