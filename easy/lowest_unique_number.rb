/*
LOWEST UNIQUE NUMBER

CHALLENGE DESCRIPTION:

There is a game where each player picks a number from 1 to 9, 
writes it on a paper and gives to a guide. A player wins if 
his number is the lowest unique. We may have 10-20 players in our game.
*/

#working code:

File.open(ARGV[0]).each_line do |line|
	numbers = line.split
	
	counts = numbers.each_with_object(Hash.new(0)) { |num,counts| counts[num]\
	+= 1}
	
	lowest_unique_pos = 0
	
	counts.keys.sort.each do |num|
		if counts[num] == 1
			lowest_unique_pos = numbers.index(num) + 1
			break
		end
	end
	
	puts lowest_unique_pos


end
