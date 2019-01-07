using Printf
using Statistics

@enum Color begin
    red = 1
    blue = 2
    green = 3
end

favColor = green::Color
println(favColor)