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

puts("Select shape:")
(1..3).each do |i|
	puts("[#{i}] - #{shape(i).center(8, " ")}")
end
print("YOUR CHOICE: ")

you = gets.chomp.to_i
enemy = Random.rand(1..3)

puts("\nYou chose #{shape(you)}")
puts("Enemy chose #{shape(enemy)}")

if you == enemy
	puts("\nDRAW!")

elsif beats(you, enemy)
	puts("\n#{shape(you)} beats #{shape(enemy)}")
	puts("\nYOU WIN!")

else
	puts("\n#{shape(enemy)} beats #{shape(you)}")
	puts("\nYOU LOSE!")
end