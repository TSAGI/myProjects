class Animal
    attr_accessor :speed, :size, :num_of_legs, :height
    def initialize(spd, sz, nol, hght)
        @speed = spd
        @size = sz
        @num_of_legs = nol
        @height = hght
    end

    def sleep
        @speed = 0
    end

    def move
        @speed += 5
    end

end

cat = Animal.new(10, 20, 4, 0.25)
fish = Animal.new(100, 10, 2, 200)
puts fish.speed

