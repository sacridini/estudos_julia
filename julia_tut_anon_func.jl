using Printf
using Statistics

# Com um argumento
v2 = map(x -> x * x, [1,2,3])
println(v2)

# Com dois argumentos
v3 = map((x,y) -> x + y, [1,2], [3,4])
println(v3)

v4 = reduce(+, 1:100)
println(v4)

sentense = "This is a string"
sArray = split(sentense) # convert the string to an array
longest = reduce((x, y) -> length(x) > length(y) ? x : y, sArray)
println(longest)
