def hello
    return "Hello"
end

def divide(value1, value2)    
    return value1.to_f / value2.to_f
end

def score        
    print "What was the student's score?: "
    score = gets.chomp
    while score =~ /[^0-9]+/
        puts "The score must be an integer between 0 and 100. Try again."
        print "What was the students score?: "
        score = gets.chomp
        if score =~ /^[0-9]+$/ then
            score = score.to_i
            if score > 89 && score < 101 then
                puts "The student got an A+. Excellent work!!"
            elsif score > 79 && score < 90 then
                puts "The student got a A. Well done!!"
            elsif score > 69 && score < 80 then
                puts "The student got a B. Good job!!"
            elsif score > 59 && score < 70 then
                puts "The student got a C. Not Bad."
            elsif score > 49 && score < 60 then
                puts "The student got a D. Needs to study more."
            elsif score >= 0  && score < 50 then
                puts "The student failed. I'm sorry."
            elsif score < 0 || score > 100 then
                score = "apple"
            end    
        end
    end
end

def temp_conv
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
end 

hello
puts divide(4,3)
score
temp_conv

