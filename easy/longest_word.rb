/*
LONGEST WORD

CHALLENGE DESCRIPTION:

In this challenge you need to find the longest word in a sentence. 
If the sentence has more than one word of the same length you should 
pick the first one.
*/

File.open(ARGV[0]).each_line do |line|
	words = line.split
	
	longest_word = ""
	words.each do |word|
		if word.length > longest_word.length
			longest_word = word
		end
	end
	
	puts longest_word
end
