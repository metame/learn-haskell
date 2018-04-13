module Parametricity where

-- 1
myId :: a -> a
myId x = x

-- 2
s :: a -> a -> a
s x y = x
s2 :: a -> a -> a
s2 x y = y

-- 3
const :: a -> b -> b
const x y = y

