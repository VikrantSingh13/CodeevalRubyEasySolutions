/*
ODD NUMBERS

CHALLENGE DESCRIPTION:

Print the odd numbers from 1 to 99.
*/

#working code:

(1..99).each do |i|
	if i % 2 != 0
		puts i
	end
end
