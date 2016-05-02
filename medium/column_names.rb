/*
COLUMN NAMES

SPONSORING COMPANY:
blackbaud

CHALLENGE DESCRIPTION:
Microsoft Excel uses a special convention to name its column headers. 
The first 26 columns use the letters 'A' to 'Z'. Then, Excel names its 
column headers using two letters, so that the 27th and 28th column are 
'AA' and 'AB'. After 'ZZ', Excel uses three letters.

Write a function that takes as input the number of the column, and returns 
its header. The input will not ask for a column that would be greater than 
'ZZZ'.
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
