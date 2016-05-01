/*
DELTA TIME

CHALLENGE DESCRIPTION:

You are given the pairs of time values. The values are in the HH:MM:SS 
format with leading zeros. Your task is to find out the time difference 
between the pairs.

*/

#===Helper Functions===

def convert_to_secs(time) # str => int 
# convert_to_secs("01:00:00") => 3600
	time = time.split(":")
	time[0].to_i * 3600 + time[1].to_i * 60 + time[2].to_i
end

def hms(s)
	hms_str = ""
	
	if s.length == 2
		hms_str += s + ":"
	else
		hms_str += "0" + s + ":"
	end
	hms_str
end

def convert_to_hms(secs) # int => str
# convert_to_hms(3600) => "01:00:00"
	s = (secs % 60).to_s
	secs = secs / 60
	m = (secs % 60).to_s
	secs = secs / 60
	h = secs.to_s
	
	hms(h) + hms(m) + hms(s)
end

#===Main loop that takes in the input===

File.open(ARGV[0]).each_line do |line|
	line = "14:01:57 12:47:11"
	times = line.split
	
	puts(convert_to_hms((convert_to_secs(times[0].strip) -\
	convert_to_secs(times[1].strip)).abs).chomp(":"))
end
