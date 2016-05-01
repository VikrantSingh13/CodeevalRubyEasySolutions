/*
PENULTIMATE WORD

CHALLENGE DESCRIPTION:

Write a program which finds the next-to-last word in a string.
*/

#working code:

File.open(ARGV[0]).each_line do |line|

	args = line.split
	puts args[args.length-2]
end
