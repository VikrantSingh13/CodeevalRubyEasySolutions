/*
FIZZ BUZZ

CHALLENGE DESCRIPTION:

Players generally sit in a circle. The first player says the number “1”, 
and each player says next number in turn. However, any number divisible 
by X (for example, three) is replaced by the word fizz, and any divisible 
by Y (for example, five) by the word buzz. Numbers divisible by both become 
fizz buzz. A player who hesitates, or makes a mistake is eliminated from the game.

Write a program that prints out the final series of numbers where those 
divisible by X, Y and both are replaced by “F” for fizz, “B” for buzz and 
“FB” for fizz buzz.
*/

#Working code:

File.open(ARGV[0]).each_line do |line|
    args = line.split
    
    x = args[0].to_i
    y = args[1].to_i
    n = args[2].to_i
	
    (1..n).each do |num|
		
		fizz = num % x
		buzz = num % y
		
        if fizz == 0
            print 'F'
        
        end
        
        if buzz == 0
            print 'B'
            
        end
		
		    if fizz != 0 and buzz != 0 
            print num
        
        end
		
		    print ' '
        
    end
	
	  puts
        
end
