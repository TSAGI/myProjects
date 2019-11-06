fields = Hash.new
wrong_input = 0
print "Enter your full name: "
fields["Name"] = gets.chomp
until fields["Name"].count(" ") > 0
    puts "Your full name must contain at least 2 seperate names. Try again."
    print "Enter your full name: "
    fields["Name"] = gets.chomp
    wrong_input += 1
end

print "Enter your email address: "
fields["Email"] = gets.chomp
  while fields["Email"].count("@") < 1
    puts "Your email address must contain an @ symbol. Try again."
    print "Enter your email address: "
    fields["Email"] = gets.chomp
    wrong_input += 1
  end
print "Please confirm your email address by entering it a second time: "
confirm_email = gets.chomp
until confirm_email == fields["Email"]
    puts "Your emails don't match. Try again."
    print "Please confirm your email address by entering it a second time: "
    confirm_email = gets.chomp
    wrong_input += 1
end

print "Enter your username (8 to 16 characters with no spaces): "
fields["Username"] = gets.chomp
while fields["Username"].length < 8 || fields["Username"].length > 16 || fields["Username"].match(" ")
    puts "Your username must contain between 8 to 16 characters with no spaces. Try again."
    print "Enter your username (8 to 16 characters with no spaces): "
    fields["Username"] = gets.chomp
    wrong_input += 1
end

print "Enter your password (at least 12 characters and at least 1 uppercase letter): "
fields["Password"] = gets.chomp
while fields["Password"].count("A-Z") < 1 || fields["Password"].length < 12
    puts "Your password must contain at least 12 characters and at least 1 uppercase letter. Try again: "
    print "Enter your password (at least 12 characters and at least 1 uppercase letter): "
    fields["Password"] = gets.chomp
    wrong_input += 1
end

fields.each do |key, val|
    puts "#{key}: #{val}"
  end

  puts "You entered the wrong input #{wrong_input} times."

