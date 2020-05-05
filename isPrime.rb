def is_prime num
    div = 2
    while div*div<=num
        if num%div == 0 
            return false
        end
        div = div+1
    end
    return true
end


def print_all_Primes num
    for i in 2..num
        is_Status = is_prime i
        if is_Status
            puts i
        end
    end
end

print_all_Primes 20
        