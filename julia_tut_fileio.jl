using Printf
using Statistics

open("random2.txt", "w") do file
	write(file, "Eduardo Ribeiro Lacerda\nLa la la\n")
end

open("random2.txt", "r") do file
	data = read(file, String)
	println(data)
end

open("random2.txt") do file
	for line in eachline(file)
		println(line)
	end
end
