loop do
    print "Please enter a number: "
    fTemp = gets.chomp
    begin
      if Integer(fTemp) 
        break  
      end   
    rescue ArgumentError => _error
      puts "You didn't put an number, please put a number and try again."
    end
  end

fTemp = fTemp.to_f

if fTemp % 3 == 0 && fTemp % 5 == 0 then
    puts "FIZZBUZZ"
elsif fTemp % 3 == 0 
    puts "FIZZ"
elsif fTemp % 5 == 0 then
    puts "BUZZ"
else
    "Sorry...no FIZZ or BUZZ for you."
end
