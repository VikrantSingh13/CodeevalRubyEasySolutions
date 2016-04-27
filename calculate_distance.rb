/*
CALCULATE DISTANCE
CHALLENGE DESCRIPTION:

You have coordinates of 2 points and need to find the distance between them.
*/

File.open(ARGV[0]).each_line do |line|
	
	args = line.gsub!(/[(,)]/,"").split
	
	x1 = args[0].to_i
	y1 = args[1].to_i
	x2 = args[2].to_i
	y2 = args[3].to_i
	
	#the distance formula: sqrt(  ((y2 - y1) ^ 2) + ((x2 - x1) ^ 2)  )
	
	distance = Math.sqrt( ( (y2 - y1) ** 2 ) + ( (x2 - x1) ** 2 ) )
	puts distance.to_i
end
	
