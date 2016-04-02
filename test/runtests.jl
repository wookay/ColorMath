using ColorMath
using Base.Test

# write your own tests here
@test red(0.3) == red(0.1) + red(0.2)
@test red(1) == red(1.2)
@test red(1) == red(0.5) + red(0.6)
@test red(1/3) == red(1)/3
@test cyan(0.3) == 3green(0.1) + blue(0.1)*3
@test cyan(1) == green(1) + blue(1)
@test clear() == alpha(white(0), 0)

@test white(1) == RGB(1,1,1)
@test white(1) == rgb255(255,255,255)
@test black(1) == white(0)
@test black(0) == white(1)
@test gray(1) == white(0.5)
@test gray(1) == black(0.5)
@test "#7F7F7F" == hex(gray(1))

#@test CMYK(0,0,1,0) == CMYK(white(1))
@test CMYK(0,0,1,0) == CMYK(yellow(1))
#@test CMYK(1,0,1,0) == CMYK(black(1))
@test CMYK(1,0,1,0) == CMYK(green(1))
@test CMYK(1,0,0,0) == CMYK(cyan(1))
@test CMYK(0,1,0,0) == CMYK(magenta(1))
@test CMYK(1,1,0,0) == CMYK(blue(1))
@test CMYK(0,1,1,0) == CMYK(red(1))
@test yellow(1) == RGB(CMYK(0,0,1,0))
#@test green(1) == RGB(CMYK(1,0,1,0))
@test cyan(1) == RGB(CMYK(1,0,0,0))
@test magenta(1) == RGB(CMYK(0,1,0,0))
#@test blue(1) == RGB(CMYK(1,1,0,0))
#@test red(1) == RGB(CMYK(0,1,1,0))

#@test white(1) == HSB(0,0,1)
