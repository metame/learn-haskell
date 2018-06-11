module Filtering where

one = filter (\x -> (rem x 3) == 0) [1..30]

two = length one

three :: String -> [String]
three = filter (\s -> not $ elem s ["a", "an", "the"]) . words
