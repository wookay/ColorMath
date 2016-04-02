typealias FloatInt Union{Float64,Float32,Float16,Int}

type RGB
  r::Float16
  g::Float16
  b::Float16
  a::Float16
  RGB(r::FloatInt, g::FloatInt, b::FloatInt, a::FloatInt=1) = new(min(1,r),min(1,g),min(1,b),min(1,a))
end

type HSB
  h::Float16
  s::Float16
  b::Float16
  a::Float16
  HSB(h::FloatInt, s::FloatInt, b::FloatInt) = new(h,s,b,1)
end

type CMYK
  c::Float16
  m::Float16
  y::Float16
  k::Float16
  CMYK(c::FloatInt, m::FloatInt, y::FloatInt, k::FloatInt) = new(min(1,c),min(1,m),min(1,y),min(1,k))
  function CMYK(lhs::RGB)
    k = 1 - max(lhs.r, lhs.g, lhs.b)
    new((1-lhs.r-k)/(1-k), (1-lhs.g-k)/(1-k), (1-lhs.b-k)/(1-k), k)
  end
end

function RGB(cmyk::CMYK)
  cyan(cmyk.c) + magenta(cmyk.m) + yellow(cmyk.y)
end
