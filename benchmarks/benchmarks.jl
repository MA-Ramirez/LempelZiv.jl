using LempelZiv

#The benchmarks can be improved using BenchmarkTools.jl

M = 1000;
N = 5000;
for _ in 1:M
    s = join(rand(0:1, rand(N:10*N)));
    println("For a random string s of size = ", length(s), " its Lempel-Ziv Complexity is = ", lempel_ziv_complexity(s))
    println(@time lempel_ziv_complexity(s))
end
