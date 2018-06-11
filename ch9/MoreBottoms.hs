module MoreBottoms where 

import Data.Bool (bool)
-- bottom (b) or value (b)

-- b
one = take 1 $ map (+1) [undefined, 2, 3]

-- v
two = take 1 $ map (+1) [1, undefined, 3]

-- b
three = take 2 $ map (+1) [1, undefined, 3]

itIsMystery :: String -> [Bool]
itIsMystery xs = map (\x -> elem x "aeiou") xs
four = itIsMystery "abc" == [True, False, False]

fivea = map (^2) [1..10] == [ x^2 | x <- [1..10] ]
fiveb = map minimum [[1..10], [10..20], [20..30]] == [1, 10, 20]
fivec = map sum [[1..5], [1..5], [1..5]] == [15,15,15]

six = map (\x -> bool x (-x) $ x==3)
