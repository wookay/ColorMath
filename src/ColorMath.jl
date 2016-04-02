module ColorMath

import Base: +, *, /, ==, hex

export RGB, HSB, CMYK, rgb255, red, green, blue, clear, alpha
export white, black, gray
export cyan, magenta, yellow
#export hue, saturation, bright, cyan, magenta, yellow, black
#export gray, purple, brown

# package code goes here
include("types.jl")
include("colors.jl")

function +(lhs::RGB, rhs::RGB)
    RGB(lhs.r + rhs.r, lhs.g + rhs.g, lhs.b + rhs.b, lhs.a + rhs.a)
end

*(lhs::RGB, m::Int) = RGB(m * lhs.r, m * lhs.g, m * lhs.b, lhs.a)
*(m::Int, lhs::RGB) = *(lhs, m)

/(lhs::RGB, m::Int) = RGB(lhs.r/m, lhs.g/m, lhs.b/m, lhs.a)

function ==(lhs::RGB, rhs::RGB)
    isapprox(lhs.r, rhs.r) && isapprox(lhs.g, rhs.g) && isapprox(lhs.b, rhs.b) && isapprox(lhs.a, rhs.a)
end

function ==(lhs::CMYK, rhs::CMYK)
    isapprox(lhs.c, rhs.c) && isapprox(lhs.m, rhs.m) && isapprox(lhs.y, rhs.y) && isapprox(lhs.k, rhs.k)
end


function hex(lhs::RGB)
    rounddown(n::Float16) = uppercase(hex(round(Int, 0xffn, RoundDown)))
    string("#", rounddown(lhs.r), rounddown(lhs.g), rounddown(lhs.b))
end

function rgb255(r::Int, g::Int, b::Int, a::Float64 = 1.0)
    RGB(r/0xff, g/0xff, b/0xff, a)
end

alpha(lhs::RGB, a::FloatInt) = RGB(lhs.r, lhs.g, lhs.b, a)

end # module
