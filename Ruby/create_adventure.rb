puts "You are in the kitchen and must bake a cake."
print "There is flour and salt. Which will you put in the batter?: "
ingredient = gets.chomp

if ingredient.downcase == "salt" then
    puts "You spoiled the cake."
elsif ingredient.downcase == "flour" then
    puts "You're on the right track."
    puts "There is now vegetable oil and a screwdriver."
    print "Which will you put in?: "
    ingredient = gets.chomp
    if ingredient.downcase.include? " oil" then 
        puts "You're good."
        puts "There is now sugar and vinegar."
        print "Which will you put in?: "
        ingredient = gets.chomp
        if ingredient.downcase == "sugar"
            puts "Great work."
        elsif ingredient.downcase == "vinegar"
            puts "The cake tastes awful"
        else 
            puts "That wasn't one of the choices."
        end
    elsif ingredient.downcase == "screwdriver" then
        puts "You ruined the cake" 
    else 
        puts "That wasn't one of the choices."
    end
else 
    puts "That wasn't one of the choices."
end