using Printf
using Statistics

# Declaração compacta
getSum(x, y) = x + y
x, y = 1, 2
@printf("%d + %d = %d\n", x, y, getSum(x,y))


# Declaração normal
function canIVote(age = 16)
	if age > 18
		println("Can Vote")
	else
		println("Cant Vote")
	end
end
canIVote(23)


# change global variables
v1 = 5
function changeV1()
	global v1 = 10
end
changeV1()
println(v1)


# Multiple arguments
function getSum2(args...)
	sum = 0
	for a in args
		sum += a
	end
	println(sum)
end
getSum2(1,2,3,4,5,6,7)


# Return multiple values
function next2(val)
	return (val + 1, val + 2)
end
println(next2(4))


# return that return functions
function makeMultiplers(num)
	return function(x) return x * num end
end
mult3 = makeMultiplers(3)
println(mult3(6))


# passing diff types of arguments
function getSum3(num1::Number, num2::Number)
	return num1 + num2
end

function getSum3(num1::String, num2::String)
	return parse(Int32, num1) + parse(Int32, num2)
end
println("5 + 4 = ", getSum3(5,4))
println("5 + 4 = ", getSum3("5","4"))

