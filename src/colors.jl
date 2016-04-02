red(r::FloatInt) = RGB(r,0,0)
green(g::FloatInt) = RGB(0,g,0)
blue(b::FloatInt) = RGB(0,0,b)

clear() = RGB(0,0,0,0)
white(c::FloatInt) = RGB(c,c,c)
black(c::FloatInt) = RGB(1-c,1-c,1-c)
gray(c::FloatInt) = RGB(0.5c,0.5c,0.5c)

cyan(c::FloatInt) = RGB(0,c,c)
magenta(c::FloatInt) = RGB(c,0,c)
yellow(c::FloatInt) = RGB(c,c,0)
