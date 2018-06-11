module EnumFromTo where

myEft :: (Enum a, Ord a) => a -> a -> [a]
myEft x y
      | x > y = []
      | x == y = [x]
      | otherwise = x : myEft (succ x) y


-- implemented eftBool & eftOrd then realized couldn't enumerate 
-- all possibilities for eftInt, that's when I wrote myEft

eftBool :: Bool -> Bool -> [Bool]
eftBool False True = [False, True]
eftBool False False = [False]
eftBool True True = [True]
eftBool _ _ = []

eftBool' :: Bool -> Bool -> [Bool]
eftBool' = myEft

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd LT LT = [LT]
eftOrd LT EQ = [LT, EQ]
eftOrd LT GT = [LT, EQ, GT]
eftOrd EQ GT = [EQ, GT]
eftOrd EQ EQ = [EQ]
eftOrd GT GT = [GT]
eftOrd _ _ = []

eftOrd' :: Ordering -> Ordering -> [Ordering]
eftOrd' = myEft

eftInt :: Int -> Int -> [Int]
eftInt = myEft

eftChar :: Char -> Char -> [Char]
eftChar = myEft

