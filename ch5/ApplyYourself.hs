module ApplyYourself where

-- 1 (++) :: [a] -> [a] -> [a]
myConcat x = x ++ " yo"
-- myConcat :: [Char] -> [Char]

-- 2 (*) :: Num a => a -> a -> a
myMult x = (x / 3) * 5
-- myMult :: Fractional a => a -> a

-- 3 take :: Int -> [a] -> [a]
myTake x = take x "hey you"
-- myTake :: Int -> [Char]

-- 4 (>) :: Ord a => a -> a -> Bool
myCom x = x > (length [1..10])
-- myCom :: Int -> Bool

-- 5 (<) :: Ord a => a -> a -> Bool
myAlph x = x < 'z'
-- myAlph :: Char -> Bool
