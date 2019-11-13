#this method makes sure there are an equal number of opening and 
#closing brackets in a string. it also checks that the first
#bracket is not a closing bracket

def validStr(s)
    string = s.split("")

    openBrac = string.count("[")
    closBrac = string.count("]")

    if (openBrac + closBrac) % 2 != 0 || string[0] == "]" then
        return "INVALID STRING"
    else
        return "VALID STRING"
    end
end 
