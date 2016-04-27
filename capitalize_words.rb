/*
CAPITALIZE WORDS
CHALLENGE DESCRIPTION:

Write a program which capitalizes the first letter of each word in a sentence.
*/

File.open(ARGV[0]).each_line do |line|
	
	args = line.split
	capitalized_words = "" #final output
	
	args.each do |word|
		capitalized_words += word[0].upcase + word[1, word.length] + " "
	end
	
	puts capitalized_words.strip #strip to be consistent with the codeeval's answers
end
