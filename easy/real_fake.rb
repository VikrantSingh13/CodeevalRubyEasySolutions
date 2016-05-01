/*
REAL FAKE

CHALLENGE DESCRIPTION:

  The police caught a swindler with a big pile of credit cards. 
Some of them are stolen and some are fake. It would take too 
much time to determine which ones are real and which are fake, 
so you need to write a program to check credit cards. 
  To determine which credit cards are real, double every third 
number starting from the first one, add them together, and then 
add them to those figures that were not doubled. If the total 
sum of all numbers is divisible by 10 without remainder, then this 
credit card is real. 
*/
#working code:

File.open(ARGV[0]).each_line do |line|
	card_number = line.delete(" ")
	sum_numbers = 0
	(0..card_number.length-1).each do |i|
		if i % 2 == 0
			sum_numbers += card_number[i].to_i * 2
		else
			sum_numbers += card_number[i].to_i
		end
	end
	puts(sum_numbers % 10 == 0 ? "Real" : "Fake")
		
end
