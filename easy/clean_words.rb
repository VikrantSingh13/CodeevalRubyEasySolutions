/*

CLEAN UP THE WORDS
CHALLENGE DESCRIPTION:

You have a list of words. Letters of these words are mixed with extra symbols,
so it is hard to define the beginning and end of each word. Write a program that 
will clean up the words from extra numbers and symbols.

*/

#Working code:

File.open(ARGV[0]).each_line do |line|

	line.downcase!
	result_string = ""
	previous_char = result_string[0]
	
	(0..line.length-1).each do |i|
		if line[i] =~ /[[:alpha:]]/
			result_string += line[i]
		else
			if previous_char =~ /[[:alpha:]]/
				result_string += " "
			end
		end
		previous_char = line[i]
	end
	
	puts result_string
end
