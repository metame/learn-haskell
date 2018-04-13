{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

-- 1
a1 = (*9) 6 -- :t Num a => a
b1 = head [(0,"doge"),(1,"kitteh")] -- :: Num a => (a, [Char])
c1 = head [(0 :: Integer ,"doge"),(1,"kitteh")] -- :: (Integer, [Char])
d1 = if False then True else False -- :: Bool
e1 = length [1, 2, 3, 4, 5] -- :: Int
f1 = (length [1, 2, 3, 4, 5]) > (length "TACOCAT") -- Bool

-- 2 w :: Num a => a
w = y * 10
  where x = 5
        y = x + 5

-- 3 z :: Num a => a -> a
x = 5
y = x + 5
z y = y * 10

-- 4 f :: Fractional a => a
f = 4 / y
  where x = 5
        y = x + 5

-- 5 [Char]
f5 = x ++ y ++ z
  where x = "Julie"
        y = " <3 "
        z = "Haskell"
