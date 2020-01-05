
class BankAccount
    attr_accessor :id, :balance

    def initialize(id)
        @id = id
        @balance = 0        
    end

    def get_id
        @id
    end

    def get_balance
        "$%.2f" % @balance
    end

    def add_funds(amount)
        @balance += amount
    end

    def subtract_funds(amount)
        if @balance - amount >= 0 then @balance -= amount end        
    end

end

