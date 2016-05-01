/*
ROLLER COASTER

CHALLENGE DESCRIPTION:

You are given a piece of text. Your job is to write a program that 
sets the case of text characters according to the following rules:

1. The first letter of the line should be in uppercase.
2. The next letter should be in lowercase.
3. The next letter should be in uppercase, and so on.
4. Any characters, except for the letters, are ignored during determination 
of letter case.
*/

#working code:

#====Helper====
def roller_coaster_text(line)
		
		is_capital = true #this boolean is used to alternatively capitalize letters
		
		line.split("").each do |char|
			if char.match(/[a-zA-Z]/)
				print (is_capital) ? char.upcase : char.downcase
				is_capital = not(is_capital)
			else
				print char
			end
		end	
    end
#==============

File.open(ARGV[0]).each_line do |line|
	line = roller_coaster_text(line)
	puts
	
end
