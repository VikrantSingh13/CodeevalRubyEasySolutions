/*
TIME TO EAT

CHALLENGE DESCRIPTION:

  It's amazing how fast time flies by and we don’t even realize it. As we 
are getting older, time seems to move so much faster than it did in the past. 
  Perception of time is relative to how fast our heart rate is. An unborn baby’s 
heart rate is incredibly fast and as we age, it slows. Metabolic rate of an organism 
determines its perception of time. Organisms like cats and dogs have a very high 
metabolic rate; thus, the breaks between their meals seem to be shorter than humans have. 
  At codeeval.com, we have a cat called Kitty. She loves eating, and it seems like she 
can eat anything any time. We want to keep Kitty fit, so we feed her according to a schedule. 
Planning her daily meals, we need to see when Kitty will eat starting with the latest meal 
in the evening to the earliest morning snack. So, your task is to sort timestamps in the 
schedule in a reverse chronological order.
*/

#working code:

#====Helper====
def convert_to_secs(time) # str => int 
  # convert_to_secs("01:00:00") => 3600
	time = time.split(":")
	time[0].to_i * 3600 + time[1].to_i * 60 + time[2].to_i
end
#==============

File.open(ARGV[0]).each_line do |line|
	timestamps = line.split
	hash_timestamps = Hash.new
	
	timestamps.each do |timestamp|
		hash_timestamps[convert_to_secs(timestamp)] = timestamp
	end
	
	timestamps = hash_timestamps.keys.sort!
	result_string = ""
	timestamps.each do |timestamp|
		result_string = hash_timestamps[timestamp] + " " + result_string
	end
	
	puts result_string
end
