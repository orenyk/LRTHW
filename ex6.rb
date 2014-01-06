# set up for first two outputs
x = "There are #{10} types of people."
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}."

# actual outputs
puts x
puts y

# repeat of first two outputs
puts "I said: #{x}."
puts "I also said: '#{y}'."

# set up for next output
hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

# actual implementation of next output
puts joke_evaluation

# set up for final input
w = "This is the left side of..."
e = "a string with a right side."

# final input (add strings = concatenate)
puts w + e