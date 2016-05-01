/*
ROAD TRIP

CHALLENGE DESCRIPTION:

You've decided to make a road trip across the country in a straight line. 
You have chosen the direction you'd like to travel and made a list of cities 
in that direction that have gas stations to stop at and fill up your tank. 
To make sure that this route is viable, you need to know the distances between 
the adjacent cities in order to be able to travel this distance on a single tank 
of gasoline, (No one likes running out of gas.) but you only know distances to each 
city from your starting point.
*/

#working code:

File.open(ARGV[0]).each_line do |line|
	distances = [0]
	puts distances
	line = line.split(";")
	
	line.each do |city|
		distances.push(city.split(",")[1].to_i)
	end
	
	distances.sort!
	result_string = ""
	(0..distances.length-2).each do |i|
		result_string += (distances[i+1] - distances[i]).to_s + ","
	end
	
	puts result_string.chomp(",")
end
