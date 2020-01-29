#write your code here

def add (num1, num2)
    num1 + num2
end

def subtract (num1, num2)
    num1 - num2
end

def sum numbers
    numbers.sum
end

def multiply numbers
    product = 1
    numbers.each do |num|
        product = num * product
    end
    product
end

def power (num1, num2)
    num1 ** num2
end

def factorial number
    product = 1
    while number > 0 
        product = product * number
        number -= 1
    end
    product
end
