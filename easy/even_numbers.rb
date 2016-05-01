/*
EVEN NUMBERS

CHALLENGE DESCRIPTION:

Write a program which checks input numbers and determines whether a number is even or not.
*/

#Working code:

File.open(ARGV[0]).each_line do |line|
	
	num = line.to_i
	
	if num % 2 == 0
		puts 1
	else 
		puts 0
	end
end
