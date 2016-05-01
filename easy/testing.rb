/*
TESTING

CHALLENGE DESCRIPTION:

  In many teams, there is a person who tests a project, finds bugs 
and errors, and prioritizes them.
  Now, you have the unique opportunity to try yourself as a tester 
and test a product. Here, you have two strings - the first one is 
provided by developers, and the second one is mentioned in design. You 
have to find and count the number of bugs, and also prioritize them for 
fixing using the following statuses: 'Low', 'Medium', 'High', 'Critical' 
or 'Done'.
*/

#working code:

File.open(ARGV[0]).each_line do |line|
	
	line = line.split("|")
	dev_string = line[0].strip
	design_string = line[1].strip
	
	total_bugs = 0
	(0..dev_string.length-1).each do |i|
		if dev_string[i] != design_string[i]
			total_bugs += 1
		end
	end
	
	if total_bugs <= 0
		puts "Done"
	elsif total_bugs <= 2
		puts "Low"
	elsif total_bugs <= 4
		puts "Medium"
	elsif total_bugs <= 6
		puts "High"
	else
		puts "Critical"
	end

end
