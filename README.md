# ColorMath

[![Build Status](https://travis-ci.org/wookay/ColorMath.jl.svg?branch=master)](https://travis-ci.org/wookay/ColorMath.jl)
[![Build status](https://ci.appveyor.com/api/projects/status/mnn88rs6kkq4duwc?svg=true)](https://ci.appveyor.com/project/wookay/colormath-jl)
  [![Coverage Status](https://coveralls.io/repos/github/wookay/ColorMath.jl/badge.svg?branch=master)](https://coveralls.io/github/wookay/ColorMath.jl?branch=master)



```julia
julia> using ColorMath

julia> red(1) + green(1) == yellow(1)
true

julia> hex(red(1) + green(1) + blue(0.5))
"#FFFF7F"
```
