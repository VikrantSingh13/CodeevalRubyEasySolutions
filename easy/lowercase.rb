/*
LOWERCASE

CHALLENGE DESCRIPTION:

Given a string write a program to convert it into lowercase.
*/

#Working code:

File.open(ARGV[0]).each_line do |line|
	sentence = line.to_s
	
	puts sentence.downcase
	
end
