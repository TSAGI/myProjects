hardware = Hash.new
hardware = {
    "computers" => 55,
    "telephones" => 42,
    "printers" => 14
}


def inventory(items)
    print "How many items do you want to update?: "
    number_of_items = gets.chomp.to_i

    counter = 1
    entered_names = []
    
    while counter <= number_of_items do
        for x in 1..number_of_items do
            print "Enter the name of item ##{counter} to be updated: "
            key = gets.chomp 
            entered_names.push(key) 
            if items.key?(key) && entered_names.count(key) > 1 then 
                puts "WARNING: YOU ALREADY UPDATED THIS ITEM."
                puts "There were #{items[key]} #{key} in stock."
            elsif items.key?(key) then
                print "Enter the amount of #{key} in stock: "
                value = gets.chomp.to_i    
                items[key] = value              
            else               
                items[key] = nil
                print "Enter the amount of #{key} in stock: "
                value = gets.chomp.to_i   
                items[key] = value                 
            end
            
            counter += 1
        end
    end
    items = items.to_a.sort.to_h    
    items.each do |key, val|
        puts "#{key}: #{val}" 
    end
end

inventory(hardware)
