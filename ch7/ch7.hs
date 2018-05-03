module Ch7 where

-- multiple choice
-- 1 d
-- 2 b
-- 3 d
-- 4 b
-- 5 a

-- Let's write code
-- 1
tensDigit :: Integral x => x -> x
tensDigit x = d
  where xLast = x `div` 10
        d     = xLast `mod` 10

tensDigitPf :: Integral x => x -> x
tensDigitPf = (`mod` 10) . (`div` 10)

myTensDigit :: Integral x => x -> x
myTensDigit x = d
  where xLast = x `div` 10
        d     = snd $ xLast `divMod` 10

-- b yes
-- c
hunsD :: Integral x => x -> x
hunsD x = d2
  where d  = (`mod` 100) . (`div` 100) $ x
        d2 = d `mod` 10

hunsDpf :: Integral x => x -> x
hunsDpf = (`mod` 10) . (`mod` 100) . (`div` 100)


-- 2
foldBool :: a -> a -> Bool -> a
foldBool x y z = if z then x else y

foldBoolC :: a -> a -> Bool -> a
foldBoolC x y z =
  case z of
    True -> x
    False -> y

foldBoolG :: a -> a -> Bool -> a
foldBoolG x y z
  | z == True = x
  | z == False = y


-- 3
g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f a, c)


-- 4..6 in Arith4.hs

