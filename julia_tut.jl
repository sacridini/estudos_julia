using Printf
using Statistics

a1 = zeros(Int32, 2, 2)
a2 = Array{Int32}(undef, 5) # 5 variáveis indefinidas
a3 = Float64[]
a4 = [1,2,3]

println(a4[1])
println(a4[end])
println(5 in a4)
println(findfirst(isequal(2), a4))
f(a) = (a >= 2) ? true : false 
println(findall(f, a4))
println(count(f, a4))

println("the size of array is $(size(a4))") 
println(length(a4))
println(sum(a4))
splice!(a4, 2:1, [8,9])
println(maximum(a4))
println(minimum(a4))
println(a4 * 2)

a5 = [1, 3,14, "hello"] # armazena variáveis de vários tipos
println(a5)

a6 = [sin, cos, tan] # armazena funções em arrays

for i in a6
	println(i(2))
end

a7 = [1 2 3; 4 5 6]
for n = 1:2, m = 1:3
	@printf("%d ", a7[n, m])
end

println()
println(a7[:, 2]) 
println(a7[2, :])

a8 = collect(1:5)
a9 = collect(2:2:10) # adiciona de 2 até 10 pulando de 2 em 2

for n in a9 println(n) end

a10 = [n^2 for n in 1:5]
println(a10)
push!(a10, 38) # push_back
println(a10)

a11 =  [n * m for n in 1:5, m in 1:5]
println(a11)

a12 = rand(0:9, 5, 5) # cria valores aleatórios para uma matrix 5x5
for n = 1:5
	for m = 1:5
		println(a12[n,m])
	end
	println()
end



# bonus
x = 5
println(2x) # 10

# multiply arrays
a13 = [1,3,4]
println(a13 .* 3)