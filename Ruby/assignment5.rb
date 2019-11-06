fields = []
wrong_input = 0
print "Enter your full name: "
fields[0] = gets.chomp
until fields[0].count(" ") > 0
    puts "Your full name must contain at least 2 seperate names. Try again."
    print "Enter your full name: "
    fields[0] = gets.chomp
    wrong_input += 1
end

print "Enter your email address: "
fields[1] = gets.chomp
  while fields[1].count("@") < 1
    puts "Your email address must contain an @ symbol. Try again."
    print "Enter your email address: "
    fields[1] = gets.chomp
    wrong_input += 1
  end
print "Please confirm your email address by entering it a second time: "
confirm_email = gets.chomp
until confirm_email == fields[1]
    puts "Your emails don't match. Try again."
    print "Please confirm your email address by entering it a second time: "
    confirm_email = gets.chomp
    wrong_input += 1
end

print "Enter your username (8 to 16 characters with no spaces): "
fields[2] = gets.chomp
while fields[2].length < 8 || fields[2].length > 16 || fields[2].match(" ")
    puts "Your username must contain between 8 to 16 characters with no spaces. Try again."
    print "Enter your username (8 to 16 characters with no spaces): "
    fields[2] = gets.chomp
    wrong_input += 1
end

print "Enter your password (at least 12 characters and at least 1 uppercase letter): "
fields[3] = gets.chomp
while fields[3].count("A-Z") < 1 || fields[3].length < 12
    puts "Your password must contain at least 12 characters and at least 1 uppercase letter: "
    print "Enter your password (at least 12 characters and at least 1 uppercase letter): "
    fields[3] = gets.chomp
    wrong_input += 1
end

field_keys = ["Name", "Email", "Username", "Password" ]
field_keys = field_keys.zip(fields)

field_keys.each do |field_keys, fields|
    puts "#{field_keys}: #{fields}"
  end

  puts "You entered the wrong input #{wrong_input} times."

