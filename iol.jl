

N = Dict(:a => :b)

x = N[:a]

println(N)
println(x)

function addNorm(a, b, G)
	G[a] = b
end

addNorm(:b, :c, N)

println(N)

function Cn(A)

	return A
end

function out1(G,A)
	_A = Cn(A)
	B = Set()
	for a in _A
		push!(B, G[a])
	end
	# [N[a] for a in y]
	return Cn(B)
end

y = out1(N,[:a])

println(y)

z = [N[a] for a in y]

println(z)

#println(get.([y],N,"na"))

function complete(A)
	V = [A]

	return V
end

function out2(G,A)
	V = complete(A)
	B = []
	for v in V
		push!(B, out1(G,v))
	end
	return intersect(B)
end

function out3(G,A)
	B = out1(G,A)
	B = B+A
	while B != out1(G,B)+A
		B = out1(G,B)+A
	end
	_B = Set()
	for b in B
		push!(_B, G[b])
	end
	return Cn(_B)
end

function out4(G,A)


end
