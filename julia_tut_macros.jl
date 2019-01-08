using Printf
using Statistics

# Primeiro exemplo
macro doMore(n, exp)
	quote
		for i = 1:$(esc(n))
			$(esc(exp))
		end
	end
end

@doMore(2, println("Hello")) # print "hello" 2x times

# Segundo exemplo
macro doWhile(exp)
	@assert exp.head == :while
	esc(quote
	$(exp.args[2])
	$exp
end)
end

z = 0
@doWhile while z < 10
	global z += 1
	println(z)
end

