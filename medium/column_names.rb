/*

*/

#Working code:

File.open(ARGV[0]).each_line do |line|
	col_num = line.to_i - 1
	
	#our output string
	col_name = "" 
	
	#converting the decimal number to base_26 and treating A-Z as digits of base_26
	base_val = 26
	
	#ascii value of A is 65, we want to start from 64
	ascii_val = 65
	
	until false
		if col_num <= 26
			col_name = (col_num + ascii_val).chr + col_name
			break
		end
		
		col_name = ((col_num % base_val) + ascii_val).chr + col_name
		col_num = (col_num / base_val) - 1
		
		
	end
	
	puts col_name
	
end
