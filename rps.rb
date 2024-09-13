def shape(num)
	case num
	when 1
		"ROCK"
	when 2
		"PAPER"
	when 3
		"SCISSORS"
	end
end

def beats(a, b)
	a - 1 == b or b / a == 3
end

loop do
	Gem.win_platform? ? (system "cls") : (system "clear")

	puts("Select shape:")
	for i in 1..3 do
		puts("[#{i}] - [#{shape(i).center(8, " ")}]")
	end

	print("YOUR CHOICE: ")
	you = gets.chomp

	if you.match(/[1-3]/)
		you = you.to_i
		enemy = Random.rand(1..3)

		puts("\n[ YOU ] chose #{shape(you)}")
		puts("[ENEMY] chose #{shape(enemy)}")

		if you == enemy
			print("\nDRAW!")

		elsif beats(you, enemy)
			puts("\n#{shape(you)} beats #{shape(enemy)}")
			puts("\nYOU WIN!")
			break

		else
			puts("\n#{shape(enemy)} beats #{shape(you)}")
			puts("\nYOU LOSE!")
			break
		end
		gets
	else
		puts("Invalid input!")
	end
end
