/*
N MOD M

CHALLENGE DESCRIPTION:

Given two integers N and M, calculate N Mod M (without using any inbuilt modulus operator).

*/

#working code: 

File.open(ARGV[0]).each_line do |line|
	line = line.split(",")
	
	n = line[0].to_i
	m = line[1].to_i
	
	until n < m
		n = n - m
	end
	
	if n < 0
		puts 0	
	else
		puts n
	end
end
