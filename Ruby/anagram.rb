
def anagrams(s1, s2)
    string1 = s1.downcase.split("")
    string1.sort!
    string2 = s2.downcase.split("")
    string2.sort!
    if string1 == string2 then
        puts "these 2 strings are anagrams"
    else
        puts "these 2 strings are NOT anagrams"
    end
end

