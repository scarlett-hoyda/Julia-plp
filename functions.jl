# Function that takes in 2 parameters and multiplies them
function mult(x, y)
    x * y # Julia uses implicit returning, the last statement in the function is returned
end

mult_ans = mult(3, 4.5)
println(mult_ans)

# Used this as inspo: geeksforgeeks.org/julia/recursion-in-julia/ 
# Function that takes in an integer and calculates it's factorial recursively
function factorial(n::Int64)
    if n == 0 || n == 1
        return 1
    end
    return n * factorial(n-1)
end

fac_ans = factorial(4)
println(fac_ans)

# Function that takes in a string as an argument and splits it evenly into 2 strings, returning both strings at the same time
function split_string(s)
    mid = length(s) ÷ 2 # rounds down for odd number of chars
    first_half = s[1:mid] # is 1-based indexing and range indexing is inclusive
    last_half = s[mid+1: length(s)]
    first_half, last_half
end

# Julia allows multiple return values by seperating each variable those values are being assigned to by a comma
a, b = split_string("Racecar")
println("Beginning: " * a * " End: " * b)

# Demonstrates that Julia uses pass-by-sharing
# Code is from the documentation (NOT MY CODE)
# This function takes in an array x and a number y
function f(x, y)
    x[1] = 42    # mutates x
    y = 7 + y    # new binding for y, no mutation
    return y
end

a = [4, 5, 6]
b = 3
f(a, b) # returns 7 + b == 10
println(a)  # a[1] is changed to 42 by f
println(b)  # not changed
