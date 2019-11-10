print "How many items do you want to input?: "
number_of_items = gets.chomp.to_i

counter = 1
items = Hash.new

while counter <= number_of_items do
    for x in 1..number_of_items do
        print "Enter the name of item ##{counter}: "
        key = gets.chomp
        items[key] = nil
        print "Enter the amount of #{key} in stock: "
        value = gets.chomp.to_i
        items[key] = value
        counter += 1
    end
end

items.each do |key, val|
    puts "#{key}: #{val}" 
end

