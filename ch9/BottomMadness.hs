module BottomMadness where

-- bottom (b) or value (v)

-- b
one = [x^y | x <- [1..5], y <- [2, undefined]]

-- v
two = take 1 $ [x^y | x <- [1..5], y <- [2, undefined]]

-- b
three = sum [1, undefined, 3]

-- b, wrong was v
four = length [1, 2, undefined]

-- b
five = length $ [1, 2, 3] ++ undefined

-- v
six = take 1 $ filter even [1, 2, 3, undefined]

-- b
seven = take 1 $ filter even [1, 3, undefined]

--v
eight = take 1 $ filter odd [1, 3, undefined]

-- v
nine = take 2 $ filter odd [1, 3, undefined]

--b
ten = take 3 $ filter odd [1, 3, undefined]
 

-- Is it in normal form?
-- 1 nf
-- 2 whnf only
-- 3 neither

-- 1) 1
one' = [1,2,3,4,5]

-- 2) 3
-- two' = 1 : 2 : 3 : 4 : _

-- 3) 2
three' = enumFromTo 1 10

-- 4) 2
four' = length [1, 2, 3, 4, 5]

-- 5) 2
five' = sum (enumFromTo 1 10)

-- 6) 3 b/c (++) is a fn
six' = ['a'..'m'] ++ ['n'..'z']

-- 7) neither
-- seven' = (_, 'b')
