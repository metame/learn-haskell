module Ch5 where

import Control.Exception (assert)

check = assert True
checkAll l = all check l

-- Multiple Choice

-- 1 c: A value of type [a] is a list whose elements are all of some type a
-- 2 a: A function of type [[a]] -> [a] could take a list of strings as an argument
-- 3 A function of type [a] -> Int -> a: (b) returns on element of type a from a list
-- 4 A function of type (a, b) -> a: (c) takes a tupe argument and returns the first value

-- Determine the type
-- in ch5/DetermineTheType.hs

-- Does it compile?

-- 1 does not compile b/c bigNum is not a fn so 10 is being applied to an int value: fix
bigNum = (^) 5
wahoo = bigNum 1

-- 2 compiles
x = print
y = print "wohoo!"
z = x "hello world"

-- 3 does not compile trying to apply values to values...
a = (+)
b = a 5
c = b 10
d = c + 200

-- 4 c is not in scope
a4 = 12 + b4
b4 = 10000 * c4
c4 = 1

-- Type variable or specific type constructor?
-- Constrained (c), Fully polymorphic (f), or Concrete type (t)
-- 1 done for you
-- f :: Num a => a -> b -> Int -> Int
--               c    f     t     t

-- 2 f :: zed -> Zed -> Blah
--        f      t      t

-- 3 f :: Enum b => a -> b -> C
--                  f    c    t

-- 4 f :: f -> g -> C
--        f    f    t


-- Write a type signature
-- 1
functionH :: [a] -> a
functionH (x:_) = x

-- 2
functionC :: Ord a => a -> a -> Bool
functionC x y = if (x > y) then True else False

-- 3 
functionS :: (a, b) -> b
functionS (x, y) = y


-- Given a type, write the function

-- 1
i :: a -> a
i x = x

-- 2
c2 :: a -> b -> a
c2 x y = x

-- 3
c'' :: b -> a -> b
c'' = c2

-- 4
c' :: a -> b -> b
c' x y = y

-- 5 
r :: [a] -> [a]
r x = reverse x
r2 :: [a] -> [a]
r2 = i

-- 6
co :: (b -> c) -> (a -> b) -> a -> c
co f g x = f $ g x

-- 7
a7 :: (a -> c) -> a -> a
a7 = c'

-- 8
a' :: (a -> b) -> a -> b
a' f x = f x


-- Fix it
-- 1 solution in ch5/Sing.hs
-- 2 solution in ch5/Sing2.hs
-- 3 solution in ch5/Arith3Broken.hs


-- Type-Kwon-Do
-- 1
f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h i = g $ f i

-- 2
data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e x = w $ q x

-- 3
data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (x, y) = (xz x, yz y)

-- 4
munge :: (x -> y)
      -> (y -> (w, z))
      -> x
      -> w
munge f g x = fst $ g $ f x
