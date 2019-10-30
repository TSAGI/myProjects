fTemp = 0.0
cTemp = 0.0

loop do
    print "Please enter the temperature: "
    fTemp = gets.chomp
    begin
      if Integer(fTemp) 
        fTemp = fTemp.to_f
        loop do
            print "Is the number you entered in Fahrenheit or Celcius? (F or C): "
            f_or_c = gets.chomp.downcase
            begin 
                if f_or_c == "f" then
                    cTemp = (fTemp - 32) * (5.0/9)
                    break
                elsif f_or_c == "c" then
                    cTemp = fTemp
                    fTemp = (cTemp * (9/5.0)) + 32
                    break
                else
                    puts "Please press the letter F or C only."
                end
            end
        end
        break  
      else 
      end
    rescue ArgumentError => _error
        puts "You didn't put an number, please put a number and try again."
    end   
  end

puts "The temperature in Fahrenheit is %.1f°F and the temperature in Celcius is %.1f°C"  % [fTemp, cTemp]
 