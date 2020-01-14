require_relative 'pizza'

class Pizzeria
    @@total_pizza_sales = 0 #class variable
    attr_reader :is_open, :stock, :pizza_sales, :location

    def initialize(address)
        #instance variables
        @is_open = false
        @stock = 0
        @pizza_sales = 0
        @location = address
    end

    def open
        @is_open = true
    end

    def close
        @is_open = false
    end

    def order(toppings)
        if @stock > 1 && @is_open == true      

            @@total_pizza_sales += 1
            @pizza_sales += 1

            new_pizza = Pizza.new(toppings)
            new_pizza.bake
            @stock -= 1

            4.times do
                new_pizza.cut
            end

            return new_pizza
        else
            return nil
        end
    end

    def restock
        if @is_open == false
            @stock += 5
        end
    end

    def self.total_pizza_sales
        return @@total_pizza_sales
    end

    def total_pizza_sales
        return @@total_pizza_sales
    end

end

bay_st = Pizzeria.new('Bay St.')
york = Pizzeria.new('York')
puts bay_st.location
puts bay_st.stock
york.restock
york.open
bay_st.restock
bay_st.open
puts bay_st.stock

bay_st_order_1 = bay_st.order(['mushrooms', 'onions'])
york_order_1 = york.order(['green peppers', 'onions'])
p bay_st_order_1
p bay_st
bay_st_order_1.eat
p bay_st_order_1
p york_order_1
puts bay_st.total_pizza_sales
