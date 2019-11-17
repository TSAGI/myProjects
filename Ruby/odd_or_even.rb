
def oddOrEven(arr)
    even = 0
    odd = 0
    for x in arr
        if x % 2 == 0 then
            even  += 1
        else
            odd += 1
        end
    end

    if even > odd then
        return "even"
    else
        return "odd"
    end
end

