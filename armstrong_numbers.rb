/*
ARMSTRONG NUMBERS
CHALLENGE DESCRIPTION:

An Armstrong number is an n-digit number that is equal to the sum of the n'th powers of its digits. 
Determine if the input numbers are Armstrong numbers.
*/

//working code:

File.open(ARGV[0]).each_line do |line|

	number = line.strip.to_i
	
	n = line.strip.length
	number_copy = number
	armstrong_total = 0   #the sum of the n'th powers of the digits
	
	until number_copy <= 0
		armstrong_total += (number_copy % 10) ** n
		number_copy = number_copy / 10
	end
	
	puts (number == armstrong_total ? "True" : "False")
end
