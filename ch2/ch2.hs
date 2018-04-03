-- ch2.hs

module Ch2 where
import Control.Exception (assert)

check = assert True
-- Chapter 2

-- Comprehension Check

-- 1. the answer they're looking for is 'let'  but really this no longer applies as of ghci > 8.0

-- 2. timesPi fn
pimes x = 3.14 * x
 
-- 3. timesPi 4real fn
rpimes x = pi * x

-- Exercises: Parentheses and Association
-- Does parentheses change the result of the fns
-- 1. t 2. f 3. t:

pac1 = (8+7*9 /= (8+7)*9) 


-- Exercises: Heal the Sick
-- 1 removed let for srcfile
area x = 3.14 * (x * x)

-- 2 removed let for srcfile
double x = x * 2

-- 3
x = 7
y = 10
f = x + y



-- div/mod & quote/rem
-- (quot x y)*y + (rem x y) = x
-- (div x y)*y + (mod x y) = x

quotRem x y = (quot x y)*y + (rem x y)
divMod x y = (div x y)*y + (rem x y)

-- these produce an unexpected behavior or returning ((quot x y),(rem x y))


-- Exercises: A Head Code
ahc1 = let x = 5 in x == 5
ahc2 = let x = 5 in x * x == 25
ahc3 = let x = 5; y = 6 in x * y == 30
ahc4 = let x = 3; y = 1000 in x + 3 == 6

-- using where
ahcw1     = x * 3 + y
  where x = 3
        y = 1000

ahcw2     = x * 5
  where y = 10
        x = 10 * 5 + y

ahcw3     = z / x + y
  where x = 7
        y = negate x
        z = y * 10

ahcw1A = ahcw1 == 1009
ahcw2A = ahcw2 == 300
ahcw3A = ahcw3 == -17


-- Chapter Excercises

-- Parenthesization
p1 = 2 + 2 * 3 - 1 == 2 + (2 * 3) - 1
p2o = (^) 10 $ 1 + 1
p2 = p2o == (^) 10 (1 + 1)
p3 = 2 ^ 2 * 4 ^ 5 + 1 == ((2 ^ 2) * (4 ^ 5)) + 1

-- Equivalent Expressions
e1 = 1 + 1 == 2
e2 = 10 ^ 2 == 10 + 9 * 10
e3 = 400 - 37 /= (-) 37 400
e4 = fromIntegral (100 `div` 3) /= 100 / 3
e5 = 2 * 5 + 18 /= 2 * (5 + 18)

-- More fun with functions

-- reorder so would eval in repl (well, I changed it into a closure to prevent multiple declarations)
-- heh turns out this is f4 solution
waxOn     = x * 5
  where z = 7
        y = z + 8
        x = y ^ 2 

-- f1
w1 = 10 + waxOn == 1135
w2 = (+10) waxOn == 1135
w3 = (-) 15 waxOn == -1110
w4 = (-) waxOn 15 == 1110

triple x = x * 3
f3 = triple waxOn == waxOn * 3
-- f6
waxOff x = triple x
