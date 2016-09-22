# EEA
Extended Euclidean Algorithm

I needed to perform this algorithm for _rather big_ numbers and I did not find a proper application out there to do so, so I made it myself. (The application, not the calculation)

The [Extended Euclidean Algorithm] (https://en.wikipedia.org/wiki/Extended_Euclidean_algorithm) returns, for two integers `x` and `y`, the greatest common divisor `gcd(x,y)` and two integers `a` and `b` so that `gcd(x,y) = ax+by`.

I wrote three different examples. `eea.cpp` is a C++ implementation which uses 64 bit integers. `eea.hs` is a Haskell snippet which allows the user to handle arbitrarily _large_ numbers. `eea.mac` is a Maxima package which can be used to run the algorithm with arbitrarily _large_ input numbers, too.

__How to use the `.cpp` one__: once you have downloaded and compiled the source code by running `g++ -o [any name for your executable file] eea.cpp`, run the executable and type the two integers. The output is pretty self-explanatory.

__How to use the `.hs` one__: download the source code, run GHCi and load the code (`:l eea`). You are now ready to use the `eea` function. It will yield a list where the first element is the greatest common divisor, and the second and third elements are `a` and `b`. This implementation also includes a function that finds the [modular inverse] (https://en.wikipedia.org/wiki/Modular_multiplicative_inverse) of an integer `x` in the ring of integers modulo `y` (or `0` if it does not exist). You can also compile an executable which will perform the algorithm on the two parameters by running `ghc -o [name] eea_main.hs`.

If you are running GHCi and you just want the GCD, you may use `head $ eea x y` and your CPU will not waste any cycle getting `a` and `b` (Haskell has a built-in function for this, though).

__How to use the `.mac` one__: download the package and load it with Maxima (xMaxima and wxMaxima both have a convenient menu option for this, but you can always load it using `load("path/to/eea.mac")`). Then you can call `eea` with two numbers as arguments. You can also call `eea_table`, which shows a nice table with all the temporary numbers that would be written if the algorithm was run by hand.
