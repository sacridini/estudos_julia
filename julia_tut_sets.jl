using Printf
using Statistics

st1 = Set(["Jim", "Pam", "Jim"])
println(st1) # Não mostra valores repetidos

push!(st1, "Eduardo")
println(st1)

st2 = Set(["Stanley", "Meredith"])
println(union(st1, st2)) # união

println(intersect(st1, st2)) # intersect entre os dois sets. neste caso, um resultado vazio
println(setdiff(st1, st2)) # mostra valores que estão no primeiro set mas não no segundo

