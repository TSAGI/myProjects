
def anagrams(s1, s2)
    string1 = s1.downcase.split("").sort
    string1 = string1.delete(" ")
    string2 = s2.downcase.split("").sort
    string2 = string2.delete(" ")
    if string1 == string2 then
        return "these 2 strings are anagrams"
    else
        return "these 2 strings are NOT anagrams"
    end
end

