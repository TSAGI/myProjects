

class Pizza

    def initialize(new_toppings) 
        @cook = false
        @slices = 0
        @toppings = new_toppings
    end 
    
    def bake
        if !@cook then @cook = true end
    end

    def cut
        @slices += 2
    end

    def eat
        if @slices > 0 then @slices -= 1 end
    end

end

# my_pizza = Pizza.new(["mushrooms", "onions", "green peppers"])
# my_pizza.bake

# 100.times do
#     my_pizza.cut
# end

# 4.times do
#     50.times do
#         my_pizza.eat
#     end
# end

# p my_pizza