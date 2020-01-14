class BankAccount
    attr_accessor :balance, :interest_rate
    def initiliaze
        @balance = 0
        @interest_rate = 0
    end

    def deposit(amount)
        @balance += amount
    end

    def withdraw(amount)
        @balance -= amount
    end

    def gain_interest
        @balance *= (interest_rate.to_f / 100 + 1)
    end
end

chequing = BankAccount.new
chequing.balance = 100
chequing.interest_rate = 5

puts chequing.balance
chequing.deposit(100)
puts chequing.balance
chequing.withdraw(50)
puts chequing.balance
chequing.gain_interest
puts chequing.balance