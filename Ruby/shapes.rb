print "How many lines are in your shape?: "
num = gets.chomp.to_i
def rectangle(lines)
for i in 1..lines    
    for j in 1..lines
        print "*"
    end
    puts
end
end
rectangle(num)

def halfPyramid(lines)    
    for i in 1..lines    
        print "*" * i 
        puts         
    end    
end
halfPyramid(num)

def pyramid(lines)       
    spaces = lines - 1   
    for i in 1..lines*2
        if i % 2 != 0 then  
            print " " * spaces  
            print "*" * i            
            puts  
            spaces -= 1
        end      
    end
end
pyramid(num)

def diamond(lines)
    spaces = lines - 1   
    for i in 1..lines*2
        if i % 2 != 0 then  
            print " " * spaces  
            print "*" * i            
            puts  
            spaces -= 1
        end      
    end
    spaces = 1
    ((lines-1)*2).downto(1) do |i|
        if i % 2 != 0 then  
            print " " * spaces  
            print "*" * i            
            puts  
            spaces += 1
        end      
    end
end
diamond(num)

def hourglass(lines)
    spaces = 0
    (lines*2).downto(1) do |i|
        if i % 2 != 0 then  
            print " " * spaces  
            print "*" * i            
            puts  
            spaces += 1
        end      
    end
    spaces = lines - 1
    for i in 1..lines*2
        if i % 2 != 0 then  
            print " " * spaces  
            print "*" * i            
            puts  
            spaces -= 1
        end      
    end
end
hourglass(num)