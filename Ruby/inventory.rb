def inventory
    print "How many items do you want to update?: "
    number_of_items = gets.chomp.to_i

    counter = 1
    items = Hash.new
    flag = 0

    while counter <= number_of_items do
        for x in 1..number_of_items do
            print "Enter the name of item ##{counter} to be updated: "
            key = gets.chomp   
            if items.key?(key) && flag == 1 then
                puts "WARNING: YOU ALREADY UPDATED THIS ITEM."
                puts "There were #{items[key]} #{key} in stock."
            else     
                if items.key?(key) then
                    puts "There were #{items[key]} #{key} in stock."
                    print "Enter the new amount of #{key} in stock: "
                    value = gets.chomp.to_i
                    flag = 1
                else                
                    items[key] = nil
                    print "Enter the amount of #{key} in stock: "
                    value = gets.chomp.to_i
                end
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
