module Ex36

	def prompt
		print "$ "
	end

	def get_input
		prompt
		gets.chomp
	end

	def dead(str="You've broken the system, and are therefore dead.  Good work!")
		puts str
	end

	def victory
		puts "You have reached the treasure room!"
		puts "For your troubles you receive..."

		prizes = ["a new car!", "a lump of coal. Boo.", "a shiny new pair of pants.  Sweet!"]

		prize = 1 + rand(prizes.length) - 1
		puts prizes[prize]
	end

	def entrance
		puts "You enter the dungeon and find yourself in a small room."
		puts "A simple wooden door stands at the other end of the room."
		puts "What do you do to the door?"
		
		next_move = get_input

		if next_move == "open"
			puts "The door opens easily and you step through."
			hall()
		elsif next_move == "kick"
			dead("Your leg goes through the door and a splinter pierces your femoral artery, killing you in a matter of seconds.  Nice job!")
		else
			dead()
		end
	end

	def hall
		puts "You walk into a cavernous hall."
		puts "It's so big you can barely see the ceiling."
		puts "To the north lies a forbidding gateway with a red glow spilling out."
		puts "To the west you see a dark chamber with some kind of liquid oozing out of it."
		puts "To the east you see a bright, clean room with pleasant music faintly drifting through the air."
		puts "Where do you go next?"

		next_move = get_input

		if next_move == "north"
			puts "You fearfully move to the north."
			torture_chamber
		elsif next_move == "west"
			slide_room
		elsif next_move == "east"
			puts "You calmly walk to the east."
			go_room
		else
			dead("By choosing none of the available options, you starve to death. Good one!")
		end
	end

	def slide_room
		puts "You step into the dark room to the west, the floor is damp and there is the sound of falling water."
		puts "As you go through, a stone slab falls from the ceiling and seals you in!"
		puts "You carefully feel in front of you and appear to be at the edge of a cliff."
		puts "What do you do?"

		next_move = get_input

		if next_move == "jump"
			puts "You take the plunge and immediately land on some kind of slide. It's actually kind of fun! After a minute you see yourself approaching a brightly-lit room and tumble into it."
			challenge_room(true)
		else
			dead("Your solution fails and you slip on a wet rock and crack open your head. Ouch!")
		end
	end

	def torture_chamber
		puts "You enter slowly and hear people screaming in agony."
		puts "Looking ahead, you see the most horrible torture devices being put to use in disgusting ways."
		puts "The torturer has his back to you and hasn't heard you yet.  What do you do?"

		next_move = get_input

		if next_move == "retreat"
			puts "You slowly back out of the room, wishing you could forget all that you'd just seen."
			hall
		else
			puts "You slip on a banana peel, alerting the torturer to your presence."

			weapons = ["knife", "axe", "cleaver", "spear", "toothpick"]
			weapon = 1 + rand(weapons.length) - 1
			dead("He throws his #{weapons[weapon]} across the room and hits you in the eye.  Damn that stings.")
		end
	end

	def go_room
		puts "You walk in and see two chairs and a small table with a Go board on it."
		puts "An old man sits on the far side and motions for you to sit down."
		puts "On the left side of the room you see a locked door; the key appears to be around his neck."
		puts "You sit and he allows you to choose your color.  What do you pick?"

		next_move	= get_input

		if next_move == "black"
			puts "You move first, and somehow through a combination of luck and misdirection, manage to win!  The old man sighs and unlocks the door for you, allowing you to proceed."
			challenge_room
		elsif next_move == "white"
			puts "You allow the man to move first, and are soundly beaten."
			dead("After tallying up the score, the man calmly beheads you with a katana.  Better luck next time!")
		else
			dead("While attempting to avoid the game, you incur the man's wrath and he shoots you in the face.  Whoops!")
		end
	end

	def challenge_room(slide = false)
		if slide
			puts "You stand in the middle of a normal looking room."
			puts "A plain doorway stands opposite you."
			puts "To your right you see a golden door with a sign that says 'Treasure' over it."
		else
			puts "You enter a normal looking room."
			puts "On the opposite side you see a small doorway with water pouring out of it."
			puts "On the right you see a golden door with a sign that says 'Treasure' over it."
		end
		puts "As you walk towards it you hear a booming voice ask:"
		puts "WHAT IS YOUR NAME?"

		name = get_input

		puts "After a few moments of silence you are asked:"
		puts "WHAT IS YOUR QUEST?"

		quest = get_input

		if quest == "grail"
			dead("Wrong movie!  A giant wooden rabbit falls on your head and kills you.")
		end

		puts "As you wait nervously, you are asked the third and final question:"
		puts "WHAT IS _MY_ FAVORITE COLOR?"

		color = get_input

		if color == "blue"
			puts "The golden door opens and you walk through triumphantly!"
			victory
		else
			dead("You have guessed incorrectly. Dark smoke pours out of the ceiling, forming a cloud over your head. After several seconds, you a struck by lightning. The end!")
		end
	end

end