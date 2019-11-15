students = Hash.new
print "How many students are in your class?: "
class_size = gets.chomp
while class_size =~ /[^0-9]+/
    puts "You must enter an integer. Try again."
    print "How many students are in your class?: "
    class_size = gets.chomp
end
class_size = class_size.to_i
counter = 1
grade = "blah"
for x in 1..class_size
    print "What is the student ##{counter}'s name?: "
    name = gets.chomp   
    counter += 1 

    print "What was the student's score?: "
    score = gets.chomp
    check_int = score.to_i    
    while score =~ /[^0-9]+/ || check_int > 100    
        puts "The score must be an integer between 0 and 100. Try again."
        print "What was the students score?: "
        score = gets.chomp    
        check_int = score.to_i 
    end
    score = score.to_i   

    if score > 89 && score < 101 then
       grade = "A+"
    elsif score > 79 && score < 90 then
       grade = "A"
    elsif score > 69 && score < 80 then            
       grade = "B"            
    elsif score > 59 && score < 70 then            
       grade = "C"            
    elsif score > 49 && score < 60 then
       grade = "D"
    elsif score >= 0  && score < 50 then
       grade = "F"      
    end            
    
    students[name] = grade
end

studens = students.to_a.sort.to_h
students.each do |key, value|
    puts "#{key}: #{value}"
end
