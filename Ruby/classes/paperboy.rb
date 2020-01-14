class Paperboy
    attr_accessor :name, :experience
    attr_reader :earnings
    def initialize(name)
        @name = name
        @experience = 0
        @earnings = 0.0   
    end

    def quota
        daily_quota = 50 + (@experience / 2)
    end

    def deliver(start_address, end_address)
        deliveries = (end_address - start_address) + 1 
        earnings_today = 0.0      
        if deliveries < quota                        
            earnings_today = (deliveries * 0.25) - 2
        elsif deliveries == quota
            earnings_today = deliveries * 0.25 
        elsif deliveries > quota
            earnings_today = (quota * 0.25) + ((deliveries - quota) * 0.50)
        end
        @experience += deliveries
        @earnings += earnings_today
        return earnings_today
    end

    def report
        "I'm #{@name}, I've delivered #{@experience} papers and I've earned $%.2f so far!" % @earnings
    end
end

tommy = Paperboy.new("Tommy")

puts tommy.quota # => 50
puts tommy.deliver(101, 160) # => 17.5
puts tommy.earnings #=> 17.5
puts tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"

puts tommy.quota # => 80
puts tommy.deliver(1, 75) # => 16.75
puts tommy.earnings #=> 34.25
puts tommy.report # => "I'm Tommy, I've been delivered 135 papers and I've earned $34.25 so far!"