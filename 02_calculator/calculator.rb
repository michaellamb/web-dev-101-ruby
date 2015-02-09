def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(arr)
	total = 0
	arr.each {|n| total += n}
	total
end

def multiply(*arr)
	total = nil
	arr.each do |n|
		total = total.nil? ? n : n * total
	end
	total
end

def power(base, exp)
	#base**n
	total = 1
	exp.downto(1) {|n| total *= base}
	total
end

def factorial(n)
	total = 1
	n.downto(1) {|num| total *= num}
	total
end

puts power(2, 2)
puts 2**2
puts power(1, 1)
puts 1**1
puts power(1, 0)
puts 1**0
puts power(0, 1)
puts 0**1
puts power(0, 0)
puts 0**0