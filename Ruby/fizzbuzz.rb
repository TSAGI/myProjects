loop do
    print "Please enter a number: "
    fTemp = gets.chomp
    testNum = fTemp
    begin
      if Integer(testNum)      
        fTemp = fTemp.to_f        
        if fTemp % 3 == 0 && fTemp % 5 == 0 then
            puts "FIZZBUZZ"
        elsif fTemp % 3 == 0 
            puts "FIZZ"
        elsif fTemp % 5 == 0 then
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
