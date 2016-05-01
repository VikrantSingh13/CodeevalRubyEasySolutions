/*
REVERSE WORDS

CHALLENGE DESCRIPTION:

Write a program which reverses the words in an input sentence.

*/

#working code:

File.open(ARGV[0]).each_line do |line|
	if line == ""
		next
	else
		args = line.split
	end
	
	reverse_sentence = ""
	
	args.each do |word|
		reverse_sentence = word + " " + reverse_sentence
		
	end

	puts reverse_sentence
	
end
