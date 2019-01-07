using Printf
using Statistics

mutable struct Customer
	name::String 
	balance::Float32
	id::Int
end

# cria um objeto
bob = Customer("Bob Smith", 10.50, 123)
println(bob.name)

# bob.name = "Julia" # Isso gera um erro sem a palavra "mutable" antes do struct!

# abstract types
abstract type Animal end

struct Dog <: Animal
	name::String
	bark::String
end

struct Cat <: Animal
	name::String
	meow::String
end

bowser = Dog("Bowser", "Ruff")
muffin = Cat("Muffin", "Meow")

function makeSound(animal::Dog)
	println("$(animal.name) says $(animal.bark)")
end

function makeSound(animal::Cat)
	println("$(animal.name) says $(animal.meow)")
end

makeSound(bowser)
makeSound(muffin)