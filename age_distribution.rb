File.open(ARGV[0]).each_line do |line|
	
	age = line.to_i
	if age < 0
		puts "This program is for humans"
	elsif age <= 2
		puts "Still in Mama's arms"
	elsif age <=4
		puts 'Preschool Maniac' 
	elsif age <= 11
		puts 'Elementary school'
	elsif age <= 14
		puts 'Middle school'
	elsif age <= 18
		puts 'High school'
	elsif age <= 22
		puts 'College'
	elsif age <= 65
		puts "Working for the man"
	elsif age <= 100
		puts "The Golden Years"
	else
		puts "This program is for humans"
	end
end
