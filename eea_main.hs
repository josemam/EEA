import System.Environment
import EEA

main = do
	arg <- getArgs
	let a = (read (head arg) :: Integer)
	let b = (read (arg !! 1) :: Integer)
	let [gcd, x, y] = eea a b
	putStrLn $ "GCD = " ++ show gcd ++ " = " ++ show x ++ "x"
				++ show a ++ " + " ++ show y ++ "x" ++ show b