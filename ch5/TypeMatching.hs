module TypeMatching where

--
myNot :: Bool -> Bool
myNot = not

myLength :: [a] -> Int
myLength = length

myConcat :: [[a]] -> [a]
myConcat = concat

myHead :: [a] -> a
myHead = head

myLt :: Ord a => a -> a -> Bool
myLt = (<)
