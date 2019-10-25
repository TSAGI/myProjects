print "What was the student's score?: "
score = gets.chomp.to_i

while score < 0 || score > 100 
    puts "The score must be between 0 and 100.\n"
    print "Please input the student's score again: "
    score = gets.chomp.to_i    
end

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
elsif score < 50 then
    puts "The student failed. I'm sorry."
end

