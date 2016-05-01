/*
FIBONACCI SERIES

CHALLENGE DESCRIPTION:

The Fibonacci series is defined as: F(0) = 0; F(1) = 1; F(n) = F(n–1) + F(n–2) when n>1. 
Given an integer n≥0, print out the F(n).
*/

File.open(ARGV[0]).each_line do |line|
	num = line.strip.to_i
	
	if num == 0 or num == 1
		puts num
	else
		a = 0 #0th fibonacci number
		b = 1 #1st fibonacci number
		
		(1..num-1).each do |i|
			a, b = b, a + b
		end
		puts b
	end
	
end
