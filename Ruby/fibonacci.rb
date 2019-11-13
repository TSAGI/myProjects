#this method provides the nth number in the fibonacci sequence

def fib(n)
    a = 0
    b = 1
    fib_array = [a,b]    
    for x in 1..n
    a = a + b
    b = b + a
    fib_array.push(a,b)    
    end

    puts fib_array[n]
end

fib(6)