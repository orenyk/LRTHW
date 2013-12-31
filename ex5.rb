name = 'Zed A. Shaw'
age = 35 # not a lie
height = 74 # inches
height_in_cm = height * 2.54 # centimeters
weight = 180 # lbs
weight_in_kg = weight / 2.20462 # kilos
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Let's talk about %s." % name
puts "He's %d inches, or %3.2f centimeters, tall." % [height, height_in_cm]
puts "He's %d pounds, or %3.2f kilos, heavy." % [weight, weight_in_kg]
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [
	age, height, weight, age + height + weight]