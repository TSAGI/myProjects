print "Enter your full name: "
full_name = gets.chomp
until full_name.count(" ") > 0
    puts "Your full name must contain at least 2 seperate names. Try again."
    print "Enter your full name: "
    full_name = gets.chomp
end

print "Enter your email address: "
email = gets.chomp
  while email.count("@") < 1
    puts "Your email address must contain an @ symbol. Try again."
    print "Enter your email address: "
    email = gets.chomp
  end
print "Please confirm your email address by entering it a second time: "
confirm_email = gets.chomp
until confirm_email == email
    puts "Your emails don't match. Try again."
    print "Please confirm your email address by entering it a second time: "
    confirm_email = gets.chomp
end

print "Enter your username (8 to 16 characters with no spaces): "
username = gets.chomp
while username.length < 8 || username.length > 16 || username.match(" ")
    puts "Your username must contain between 8 to 16 characters with no spaces. Try again."
    print "Enter your username (8 to 16 characters with no spaces): "
    username = gets.chomp
end

print "Enter your password (at least 12 characters and at least 1 uppercase letter): "
password = gets.chomp
while password.count("A-Z") < 1 || password.length < 12
    puts "Your password must contain at least 12 characters and at least 1 uppercase letter: "
    print "Enter your password (at least 12 characters and at least 1 uppercase letter): "
    password = gets.chomp
end
