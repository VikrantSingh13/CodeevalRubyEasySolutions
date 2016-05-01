/*

*/

#working code:

File.open(ARGV[0]).each_line do |line|
	length_shortened_text = 40
	line = line.strip
	
	if line.length <= 55
		puts line
	
	else
		list_words = line.split
		new_shortened_text = ""
		
		list_words.each do |word|
			if word.length + new_shortened_text.length <= length_shortened_text
				new_shortened_text += word + " "
			else
				break
			end
		end
		puts new_shortened_text.strip + "... <Read More>"	
	end
end
