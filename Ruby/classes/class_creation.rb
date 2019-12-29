class Animal
    def initialize(spd, sz, nol, hght)
        @speed = spd
        @size = sz
        @num_of_legs = nol
        @height = hght
    end

    def get_speed 
        @speed 
    end

    def set_speed(new_speed)
        @speed = new_speed
    end
    
    def get_size
        @size
    end

    def set_size(new_size)
        @size = new_size
    end

    def get_num_of_legs
        @num_of_legs
    end

    def set_num_of_legs(new_nol)
        @num_of_legs = new_nol
    end

    def get_height
        @height
    end
    
    def set_height(new_height)
        @height = new_height
    end

end

cat = Animal.new(10, 20, 4, 0.25)
fish = Animal.new(100, 10, 2, 200)
puts fish.get_speed

