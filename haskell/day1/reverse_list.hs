-- by changing "Integer" to "a" I was able to accept any type that supports the
-- operators that I'm using in the function
module Main where
	reverseList :: [a] -> [a]
	reverseList [] = []
	reverseList (h:t) = reverse t ++ [h]

