module Ch4 where

import Control.Exception (assert)
check = assert True
checkAll l = all check l

awesome = ["Papuchon", "curry", ":)"]
also = ["Quake", "The Simons"]
allAwesome = [awesome, also]

-- 1 length :: [a] -> Integer
-- 2 
a2 = length [1, 2, 3, 4, 5] == 5
b2 = length [(1,2), (2,3), (3,4)] == 3
c2 = length allAwesome == 2
d2 = length (concat allAwesome) == 5
all2 = [a2,b2,c2,d2]

-- 3
e3 = 6 / 3 == 2
--   6 / length [1, 2, 3] b/c length returns an Int and / is fractional

-- 4
e4 = 6 `div` length [1, 2, 3] == 2

-- 5 Bool
e5 = (2 + 3 == 5) == True

-- 6 
--   x :: Integer
--   x + 3 == 5 :: Bool
e6 = (x + 3 == 5) == False
       where x = 5

-- 7
a7 = (length allAwesome == 2) == True
-- b7 = length [1, 'a', 3, 'b'] -- err b/c list can only have single type
c7 = length allAwesome + length awesome == 5
d7 = (8 == 8) && ('b' < 'a') == False
-- e7 = (8 == 8) && 9 -- err b/c 9 is not Bool
all7 = [a7, c7, d7]


-- 8
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == (reverse x)
e8a = isPalindrome "mom" == True
e8b = isPalindrome "foo" == False
all8 = [e8a, e8b]

-- 9
myAbs :: Integer -> Integer
myAbs x = if x >= 0 then x else -x
all9 = [myAbs (-4) == 4, myAbs 4 == 4]

-- 10
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))
e10 = f ('a', 'b') ('c', 'd') == (('b', 'd'), ('a', 'c'))


-- Correcting Syntax

-- 1
x = (+)
f1 xs = w `x` 1
     where w = length xs
s1 = f1 "abc" == 4

-- 2 
f2 = \x -> x
s2 = f2 1 == 1

-- 3
f3 (a, b) = a
s3 = f3 ('a', 'b') == 'a'

-- Match types
-- 1 c (first chose a)
-- 2 b
-- 3 a
-- 4 d

