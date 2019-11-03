print "Enter your email address: "
email = gets.chomp
while email !~ /.*[@]/
    puts "Your email address must contain an @ symbol. Try again."
    print "Enter your email address: "
    email = gets.chomp
end

print "Enter your username (8 to 16 characters with no spaces): "
username = gets.chomp
while username !~ /^.{8,16}$/ || username !~ /^\S*$/
    puts "Your username must contain between 8 to 16 characters with no spaces. Try again."
    print "Enter your username (8 to 16 characters with no spaces): "
    username = gets.chomp
end

print "Enter your password (at least 12 characters and at least 1 uppercase letter): "
password = gets.chomp
while password !~ /^.*[A-Z]/ || password !~ /^.{12,}$/
    puts "Your password must contain at least 12 characters and at least 1 uppercase letter: "
    print "Enter your email address: "
    password = gets.chomp
end
