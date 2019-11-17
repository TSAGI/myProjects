#this method makes sure there are an equal number of opening and 
#closing brackets in a string. it also checks that the first
#bracket is not a closing bracket

def validStr(s)
    string = s.split("")
   
    ob = 0      #opening bracket
    cb = 0      #closing bracket
    
    for x in string do
    if ob >= cb 
        if x == "]"
            cb += 1
        elsif x == "["
            ob += 1
        end           
    end
    end
    
    if (ob + cb) % 2 != 0 then
        return "INVALID STRING"
    else
        return "VALID STRING"
    end

end 



