
print "Please type in a message or word: "
msg = gets.chomp
while msg.nil? || msg.strip.empty?
    print "You didn't type a message or a word. Try again.\n"
    print "Please typs in a message or word: "
    msg = gets.chomp
end

if msg.reverse == msg || msg.delete(" ").reverse == msg.delete(" ") then
    puts  "#{msg.capitalize} is a palindrome.\n"
else
    puts msg.capitalize
end
