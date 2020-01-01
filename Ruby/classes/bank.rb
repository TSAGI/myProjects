class BankAccount

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

class Branch
    
    def initialize
        @accounts = []
    end
    
    def add_account(account)
        @accounts.push(account)
    end

    def deposit(account, amount)
        account.add_funds(amount)
    end
    
    def withdraw(account, amount)
        account.subtract_funds(amount)
    end
    
    def get_accounts
        @accounts.each {|account| puts account.get_id}
    end
    
end

chequing = BankAccount.new(123)
savings = BankAccount.new(345)

rbc01 = Branch.new
rbc01.add_account(chequing)
rbc01.add_account(savings)
rbc01.get_accounts
rbc01.deposit(savings, 500)
puts savings.get_balance
