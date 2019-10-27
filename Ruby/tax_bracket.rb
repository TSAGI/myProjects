print "How much did you make last year?: "
income = gets.chomp.to_f
tax = 0.00
if income <= 46605 then
    tax = income * 0.15        
elsif income > 46605 && income <= 93208 then
    tax = ((income - 46605) * 0.205) + 6990.75    
elsif income > 93208 && income <= 144489 then
    tax = ((income - 93208) * 0.26) + 19107.64 + 6990.75    
elsif income > 144489 && income <= 205842 then
    tax = ((income - 144489) * 0.29) + 37567.14 + 19107.64 + 6990.75    
else 
    tax = ((income - 205842) * 0.33) + 59694.18 + 37567.14 + 19107.64 + 6990.75
end
print "You owe the CRA $" 
printf(("%.2f"), (tax)) 
print " in taxes.\n"