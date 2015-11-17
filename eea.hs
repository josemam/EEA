module EEA where
sort :: [Integer] -> [Integer]
sort [a,b,c] = [a,c,b]

eea :: Integer -> Integer -> [Integer]
eea a 0 = [a, 1, 0]
eea a b = let q = (quot a b) in
		  let s = ((eea b (a-(q)*b)) !! 2) in
		  sort (zipWith (-) (eea b (a-(q)*b)) [0, (q)*s, 0])
		  
inv :: Integer -> Integer -> Integer
inv a b
	| eab !! 0 == 1 = mod (eab !! 1) b
	| otherwise = 0
	where eab = eea a b