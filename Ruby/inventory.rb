def inventory
print "How many items do you want to input?: "
number_of_items = gets.chomp.to_i

counter = 1
items = Hash.new
item_name = ""

while counter <= number_of_items do
    for x in 1..number_of_items do
        print "Enter the name of item ##{counter}: "
        key = gets.chomp
        if key == item_name then
            puts "There were #{items[key]} #{key} in stock."
            print "Enter the new amount of #{key} in stock: "
            value = gets.chomp.to_i
        else
            item_name = key
            items[key] = nil
            print "Enter the amount of #{key} in stock: "
            value = gets.chomp.to_i
        end
        items[key] = value
        counter += 1
    end
end

items.each do |key, val|
    puts "#{key}: #{val}" 
end
end
inventory
