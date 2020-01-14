class Player
    attr_accessor :gold_coins, :health_points, :lives
    def initialize
        @gold_coins = 0
        @health_points = 10
        @lives = 5
    end

    def level_up
        @lives += 1
    end

    def collect_treasure
        @gold_coins += 1
        if @gold_coins % 10 == 0
            level_up
        end
    end

    def do_battle(damage)
        @health_points -= damage
        if @health_points < 1
            @lives -= 1
            @health_points = 10
            if lives == 0
                restart
            end
        end
    end

    def restart
        initialize
    end
end

conan = Player.new
puts conan.lives
conan.do_battle(10)
puts conan.lives
conan.do_battle(10)
puts conan.lives
conan.do_battle(10)
puts conan.lives
conan.do_battle(10)
puts conan.lives
conan.do_battle(10)
puts conan.lives
# conan.restart
# puts conan.health_points