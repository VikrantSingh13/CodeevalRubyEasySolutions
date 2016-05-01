/*
RIGHTMOST CHAR

CHALLENGE DESCRIPTION:

You are given a string 'S' and a character 't'. Print out the position 
of the rightmost occurrence of 't' (case matters) in 'S' or -1 if there 
is none. The position to be printed out is zero based.
*/

#working code:
File.open(ARGV[0]).each_line do |line|
	args = line.split(",")
	chars = args[0].split("")
	given_char = args[1].strip #We need to find the right most position of this char
	char_pos = -1
	(0..chars.length-1).each do |i|
		puts chars[i]
		if chars[i] == given_char
			char_pos = i
		end
		puts char_pos
	end
	
	puts char_pos

end
