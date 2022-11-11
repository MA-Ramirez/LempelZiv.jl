#!/usr/bin/env julia
# -*- coding: utf-8 -*-
"""Lempel-Ziv complexity for a binary sequence, in naive Julia code.

- How to use it? From Julia, it's easy:

julia> using LempelZiv
julia> s = "1001111011000010"
julia> LempelZiv.lempel_ziv_complexity(s)    # 1 / 0 / 01 / 11 / 10 / 110 / 00 / 010
8


- Run this .jl file with an argument "test" to run a small benchmark (1000 strings of size 10000).
- Note: there is also a Python version, if you need.

- MIT Licensed, (C) 2017 Lilian Besson (Naereen)
  https://GitHub.com/Naereen/Lempel-Ziv_Complexity
"""

module LempelZiv

include("LempelZivCore.jl")
export lempel_ziv_complexity

end
