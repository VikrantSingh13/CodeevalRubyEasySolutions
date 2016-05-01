/*
MULTIPLES OF A NUMBER

CHALLENGE DESCRIPTION:

Given numbers x and n, where n is a power of 2, print out the 
smallest multiple of n which is greater than or equal to x. 
Do not use division or modulo operator.
*/

File.open(ARGV[0]).each_line do |line|
	args = line.split(",")
	
	x = args[0].to_i
	n = args [1].to_i
	
	# x = 15
	# n = 5
	
	if n >= x
		puts n
	
	else
		(2..x).each do |i|
			if n * i >= x
				puts n * i
				break
			end
		end
	end
	
end
