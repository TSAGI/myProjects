class Cat
    attr_accessor :name, :preferred_food, :meal_time
    def initialize(name, preferred_food, meal_time)
        @name = name
        @preferred_food = preferred_food
        @meal_time = meal_time
    end

    def eats_at
        if @meal_time == 12
            return "#{@meal_time} PM"
        elsif @meal_time > 12
            return "#{@meal_time - 12} PM"
        elsif @meal_time < 12
            return "#{@meal_time} AM"
        end
    end

    def meow
        return "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}."
    end
end

fluffy = Cat.new('Fluffy', 'salmon', 6)
bonnie = Cat.new('Bonnie', 'chicken', 14)
puts fluffy.meow
puts bonnie.meow
