# Julia-plp
CS 330 Julia Programming Language Project
## About Julia
Julia is a programming language that started in 2009 when researchers at MIT, Jeff Bezanson, Stefan Karpinski, Viral B. Shah, and Alan Edelman, wanted to create a programming language that was fast and easy to use by non-programmers that focused on mathematical computations and simulation. Its performance in speed is comparable to C but has easy to read language for mathematicians, engineers and scientists like Python and MATLAB.

Julia is used for math, statistical, and engineering applications. Some examples are using Julia to create a program for avoiding aircraft collisions, or by astronomers for imaging black holes, or monitoring the aerodynamics of race cars.

For this project, I will be using the [Julia documentation](https://docs.julialang.org/en/v1/) and various links within the [Julia Learn section](https://julialang.org/learning/) on their webpage for basics and to build a foundation. I will also use [The Julia Programming Language Youtube channel](https://www.youtube.com/user/JuliaLanguage/playlists) for practical tutorials and this [Computational Thinking](https://computationalthinking.mit.edu/Fall24/) website which includes helpful videos from MIT's Julia programming class from Professor Alan Eldeman.
## Introduction: Installation and Running Programs
For this project, I will be using VS Code for my IDE which I have picked because I already had it downloaded and because it uses an integrated terminal environment which caters well towards Julia's functionality. For Julia, a computer terminal and text editor, to create .jl files, also works well. In order to install Julia, you have to go to their page [https://julialang.org/downloads/] and download Julia from there. It automatically detects your OS and caters the instructions on how to download towards what your OS is. When using vs code, you also have to download the Julia by julialang extension on the extensions tab.

To run programs in Julia, there are a few ways to do so. From a terminal window, you can change into a Julia environment by just typing '$ julia'.

<img width="1425" height="407" alt="julia_tut_2" src="https://github.com/user-attachments/assets/844e95b0-32af-44f1-b6c4-466998dd828b" />

Then, to run a program, you can type a line of code right into the terminal or, to execute a whole file, write 'julia> include("file.jl")'.

<img width="375" height="106" alt="julia_tut_3" src="https://github.com/user-attachments/assets/9a990b80-2ef0-48fe-ac7c-09b797e1c601" />

In VS Code, you can write your program right from a .jl file but then to run it, you first have to open a Julia REPL terminal window. As a quick aside, REPL stands for read-eval-print loop and it is a specific computer programming environment that executes the program chunk-by-chunk instead compiling and executing it all at once. To open a Julia REPL terminal window, you have to open the Command Palette by using the shortcut Ctrl+Shift+P and then type and select 'Julia: Start REPL' which should open that terminal for you.

<img width="700" height="236" alt="julia_tut_4" src="https://github.com/user-attachments/assets/e40b940a-35bb-4b6f-b644-62a31e2fc4e8" />

Then, you can highlight portions of your code, or put your cursor on the line you want to execute, and click Shift+Enter to execute the program into the terminal in VS Code. Alternatively, you can use the same 'julia> include("file.jl")' statement to execute the program seamlessly.
## Hello World!
To run a hello world program, you can open up your IDE and start a REPL environment or switch into Julia right in your terminal. Then, you type a print statement with hello world in it: println("Hello World!") with no statement terminator punctuation as that is not need in Julia.

<img width="332" height="91" alt="julia_tut_5" src="https://github.com/user-attachments/assets/b24aa576-709b-4a44-acc3-2fdc7d38ebd5" />

Finally, run the program as explained above, and you have just written your first program in Julia!
### Comments
To write comments in Julia, '#' is used for a single line and '#= some comment =#' is used for a multi-line comment.
## Data Types and Naming Conventions
There are lots of data types in Julia such has Int8, UInt8, Int16, UInt16, Int32, UInt32, Int64, UInt64, Int128, UInt128, Float16, Float32, Float64, Char, String, Bool, Composite(struct), Rational, Complex, Array, Vector, Tuple, Dict, Set, Union, etc. Some of these data types are primitive and some are complex. As with many programming languages, there are plenty of data types but for this section, I will mainly be focusing on Ints, Floats, Chars, Strings, and maybe Bools.

Overall, all of the primitive data types, and Strings, are immutable however, you can make the Composite data type mutable by adding the word _mutable_ in front of the declaration, like so: _mutable struct ..._. I found this explanation from the Julia documentation about how mutable structs are possible to be helpful
> “In order to support mutation, such objects are generally allocated on the heap, and have stable memory addresses. A mutable object is like a little container that might hold different values over time, and so can only be reliably identified with its address.”

In Julia, _mutable struct_ is its own reserved two-word sequence. The other reserved two-word sequences are _abstract type_ and _primitive type_. The list of reserved keywords in Julia is the following: _baremodule, begin, break, catch, const, continue, do, else, elseif, end, export, false, finally, for, function, global, if, import, let, local, macro, module, quote, return, struct, true, try, using, while_. Keywords cannot be used as variable names, however, the individual words _mutable, abstract, primitive_ and _type_ are allowed variable names.
### Naming Requirements and Conventions
The naming requirements for variables are they they need to start with a letter, underscore, or a subset of Unicode characters that are greater than the code 00A0. This subset allows characters like accented letters, currency, any math symbol, and greek letters, and much more. The following characters in a variable name can include digits 0-9, an exclamation point !, and lots of other Unicode characters. There is a particular class for variable names that is only underscores which is a write-only identifier. The value that is assigned is discarded immediately.

For naming conventions, variables should be in lowercase and follow a snake_case format for separating words. Some other naming conventions are the following:
- Naming constants uses all uppercase and snake case (TOTAL_PRICE)
- A prefix of an underscore(_) indicates that an object is not for public use
- Avoid abbreviation (index_in rather than indx_in) as it becomes difficult to remember how particular words are abbreviated
- Composite type names use CamelCase (struct UnitRange)

Stylistic conventions are NOT enforced by the compiler.
### Operators and Mixed-Type Operations
Because Julia was created for engineers and mathematicians alike, there are lots of mathematical operators and even more mathematical functions, for example, sqrt(x). All mathematical operators, + - * / % ^ \, apply to all numeric primitive types. Julia also supports implicit multiplication, where '2x' is the same as '2*x'. Boolean operators that are available are !, &&, ||, with short-circuiting included. For Strings, the only math symbol operator that is used is for concatenation and is '\*'. Often computer languages use '+' to concatenate strings but the use of '\*' is due to the commutative property in math of both of those symbols. I won't go into the specifics now, but if you are interested, there is an explanation which I find helpful [linked here](https://docs.julialang.org/en/v1/manual/strings/#man-concatenation:~:text=In%20mathematics%2C%20%2B%20usually%20denotes%20a%20commutative%20operation%2C). For chars, simple arithmetic operators are available to use, + - , since chars are stored as their Unicode hex value. For composite types, the '===' and '!==' operators can be used to evaluate equality between objects.

Mixed-type operations are only allowed in specific cases. Julia allows chars to be added or subtracted by ints to produce different chars since chars are stored as their ASCII value. Chars can be concatenated to Strings with the String concatenation operator '\*'. The operations between ints and floats are always allowed however, Julia will almost always promote the final value of an operation to a float if a float is included, or for non-integer division. Integer division is possible by typing the division operator &divide;. This is possible by simply writing '\div\<tab\>' in between your operands. For example, '20 \div\<tab\> 4' will result in the integer 5 instead of the float 5.0, which would be the result if the / operator was used. \
In addition to these mixed-type operations, you can parse one type to another, if it allows. For example, you have a String containing an int and you want to parse it to an int. You can run x = parse(Int, "30") in order to get an integer variable containing 30.
### Typing and Binding
Julia is a strong, implicitly, and dynamically typed language. It does offer optional explicit typing, for example, x::Int64 = 2.
