/*
UNIQUE ELEMENTS

CHALLENGE DESCRIPTION:

You are given a sorted list of numbers with duplicates. Print out the sorted list with duplicates removed.

*/

#working code:

File.open(ARGV[0]).each_line do |line|
	args = line.split(",")
	
	previous = 0
	result_string = ""
	
	args.each do |i|
		i = i.to_i #converts to int
		
		if i != previous
			result_string += i.to_s + ","
			previous = i
		end
	end
	puts result_string[0..result_string.length-2]
end

