/*
LETTERCASE PERCENTAGE RATIO

CHALLENGE DESCRIPTION:

Your task is to write a program which determines (calculates) the 
percentage ratio of lowercase and uppercase letters.
*/

#Working code:

class String
	def is_upper
		self == self.upcase
	end
end

File.open(ARGV[0]).each_line do |line|
	letters = line.strip.split("")
	lowercase = 0.0
	uppercase = 0.0	
	letters.each do |letter|
		if letter.is_upper
			uppercase += 1
		else
			lowercase += 1
		end
	end
	
	percent = 100 #since we are displaying percentages
	lowercase = lowercase / letters.length * percent
	uppercase = uppercase / letters.length * percent
	puts "lowercase: %0.2f uppercase: %0.2f" % [lowercase, uppercase]
end
