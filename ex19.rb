def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "You have #{cheese_count} cheeses!"
	puts "You have #{boxes_of_crackers} boxes of crackers!"
	puts "Man that's enough for a party!"
	puts "Get a blanket"
	puts # a blank line
end

puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
cheese_and_crackers(10+20, 5+6)

puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese+100, amount_of_crackers+1000)

# this is a new function of my own design
def fib3(n1, n2)
	n3 = n1 + n2
	n4 = n2 + n3

	puts "The first number is #{n1}."
	puts "The second number is #{n2}."
	puts "The third number is #{n3}."
	puts "The last number is #{n4}."
	puts # blank line
end

f0 = 1
f1 = 1

fib3(f0,f1)
fib3(f1,f0+f1)
fib3(f0+f1,f1+(f0+f1))
fib3(0,10)
fib3(1+1,-1)
fib3((Math.sqrt(92141)),2)
fib3(-1,1)
fib3(24,-12)
fib3(3+3,4/2)
fib3(8,13)