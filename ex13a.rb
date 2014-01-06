first, second = ARGV

puts "#{first} is input number 1."
puts "#{second} is your second input."
print "What do you want your third input to be? "
third = STDIN.gets.chomp()
puts "You entered '#{third}'."