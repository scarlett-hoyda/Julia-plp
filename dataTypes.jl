# Some examples of variable declaration for Ints, Floats, Strings, and Chars:
x = 7 
y = 8.6
z = 15
name = "Jane"
first_letter = 'p'
println("Type of x: " * string(typeof(x)))
println("Type of y: " * string(typeof(y)))
println("Type of name: " * string(typeof(name)))
println("Type of first_letter: " * string(typeof(first_letter)))
println()

# Some examples of basic mathematical operations:
println("Addition: " * string(2 + 3)) # prints 5
println("Subtraction: " * string(z - 7)) # prints 8
println("Multiplication: " * string(3.5 * 2.0)) # prints 7.0
println("Division: " * string(z / 5)) # prints 3.0
println("Integer Division: " * string(90 ÷ 10)) # prints 9

# Demonstrates String concatenation:
full_name = name * " Doe"
println("Concatenated String: " * full_name) # prints "Jane Doe"
println()

# Mixed-Type Operations:

# String and Char
name = name * 't'
println("String and Char: " * name)
# Int and Float
println("Adding Int and Float: " * string(x + y)) # prints 15.6
println("Subtracting Int and Float: " * string(y - 3)) # prints 5.6
println("Multiplying Int and Float: " * string(4 * 3.4)) # prints 13.6
println("Dividing Int and Float: " * string(y / 2)) # prints 3.0
# Char and Int
println("Adding Char and Int: " * string('c' + 5)) # prints 'h'
println()

# Example of multiple data types in an array
arr = ["This is a String", 5, 40, 1.3]
arr2 = [1, 2, 3, 4, 5]
println(arr)
println("Types of the values in arr[]: " * string(eltype(arr)))
println(arr2)
println("Types of the values in arr2: " * string(eltype(arr2)))