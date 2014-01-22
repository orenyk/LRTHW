def ex33(lim, incr)
	i = 0
	numbers = []

	# using a while loop... old
	# while i < lim
	# 	puts "At the top i is #{i}"
	# 	numbers.push(i)

	# 	i += incr
	# 	puts "Numbers now: #{numbers}"
	# 	puts "At the bottom i is #{i}"
	# end

	# using a for loop
	(0..lim).step(incr) do |i|
		puts "At the top i is #{i}"
		numbers.push(i)

		i += incr
		puts "Numbers now: #{numbers}"
		puts "At the bottom i is #{i}"
	end

	puts "The numbers: "

	for num in numbers
		puts num
	end
end

ex33(10,2)
ex33(34,3)