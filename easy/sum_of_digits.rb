/*
SUM OF DIGITS

CHALLENGE DESCRIPTION:

Given a positive integer, find the sum of its constituent digits.
*/

#working code:

File.open(ARGV[0]).each_line do |line|
	num = line.to_i
	
	sum_digits = 0
	
	#adds up all the digits except the very first digit
	while (num >= 10)
		
		sum_digits += num % 10
		num = num / 10
	end
	
	sum_digits += num #adds up the very first digit
	
	puts sum_digits
	
end
