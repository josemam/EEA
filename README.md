# EEA
Extended Euclidean Algorithm

I needed to perform this algorithm for _rather big_ numbers and I did not find a proper application out there to do so, so I made it myself. (The application, not the calculation)

The [Extended Euclidean Algorithm] (https://en.wikipedia.org/wiki/Extended_Euclidean_algorithm) returns, for two integers `x` and `y`, the greatest common divisor `gcd(x,y)` and two integers `a` and `b` so that `gcd(x,y) = ax+by`.

I wrote two different examples. `eea.cpp` is a C++ implementation which uses 64 bit integers. `eea.hs` is a Haskell snippet which allows the user to handle arbitrarily _large_ numbers.

How to use the `.cpp` one: Once you have downloaded and compiled the source code by running `g++ -o [any name for your executable file] eea.cpp`, run the executable and type the two integers. The output is pretty self-explanatory.

How to use the `.hs` one: download the source code, run GHCi and load the code (`:load eea.hs`). You are now ready to use the `eea` function. It will yield a list where the first element is the greatest common divisor, and the second and third elements are `a` and `b`.

The Haskell implementation takes way more time to get `a` and `b`, but if you just want the GCD, you may use `eea x y !! 0` and your CPU will not waste any cycle getting `a` and `b`.
