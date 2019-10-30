loop do
    print "Please enter a number: "
    number = gets.chomp    
    begin
      if Integer(number) then   
        number = number.to_f        
        if number % 3 == 0 && number % 5 == 0 then
            puts "FIZZBUZZ"
        elsif number % 3 == 0 
            puts "FIZZ"
        elsif number % 5 == 0 then
            puts "BUZZ"
        else
            puts "Sorry...no FIZZ or BUZZ for you."
        end        
        break       
    end   
rescue ArgumentError => _error
    puts "You didn't put an number, please put a number and try again."
end
end
