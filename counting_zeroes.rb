/*
ONE ZERO, TWO ZEROS...

CHALLENGE DESCRIPTION:

  Our agent uncovered a global criminal money-laundering network that used offshore 
companies to defraud international organizations of total $1,000,000,000! The agent 
changes his location each hour, but he manages to send us the code that we need to decipher. 
  Deciphering code includes many stages, and you are taking part in one of them. Therefore, 
your task is the following: you have two numbers – the first one is the number of zeros in a 
binary code and the second one shows the range from 1 to this number, where you have to find these zeros. 
For example, for the given numbers 2 and 4, you convert all numbers from 1 to 4 inclusive 
into the binary system. As a result, you get 1, 10, 11, and 100. As the first given number is 2, 
this means that we are looking for numbers with two zeros, so only 100 suits us. Hence, the 
result will be 1: there is only one number with two zeros.

*/


File.open(ARGV[0]).each_line do |line|
	line = line.split
	range = line[1].strip.to_i
	num_zeroes = line[0].strip.to_i
	
	total_zeroes = 0 #final output
	(1..range).each do |i|
		binary_num = i.to_s(2).split("").sort.join
		if binary_num.include? ("0" * num_zeroes) and binary_num.include?\
		("1" * (binary_num.length - num_zeroes))
			total_zeroes += 1
		end
	end
	
	puts total_zeroes

end
