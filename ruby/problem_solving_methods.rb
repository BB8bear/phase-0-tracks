

def fibonacci(number)
    fib_numbers = [0, 1]
    counter = 0

    until counter == number
        while counter >= 2
            fib_numbers.push{(counter - 1) + (counter - 2)}
        end
    end
end

p fibonacci(6)