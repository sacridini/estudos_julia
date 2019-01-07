using Printf
using Statistics

d1 = Dict("pi"=>3.14, "e"=>2.718) # As chaves precisam ser sempre unicas
println(d1["pi"])
d1["golden"] = 1.618 # adicionando novas entradas
delete!(d1, "pi") # deletando entradas
println(haskey(d1, "pi")) # check if exists
println(in("pi"=>3.14))
println(keys(d1))
println(values(d1))

for kv in d1
	println(kv)
end

for (key, value) in d1
	println(key, " : ", value)
end

