module Ex37Mod

	class Ex37
		
		def old_method
			puts "This method will be aliased."
		end

		alias_method :new_method, :old_method

		undef old_method

		def logic_and_looping
			to_loop = true
			j = 0

			while to_loop
				for i in (1..3)
					print "#{i} and "
				end
				if j < 1
					puts "repeat!"
				elsif j < 2
					puts "again!"
				else
					puts "the end!"
					to_loop = false
				end
				j += 1
			end
		end

		def case_test
			puts "Give me a number from 1-10:"
			while true
				print "# "; num = gets.chomp.to_i
				case num
				when 1..4
					puts "#{num} is too low!"
					break
				when 5..6
					puts "#{num} is just right!"
					break
				when 7..10
					puts "#{num} is too high!"
					break
				else
					puts "Learn how to follow instructions, try again!"
				end
			end
		end

		def print_str(str)
			puts "parent: #{str}"
		end

	end

	class NewClass < Ex37

		def print_str(str)
			super
			puts "child: #{str}"
		end

		def yielding
			yield "turkey" if block_given?
		end

	end

end

END { puts "That's all folks!" }

include Ex37Mod
e = Ex37.new
n = NewClass.new

begin
	puts "a " + 2
rescue => exception
	puts "There was a #{exception.class}!"
	puts "a " + 2.to_s
ensure
	puts "this happened too!"
end

begin
	e.old_method
rescue NoMethodError => exception
	puts "We caught an error!"
	e.new_method
ensure
	e.logic_and_looping
	e.case_test
	n.print_str("pants")
	n.yielding do |str|
		puts "I like #{str}."
	end
end

BEGIN { puts "Here we go!" }