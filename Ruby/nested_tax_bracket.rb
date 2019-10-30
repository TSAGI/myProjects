print "How much did you make last year?: "
income = gets.chomp.to_f
tax = 0.00

if income <= 46605 then
    tax = income * 0.15 
else
    tax = 6990.75
    if income <= 93208 then
        tax += (income - 46605) * 0.205
    else
        tax += 19107.64
        if income <= 144489 then
            tax += (income - 93208) * 0.26
        else
            tax += 37567.14
            if income <= 205842 then
                tax += (income - 144489) * 0.29
            else
                tax += 59694.18 + ((income - 205842) * 0.33)
        
            end
        end
    end
end


print "You owe the CRA $%.2f in taxes.\n" % tax 
