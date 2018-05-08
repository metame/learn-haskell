module Ch8 where

import Control.Exception (assert)

check :: Bool -> Bool
check = assert True

-- Review of Types
-- 1 d
-- 2 b
-- 3 d
-- 4 b


-- Currying
cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

flippy :: String -> String -> String
flippy = flip cattyConny

appedCatty :: String -> String
appedCatty = cattyConny "woops"

frappe :: String -> String
frappe = flippy "haha"

-- 1
c1 = appedCatty "wohoo!" == "woops mrow wohoo!"

-- 2
c2 = frappe "1" == "1 mrow haha"

-- 3
c3 = appedCatty (frappe "blue") == "woops mrow blue mrow haha"

-- 4
c4 = cattyConny (frappe "pink") "test" == (\x -> "pink mrow haha mrow " ++ x) "test"

-- 5
c5 = cattyConny (frappe "pink")
                (cattyConny "green" (appedCatty "blue"))
	     == "pink mrow haha mrow green mrow woops mrow blue"

-- 6
c6 = cattyConny (flippy "Pugs" "are") "awesome" 
    == "are mrow Pugs mrow awesome"



-- Recursion
-- 1 steps for reducing `dividedBy 15 2`
--
-- 2 fn recursively summing 1..n
recSum :: (Eq a, Num a) => a -> a
recSum num = go 1 0
  where go n sum
         | n == num = sum + num
	 | otherwise = 
	     go (n + 1) (sum + n)

recSumG :: (Eq a, Num a) => a -> a
recSumG n 
	| n == 1 = 1
	| otherwise = n + recSumG (n - 1)

recSumPm :: (Eq a, Num a) => a -> a
recSumPm 1 = 1
recSumPm n = n + recSumPm (n - 1)

-- point-free implementation failed b/c you can't pattern match with no pattern 
-- compiler error saying the recSumPf implementations have different number of arguments
-- could use an if else expression wrapped in another fn to do pf
-- recSumPf :: (Eq a, Num a) => a -> a
-- recSumPf 1 = 1
-- recSumPf = g $ recSumPf . (flip (-) 1)
--    where g = \f n -> n + f n
	
-- 3 fn multiplies by recursive summation
recMul :: (Integral a) => a -> a -> a
recMul x y = go x y 0
   where go x' y' prod
          | y' == 1 = prod + x'
	  | otherwise = 
	      go x' (y' - 1) (prod + x')



-- Fixing dividedBy
--

data DividedResult = Result Integer | DividedByZero deriving Show

dividedBy :: Integral a => a -> a -> DividedResult
dividedBy num denom = if denom == 0 then DividedByZero else Result $ go num denom 0
  where go n   d count
         | n < 0 && d < 0 = go (-n) (-d) count
         | n < 0 = negate $ go (-n)   d  count
         | d < 0 = negate $ go   n  (-d) count
         | n < d = count
         | otherwise = go (n - d) d (count + 1)


dividedBy' :: Integral a => a -> a -> DividedResult
dividedBy' _ 0 = DividedByZero
dividedBy' num denom = Result $ go num denom 0
  where go n d count
         | n < 0 && d < 0 = go (-n) (-d) count
         | n < 0 = negate $ go (-n)   d  count
         | d < 0 = negate $ go   n  (-d) count
         | n < d = count
         | otherwise = go (n - d) d (count + 1)


-- McCarthy 91 Function
--
mc91 :: Integral a => a -> a
mc91 x
    | x > 100 = x - 10
    | otherwise = 91

mc91' = \x -> if x > 100 then x - 10 else 91

-- Numbers into kWord
-- in ch8/WordNumber.hs


