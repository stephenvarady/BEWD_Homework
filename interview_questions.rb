def addArray numbers
	numbers.inject(:+)
end

numbers = [1,2,3,4]
puts addArray(numbers) === 10