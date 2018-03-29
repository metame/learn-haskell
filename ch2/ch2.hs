-- ch2.hs

module Ch2 where
import Control.Exception (assert)

-- Chapter 2

-- Comprehension Check

-- 1. the answer they're looking for is 'let'  but really this no longer applies as of ghci > 8.0

-- 2. timesPi fn
pimes x = 3.14 * x
 
-- 3. timesPi 4real fn
rpimes x = pi * x

-- Exercises: Parentheses and Association
-- Does parentheses change the result of the fns
-- 1. t 2. f 3. t

-- assert (8+7*9 /= (8+7)*9) True 


-- Exercises: Heal the Sick
-- 1 removed let for srcfile
area x = 3.14 * (x * x)

-- 2 removed let for srcfile
double x = x * 2

-- 3
x = 7
y = 10
f = x + y
