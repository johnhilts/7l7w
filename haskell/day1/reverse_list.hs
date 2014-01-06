module Main where
	reverseList :: [Integer] -> [Integer]
	reverseList [] = []
	reverseList (h:t) = (reverse t) ++ [h]

-- let crew = ["Kirk", "Spock", "McCoy"]
-- [(a, b) | a <- crew, b <- crew, a < b]

