print "Please enter the temperature: "
fTemp = gets.chomp.to_f
print "Is the number you entered in Fahrenheit or Celcius? (F or C): "
f_or_c = gets.chomp

if f_or_c.chars.first.downcase == "f" then
    cTemp = (fTemp - 32) * (5.0/9)
else
    cTemp = fTemp
    fTemp = (cTemp * (9/5.0)) + 32
end

puts "The temperature in Fahrenheit is %.1f°F and the temperature in Celcius is %.1f°C"  % [fTemp, cTemp]
 