/*
REVERSE AND ADD

CHALLENGE DESCRIPTION:

Credits: Programming Challenges by Steven S. Skiena and Miguel A. Revilla

The problem is as follows: choose a number, reverse its digits and add it to the original. 
If the sum is not a palindrome (which means, it is not the same number from left to right and right to left), 
repeat this procedure.
*/

#Working code:
#===Helper===
class String
	def is_palindrome?
		self == self.reverse
	end
end

#====Main====
File.open(ARGV[0]).each_line do |line|

	num = line
	counter = 0
	until num.is_palindrome?
		num = (num.to_i + num.reverse.to_i).to_s
		counter += 1
	end
	
	puts counter.to_s + " " + num

end
