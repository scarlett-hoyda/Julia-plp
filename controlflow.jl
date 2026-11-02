# CONTITIONAL STATEMENTS
# Example of an if-elseif-else-end statement
x = 4
y = 7
if x > y
    println("x is greater than y")
elseif x < y
    println("x is less than y")
else
    println("x and y are equal")
end

# Example of the use of the ternary operator
answer = "yes"
println(answer == "no" ? "The answer is yes" : "The answer is no")

# This example shows the same control flow as the if-elseif-else-end statement above, but in just one line
println(x > y ? "x is greater than y" : x < y ? "x is less than y" : "x and y are equal")

# SHORT CIRCUIT EVALUATION
#= The following are both examples of where short-circuit evaluation would be used since for the || operator,
if only one term is true, then the whole condition is true. And for the && operator, if only one term is false,
then the whole condition is false. =#
t(x) = (println("condition " * string(x)); true)
f(x) = (println("condition " * string(x)); false)

t(1) || f(2)

f(1) && t(2)

#= To bypass the short circuit evaluation, you can use the bitwise boolean operators, & and |. =#
t(1) | f(2)
f(1) & t(2)


# REPITITION STATEMENTS
#= while-loop: This loop structure will keep printing out the variable i until i is less than 0. i will start at
4 and decrease by 1 for every iteration of the loop.=#
i = 4
while i > 0
    println(i)
    i -= 1
end

#= for-loop. This loop structure uses the range object (a:b) to iterate through the sequence of values 1, 2, 3, 4.
The variable p is assigned each value for each interation of the loop. Below are some more examples other than 
the range object for ways to iterate through a for-loop.=#
for p = 1:5
    println(p)
end

# Looping through an array with the '\in<tab>' key-symbol
for e ∈ ["leaf", "pumpkin pie", "breeze", "flannel"]
    println(e)
end

# Nested loop
for i = 1:2, j = 5:6
    println("i: " * string(i) * " j: " * string(j))
end 