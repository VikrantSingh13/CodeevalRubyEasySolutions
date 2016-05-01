/*
BLACK CARD
CHALLENGE DESCRIPTION:

You must have heard about pirates, their customs, pirates code, and the “black spot”. 
If a pirate is presented with a “black spot”, he is officially pronounced guilty, meaning he will soon be 
expulsed from the pirate brotherhood or even be dead. 
We don’t have as strict rules as pirates have, and a person who receives a black spot simply leaves the game. 
For example, we have a list of three players: John, Tom, Mary, and a number 5. Starting with the first player 
(in our case, it’s John), we start to count all players: John – 1, Tom – 2, Mary – 3, and then again starting 
from the first one John – 4, Tom – 5. As Tom gets number 5, he should leave. Now, we have John and Mary and start 
counting again. John gets number 5, so he leaves. Thus, the winner is Mary.

*/
File.open(ARGV[0]).each_line do |line|
	args = line.split
	players = args[0..-3]
	black_card = args[-1].to_i
	num_players = players.length
	
	(0..num_players-2).each do |i|
	
		#determine the index of the player to be killed
		if black_card > players.length
			kill_player = (black_card % players.length) - 1
		else 
			kill_player = black_card - 1
		end
		
		players.delete_at(kill_player)
	end
	
	#puts the last remaining player
	puts players[0]
end	
