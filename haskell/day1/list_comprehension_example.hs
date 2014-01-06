-- find all possible combinations
-- to run in ghci, use :script <fileName>
let crew = ["Kirk", "Spock", "McCoy"]
[(a, b) | a <- crew, b <- crew, a < b]


