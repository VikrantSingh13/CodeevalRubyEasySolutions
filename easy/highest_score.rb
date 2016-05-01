/*
FIND THE HIGHEST SCORE

CHALLENGE DESCRIPTION:

    You decided to hold a banquet in honor of the World Art Day, where you invited 
all designers and artists that you know. During the banquet, you decided to find 
out which art movement and style the ordinary people like most of all, and whose 
works can get the highest score. To find the answer, you decided to hold an 
exhibition, where viewers will be able to evaluate each painting and vote for or 
against it. Each artist should create one work per each art movement. 
    After the exhibition, the participants calculated votes that they received for 
each painting and inserted them in the table. But, they could not determine which 
movement has won and whose work received the highest score, so they asked you to help. 
You need to determine and print the highest score of each category in the table.

*/
#working code:

File.open(ARGV[0]).each_line do |line|
	args = line.split
	
	categories = 0
	args.each do |i|
		if i == "|"
			break
		end
		categories += 1
	end
	
	rows = 0
	args.each do |i|
		if i == "|"
			rows += 1
		end
	end
	
	(0..categories-1).each do |i|
	
		counter = ""
		(0..rows).each do |j|
		
			score = args[(j * (categories + 1)) + i].to_i
			
			if counter == ""
				counter = score
			elsif score > counter
				counter = score
			end
			
		end
		print counter
		print " "
		
	end	
	puts
end
