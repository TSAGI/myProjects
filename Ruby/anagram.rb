
def anagrams(s1, s2)
    string1 = s1.downcase.gsub(" ","").split("").sort
    string2 = s2.downcase.gsub(" ","").split("").sort

    if string1 == string2 then
        return "these 2 strings are anagrams"
    else
        return "these 2 strings are NOT anagrams"
    end
end

